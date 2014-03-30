from django.shortcuts import get_object_or_404, render ,render_to_response
from django.http import HttpResponseRedirect
from django.core.urlresolvers import reverse
from django.views import generic
from django.utils import timezone
from django.contrib.auth.decorators import login_required
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.models import User
from Guest.models import Player,News,Team,Match,Photo,Score,Batstat,Bowlstat,Comment,Rating
import re


def index(request):
    return render(request,"index.html",{'news':News.objects.filter()[:5],'fixtures':Match.objects.filter()[:5],'all_scores':Score.objects.filter()[:5],'all_players':Player.objects.filter()[:5],'all_team':Team.objects.filter()[:5]})


def login_user(request):
    logout(request)
    username = password = ''
    if request.POST:
        username = request.POST['username']
        password = request.POST['password']
        user = authenticate(username=username, password=password)
        if user is not None:
            if user.is_active:
                login(request, user)
                return HttpResponseRedirect('./index')
    return render(request,'login.html', {})

def register(request):
    if request.POST:
        username = request.POST['username']
        password = request.POST['password']
        email = request.POST['email']
        try:
            user = User.objects.create_user(username, email, password)
            return HttpResponseRedirect('./login')
        except:
            return  render(request,'register.html',{"msg":"user already exists"})
    else:
        return  render(request,'register.html',{})


def news_detail(request,pk):
    if request.user.is_active:
        current_user = request.user
        return render(request,"news_detail.html",{'news':News.objects.filter(id=pk)[0],'comments':Comment.objects.filter(newsid=pk),'rating':Rating.objects.filter(userid=current_user,commentid=Comment.objects.filter(newsid=pk))})
    else:
        return render(request,"news_detail.html",{'news':News.objects.filter(id=pk)[0],'comments':Comment.objects.filter(newsid=pk),'rating':[]})



def newshome(request):
    return render(request,"news_list.html",{'news':News.objects.filter()[:10]})

def player_list(request):
    return render(request,"player_list.html",{'all_players':Player.objects.filter()[:30]})

def player_detail(request,pk):
    return render(request,"player_detail.html",{'player':Player.objects.filter(id=pk)[0]})


def logout_user(request):
    logout(request)
    return HttpResponseRedirect('./login', {})

def team_list(request):
    return render(request,"team_list.html",{'all_team':Team.objects.filter()[:16]})

def team_detail(request,pk):
    temp=Team.objects.filter(id=pk)[0];
    temp.squad=temp.squad.split(',')[:15];
    return render(request,"team_detail.html",{'team':temp})


def fixture(request):
    temps=Match.objects.filter()[:10]
    return render(request,'fixture.html', {'fixtures':temps})


def live_page(request):
    return render(request,'livepage.html', {})


def photos(request):
    return render(request,'photos.html', {'photos':Photo.objects.filter()[:12]})





def resulthome(request):
    return render(request,"score_list.html",{'all_scores':Score.objects.filter()[:10]})


def result_detail(request,pk):
    res=Score.objects.filter(id=pk)[0]
    tt1=res.matchid.team1.name
    tt2=res.matchid.team2.name
    res=res.result
    matchObj = re.match( r'(.*) wickets (.*?) .*', res)
    res=res.split()[0]
    bat1=""
    bat2=""
    if matchObj:
        if tt1[:5]==res[:5]:
            bat1=tt2
            bat2=tt1
        else:
            bat1=tt1
            bat2=tt2
    else:
        if tt1[:5]!=res[:5]:
            bat1=tt2
            bat2=tt1
        else:
            bat1=tt1
            bat2=tt2
    ba=Batstat.objects.filter(matchid=Score.objects.filter(id=pk)[0].matchid)
    bo=Bowlstat.objects.filter(matchid=Score.objects.filter(id=pk)[0].matchid)
    ba1=[]
    ba2=[]
    bo1=[]
    bo2=[]
    seen=0
    for aa in ba:
        if seen==1:
            ba2.append(aa)
        else:
            ba1.append(aa)
        if aa.name_id==100:
            seen=1
    seen=len(bo)/2
    for aa in range(len(bo)):
        if seen<=aa:
            bo2.append(bo[aa])
        else:
            bo1.append(bo[aa])
        if bo[aa].name_id==100:
            seen=1
    return render(request,"score_detail.html",{'score':Score.objects.filter(id=pk)[0],'ba1':ba1,'ba2':ba2,'bo1':bo1,'bo2':bo2,'bat1':bat1,'bat2':bat2})

