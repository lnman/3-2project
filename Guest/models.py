from django.db import models
from django.contrib.auth.models import User

class Notification(models.Model):
    message = models.CharField(max_length=500)
    receiverid = models.ForeignKey(User)
    date = models.DateField()

class Player(models.Model):
    name = models.CharField(max_length=40)
    imageURL = models.URLField()
    birthdate = models.CharField(max_length=200)
    teams = models.CharField(max_length=200)
    roll = models.CharField(max_length=200)
    batstyle = models.CharField(max_length=20)
    bowlstyle = models.CharField(max_length=20)

    def __unicode__(self):
        return self.name

class Team(models.Model):
    name = models.CharField(max_length=40)
    squad = models.CharField(max_length=500)
    def __unicode__(self):
        return self.name

class Match(models.Model):
    team1 = models.ForeignKey(Team,related_name='team1')
    team2 = models.ForeignKey(Team,related_name='team2')
    venue = models.CharField(max_length=20)
    date = models.CharField(max_length=20)
    mtype = models.CharField(max_length=10)





class Batstat(models.Model):
    matchid =models.ForeignKey(Match)
    inningsid = models.IntegerField(default=1)
    name = models.ForeignKey(Player)
    outtype = models.CharField(max_length=200)
    run = models.IntegerField()
    minute = models.IntegerField()
    ball = models.IntegerField()
    four= models.IntegerField()
    six = models.IntegerField()
    strikerate=models.FloatField()

class Bowlstat(models.Model):
    matchid =models.ForeignKey(Match)
    inningsid = models.IntegerField(default=1)
    name = models.ForeignKey(Player) 
    over = models.IntegerField()
    maiden = models.IntegerField()
    run = models.IntegerField()
    wicket= models.IntegerField()    
    economy=models.FloatField()

class Score(models.Model):
    matchid = models.ForeignKey(Match)
    result = models.CharField(max_length=100)
    toss = models.ForeignKey(Team)
    event = models.CharField(max_length=100)
    mom = models.ForeignKey(Player)

class Tournament(models.Model):
    name = models.CharField(max_length=40)
    result = models.CharField(max_length=100)
    team = models.CharField(max_length=400)
    event = models.CharField(max_length=100)
    mos = models.ForeignKey(Player)
   
    def __unicode__(self):
        return self.name
  
class Vote(models.Model):
    userid = models.ForeignKey(User)
    players = models.CharField(max_length=500)
    time = models.CharField(max_length=20)
    matchid = models.ForeignKey(Match)
   
class News(models.Model):
    caption= models.CharField(max_length=100)
    body = models.CharField(max_length=3000)
    date = models.CharField(max_length=20)
    photoURL = models.URLField()

    def __unicode__(self):
        return self.caption

class Comment(models.Model):
    userid = models.ForeignKey(User)
    message = models.CharField(max_length=500)
    newsid = models.ForeignKey(News)
    numlike = models.IntegerField()
    numdislike = models.IntegerField()

    def __unicode__(self):
        return self.message
    
class Rating(models.Model):
    userid = models.ForeignKey(User)
    commentid = models.ForeignKey(Comment)
    likeordislike = models.IntegerField()



class Photo(models.Model):
    caption= models.CharField(max_length=100)
    url = models.URLField()




    