@login_required(login_url="/guest/login")
def addcomment(request):
    current_user = request.user
    if request.POST:
        msg = request.POST['comment']
        nid=request.META['HTTP_REFERER'].split('/')[-1];
        p = Comment(userid =current_user,message = msg,newsid = News.objects.filter(id=nid)[0],numlike = 0,numdislike = 0)
        p.save()
        if current_user.is_authenticated:
            return HttpResponseRedirect(request.META['HTTP_REFERER'])
        else:
            return "failed"
    else:
        return "failed"

@login_required(login_url="/guest/login")
def addrating(request,pk,like):
    current_user = request.user
    if Rating.objects.filter(userid=current_user,commentid=Comment.objects.filter(id=pk)[0]):
        p=Rating.objects.filter(userid=current_user,commentid=Comment.objects.filter(id=pk)[0])[0]
        p.likeordislike=like
    else :
        p = Rating(userid =current_user, likeordislike= like,commentid = Comment.objects.filter(id=pk)[0])
    p.save()
    cc=Comment.objects.filter(id=pk)[0]
    if like=="1":
        cc.numlike+=1
        cc.numdislike=cc.numdislike-1;
        if cc.numdislike<0:
            cc.numdislike=0;
    else:
        cc.numdislike+=1
        cc.numlike=cc.numlike-1;
        if cc.numlike<0:
            cc.numlike=0;
    cc.save();
    if current_user.is_authenticated:
        return HttpResponseRedirect(request.META['HTTP_REFERER'])
    else:
        return "failed"


def stat(request):
    if request.POST:
        player_id=request.POST['player_id']
        if Player.objects.filter(name=player_id):
            run=[]
            wicket=[]
            playing=Player.objects.filter(name=player_id)[0]
            ress=Batstat.objects.filter(name=playing)
            if ress:
                for d in ress:
                    run.append(d.run)
            ress=Bowlstat.objects.filter(name=playing)
            if ress:
                for d in ress:
                    wicket.append(d.wicket)
            return render(request,"stat.html",{'runs':run,'wickets':wicket,'name':player_id})
        else:
            return render(request,"stat.html",{'runs':[]})
    else:
        return render(request,"stat.html",{'runs':[]})


def searchhome(request,search):
    return render(request,"search_list.html",{'news':News.objects.extra(where=['caption like %s'], params=['%'+search+'%'])[:10],'search':search})

@login_required(login_url="/guest/login")
def admin(request):
    current_user = request.user
    if current_user.username!="admin":
        return HttpResponseRedirect('/guest/index')
    return render(request,'admin.html', {})

@login_required(login_url="/guest/login")
def adminfixture(request):
    current_user = request.user
    if current_user.username!="admin":
        return HttpResponseRedirect('/guest/index')
    if request.POST:
        T1 = request.POST['T1']
        T2 = request.POST['T2']
        v = request.POST['venue']
        d = request.POST['date']
        m = request.POST['mtype']
        user = Match.objects.create(team1=Team.objects.filter(id=T1)[0],team2=Team.objects.filter(id=T2)[0],venue=v,date=d,mtype=m)
    return  render(request,'adminfixture.html',{'fixtures':Match.objects.filter()})

@login_required(login_url="/guest/login")
def adminnews(request):
    current_user = request.user
    if current_user.username!="admin":
        return HttpResponseRedirect('/guest/index')
    if request.POST:
        c = request.POST['caption']
        b = request.POST['body']
        d = request.POST['date']
        p = request.POST['photourl']
        user = News.objects.create(caption=c,body=b,date=d,photoURL=p)
    return render(request,"adminnews.html",{'news':News.objects.filter()})

@login_required(login_url="/guest/login")
def adminplayer(request):
    current_user = request.user
    if current_user.username!="admin":
        return HttpResponseRedirect('/guest/index')
    if request.POST:
        n = request.POST['name']
        i = request.POST['imageurl']
        b = request.POST['bday']
        t = request.POST['teams']
        r = request.POST['role']
        bat = request.POST['batstyle']
        bowl = request.POST['bowlstyle']
        user = Player.objects.create(name=n,imageURL=i,birthdate=b,teams=t,roll=r,batstyle=bat,bowlstyle=bowl)
    return render(request,"adminplayer.html",{'all_players':Player.objects.filter()[:30]})