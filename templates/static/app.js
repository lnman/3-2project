'use strict';


angular.module('adminUIAngularApp', ['ngRoute'])
  .config(['$routeProvider',function ($routeProvider) {
    $routeProvider
      .when('/', {
        templateUrl: 'main.html',
        controller: 'MainCtrl'
      })/*.when('/notification', {
        templateUrl: 'notification.html',
        controller: 'NotificationCtrl'
      }).when('/fixture', {
        templateUrl: 'fixture.html',
        controller: 'UpdateFixtureCtrl'
      }).when('/news', {
        templateUrl: '/news.html',
        controller: 'NewsMainCtrl'
      }).when('/score', {
        templateUrl: 'score.html',
        controller: 'UpdateScoreCtrl'
      }).when('/player_profile', {
        templateUrl: 'player_profile.html',
        controller: 'playerCtrl'
      }).when('/player_profile/:id', {
        templateUrl: 'playeredit.html',
        controller: 'playerCtrl'
      }).when('/ranking', {
        templateUrl: 'ranking.html',
        controller: 'rankingCtrl'
      }).when('/photo', {
        templateUrl: 'photo.html',
        controller: 'PhotoUploadCtrl'
      })*/
      .otherwise({
        redirectTo: '/'
      });
      
  }]);

angular.module('adminUIAngularApp').directive("scroll", function ($window) {
    return function(scope, element, attrs) {
        angular.element($window).bind("scroll", function() {
             if (this.pageYOffset >= 130) {
                 scope.scrolled = true;
             } else {
                 scope.scrolled = false;
             }
            scope.$apply();
        });
    };
});


angular.module('adminUIAngularApp').directive("typeahead", function ($window) {
    return function(scope, element, attrs) {
      scope.suggestions=["emon","turash"];
      scope.query="";
      scope.suggestiontext="";
      element.bind("keydown", function(event) {
        if (event.which === 13) {
          $window.location="/guest/search/"+scope.query;
        }
        if (event.which == 39) {
          scope.query=scope.suggestiontext;
            event.preventDefault();
        }
        if (scope.query=="") {
           scope.suggestiontext="";
        } else {
            for (var i = scope.suggestions.length - 1; i >= 0; i--) {
              if(scope.suggestions[i].substring(0, scope.query.length) == scope.query){
                scope.suggestiontext = scope.suggestions[i];
                return;
              }else scope.suggestiontext="";
            }
        }
      });
    };
});

angular.module('adminUIAngularApp').directive("slideshow", function ($window,$interval) {
    return function(scope, element, attrs) {
      function nextimage(){
        if(scope.curr_slide!==undefined){
          scope.curr_slide++;
          if(scope.curr_slide>=scope.slides.length)scope.curr_slide=0;
        }else scope.curr_slide=0;
        scope.imsrc="./"+scope.slides[scope.curr_slide];
        scope.imdesc=scope.slide_desc[scope.curr_slide];;
      }
      $interval(nextimage, 10000);
      scope.curr_slide=0;
      scope.imsrc="./"+scope.slides[scope.curr_slide];
      scope.slide_desc=['Bangladesh vs. SriLanka','Bangladesh vs. Pakistan','Bangladesh vs. India','Bangladesh vs. SriLanka'];
      scope.imdesc=scope.slide_desc[scope.curr_slide];;
    };
});

angular.module('adminUIAngularApp').directive("liveupdate", function ($window,$interval,$http) {
    return function(scope, element, attrs) {
      function dataupdate(){
        $http.get('http://pipes.yahoo.com/pipes/pipe.run?_id=357f78927ed8952e46254f9d8854f4b6&_render=json').success(function(data) {
            scope.datatime=data.value.pubDate;
            data=data.value.items[0].channel.item;
            console.log(data);
            scope.livedata = data;
        });
      }
      $interval(dataupdate, 30000);
      dataupdate();
    };
});

angular.module('adminUIAngularApp').directive("logoanim", function ($window,$interval ) {
    return function(scope, element, attrs) {
        scope.anim_is_going=false;
        element.bind("mouseover", function() {
          if(!scope.anim_is_going){
            scope.anim_is_going=true;
            scope.logo_anim_counter=0;
            scope.stop=$interval(function() {
                scope.logo_anim_counter+=50;
                if(scope.logo_anim_counter>720){$interval.cancel(scope.stop);scope.stop = undefined;element.css("-webkit-mask","");scope.anim_is_going=false;return;}
                var half=scope.logo_anim_counter/2;
                var newstyle="-webkit-gradient(radial, 17 17,"+half+", 5 5, "+scope.logo_anim_counter+", from(rgb(0, 0, 0)), color-stop(0.5, rgba(0, 0, 0, 0.2)), to(rgb(0, 0, 0)))";
                element.css("-webkit-mask",newstyle);
                return;
            }, 30);
        }
      });
    };
});

angular.module('adminUIAngularApp')
  .controller('MainCtrl', function ($scope,$window,$http) {
        $scope.showfullimage=function($event){
            $scope.currsrc=$event.target.attributes.src.value;
            $scope.showfull=true;
        }
        $scope.vanish=function(){
            $scope.showfull=false;
        }
        $scope.shownextimage=function(val){
            console.log("hehe");
            var obj=$window.document.getElementsByClassName("photo_gallery");
            if(obj.length<=1)return;
            var found=-1;
            for(var i=0;i<obj.length;i++){
                if(obj[i].attributes.src.value==$scope.currsrc){
                    found=i;
                    break
                }
            }
            if(found!=-1)$scope.currsrc=obj[(found+obj.length+val)%obj.length].attributes.src.value
        }
        $scope.show_live_data=function($event){
            var temp=$event.target.attributes.valueOf('livelink');
            temp=temp.livelink.nodeValue;
             console.log(temp);
            $http.get(temp).success(function(data) {
                var obj=$window.document.getElementsByClassName("hiddendom")[0];
                obj.value =data;
                var obj2=$window.document.getElementsByClassName("domdata")[0];
                obj2.value=$window.document.getElementsByClassName("score-table")[0];
            });
        }
});





// admin start



'use strict';

angular.module('components', [])
  .directive('tabs', function() {
    return {
      restrict: 'E',
      transclude: true,
      scope: {},
      controller: function($scope, $element) {
        var panes = $scope.panes = [];

        $scope.select = function(pane) {
          angular.forEach(panes, function(pane) {
            pane.selected = false;
          });
          pane.selected = true;
        }

        this.addPane = function(pane) {
          if (panes.length == 0) $scope.select(pane);
          panes.push(pane);
        }
      },
      template:
        '<div class="tabbable">' +
          '<ul class="nav nav-tabs">' +
            '<li ng-repeat="pane in panes" ng-class="{active:pane.selected}">'+
              '<a href="" ng-click="select(pane)">{{pane.title}}</a>' +
            '</li>' +
          '</ul>' +
          '<div class="tab-content" ng-transclude></div>' +
        '</div>',
      replace: true
    };
  }).directive('pane', function() {
    return {
      require: '^tabs',
      restrict: 'E',
      transclude: true,
      scope: { title: '@' },
      link: function(scope, element, attrs, tabsCtrl) {
        tabsCtrl.addPane(scope);
      },
      template:
        '<div class="tab-pane" ng-class="{active: selected}" ng-transclude>' +
        '</div>',
      replace: true
    };
  });

angular.module('adminUIAngularApp')
  .controller('NotificationCtrl', function ($scope) {
    $scope.notifications = [
      {date:"02.05.2014",seen:true,subject:"Report on comment",desc:"Report on comment at user31"},
      {date:"02.05.2014",seen:false,subject:"Report on comment",desc:"Report on comment at user32"},
      {date:"02.05.2014",seen:false,subject:"Report on comment",desc:"Report on comment at user32"},
      {date:"02.05.2014",seen:false,subject:"Report on comment",desc:"Report on comment at user32"},
      {date:"02.05.2014",seen:false,subject:"Report on comment",desc:"Report on comment at user32"},
      {date:"02.05.2014",seen:false,subject:"Report on comment",desc:"Report on comment at user32"},
      {date:"02.05.2014",seen:false,subject:"Report on comment",desc:"Report on comment at user32"},
      {date:"02.05.2014",seen:false,subject:"Report on comment",desc:"Report on comment at user32"},
      {date:"02.05.2014",seen:false,subject:"Report on comment",desc:"Report on comment at user32"},
      {date:"02.05.2014",seen:false,subject:"Report on comment",desc:"Report on comment at user32"},
      {date:"02.05.2014",seen:false,subject:"Report on comment",desc:"Report on comment at user32"},
      {date:"02.05.2014",seen:false,subject:"Report on comment",desc:"Report on comment at user32"},
      {date:"02.05.2014",seen:false,subject:"Report on comment",desc:"Report on comment at user32"},
      {date:"02.05.2014",seen:false,subject:"Report on comment",desc:"Report on comment at user32"},
      {date:"02.05.2014",seen:false,subject:"Report on comment",desc:"Report on comment at user32"},
      {date:"02.05.2014",seen:false,subject:"Report on comment",desc:"Report on comment at user32"},
      {date:"02.05.2014",seen:false,subject:"Report on comment",desc:"Report on comment at user32"}
    ];
});



angular.module('adminUIAngularApp')
  .controller('UpdateFixtureCtrl', function ($scope) {
    $scope.fixtures = [
      {date:"2014-02-07",time:"11:00",desc:"New Zealand v India at Auckland, 1st Test - day 1"},
      {date:"2014-02-07",time:"13:00",desc:"Bangladesh v Sri Lanka at Chittagong, 2nd Test - day 3"}
    ];
});

angular.module('adminUIAngularApp')
  .controller('NewsMainCtrl', function ($scope) {
    $scope.newsList = [
      {date:"2014-02-05",desc:"Late wickets give Sri Lanka advantage - day 1",detail:"Maiden tons for the overnight pair of Shamsur Rahman and Imrul Kayes had energised Bangladesh and their crowd in the morning, but by stumps, Sri Lanka's industrious spinners had extracted enough dismissals to stay on track for victory, despite the visitors' abject fielding. A late Ajantha Mendis double-strike swung the match decisively in Sri Lanka's favour, after the Bangladesh middle-order provided fitful resistance. The hosts are still 178 runs adrift in the first innings, with two wickets in hand.Nasir Hossain and Mahmudullah had put on 46 together as the sun began to set, but with only 21 balls remaining until the day's quota was done, a wide ball from Mendis failed to bounce, and Dinesh Chandimal collected what the umpire believed was an under-edge. Bangladesh's last recognised batsman Sohag Gazi was struck in front of middle and off stump next ball, forcing his prompt departure, and Mendis was only denied a hat-trick by unexpected bounce, which may have taken the ball that struck the new batsman's front pad above the stumps.Shamsur and Imrul were ruled by caution, then adventure, in the morning before giving way to impatience when they surrendered after lunch. They had only strayed, though, after having adding 232 runs, the second-highest Test partnership for Bangladesh, which was also the best for the second wicket. The wicketless first session appeared to unlock the spirit Bangladesh had lacked in the first six days of the series, even if the batsmen who followed were occasionally guilty of taking hair-brained options.",imageURL:"news.jpg"},
      {date:"2014-02-06",desc:"Late wickets give Sri Lanka advantage - day 2",detail:"There were moments of imprudence at the top of the day, but the batsmen largely eschewed ambition and strove to reacclimatise themselves to the surface, in the first hour, dulling Sri Lanka's earnest start in the process. The first 15 overs of the day brought only 45 runs, but after that Imrul and Shamsur took to punishing a quickly-worsening bowling effort. They would advance at 5.4 runs an over for the remainder of the session.The shift in Bangladesh's approach from the first Test was most evident in the way they dealt with Sri Lanka's short balls. Bouncers had been their undoing in Mirpur, but aided by a surface that did not reward short-pitched bowling, both batsmen hooked and pulled judiciously, and often. Shamsur's restraint was as laudably as his aggression. In the 37th over, he hooked consecutive Suranga Lakmal balls with authority, but when the bowler delivered a third short ball outside off stump, the batsman did not offer the same stroke.",imageURL:"news.jpg"},
      {date:"2014-02-07",desc:"Late wickets give Sri Lanka advantage - day 3",detail:"Maiden tons for the overnight pair of Shamsur Rahman and Imrul Kayes had energised Bangladesh and their crowd in the morning, but by stumps, Sri Lanka's industrious spinners had extracted enough dismissals to stay on track for victory, despite the visitors' abject fielding. A late Ajantha Mendis double-strike swung the match decisively in Sri Lanka's favour, after the Bangladesh middle-order provided fitful resistance. The hosts are still 178 runs adrift in the first innings, with two wickets in hand.Nasir Hossain and Mahmudullah had put on 46 together as the sun began to set, but with only 21 balls remaining until the day's quota was done, a wide ball from Mendis failed to bounce, and Dinesh Chandimal collected what the umpire believed was an under-edge. Bangladesh's last recognised batsman Sohag Gazi was struck in front of middle and off stump next ball, forcing his prompt departure, and Mendis was only denied a hat-trick by unexpected bounce, which may have taken the ball that struck the new batsman's front pad above the stumps.Shamsur and Imrul were ruled by caution, then adventure, in the morning before giving way to impatience when they surrendered after lunch. They had only strayed, though, after having adding 232 runs, the second-highest Test partnership for Bangladesh, which was also the best for the second wicket. The wicketless first session appeared to unlock the spirit Bangladesh had lacked in the first six days of the series, even if the batsmen who followed were occasionally guilty of taking hair-brained options.",imageURL:"news.jpg"}
    ];
});

angular.module('adminUIAngularApp')
  .controller('PhotoUploadCtrl', function ($scope) {
    $scope.photos = [
      {date:"2014-02-07",title:"New Zealand v India at Auckland, 1st Test - day 1",URL:"news.jpg"},
      {date:"2014-02-07",title:"Bangladesh v Sri Lanka at Chittagong, 2nd Test - day 3",URL:"news.jpg"}
    ];
});

angular.module('adminUIAngularApp')
  .controller('rankingCtrl', function ($scope) {
	  $scope.Math = window.Math;
    $scope.oditeam = [
      {name:"England",match:47,point:5102,rating:109},
      {name:"Australia",match:47,point:5505,rating:117},
      {name:"India",match:63,point:7214,rating:	115},
      {name:"South Africa",match:44,point:4825,rating:110}

    ];
    $scope.testallrounder=[
      {name:"S.C.J. Broad",country:"ENG",rating:291},
      {name:"R. Ashwin",country:"IND",rating:388},
	 {name:"Shakib Al Hasan",country:"BAN",rating:357},
	{name:"V.D. Philander",country:"SA",rating:335}

    ];
});

angular.module('adminUIAngularApp')
  .controller('playerCtrl', function ($scope, $routeParams) {
    $scope.players=[
      {name:"Shakib Al Hasan",imageURL:"sakib.jpg",age:"26 years 320 days",teams:"Bangladesh, Adelaide Strikers, Bangladesh A, Bangladesh Cricket Board XI, Barbados Tridents, Dhaka Gladiators, Khulna Division, Kolkata Knight Riders, Worcestershire",role:"Allrounder",batstyle:"Left-hand bat",bowlstyle:"Slow left-arm orthodox"},
	  {name:"Shakib Al Hasan",imageURL:"sakib.jpg",age:"26 years 320 days",teams:"Bangladesh, Adelaide Strikers, Bangladesh A, Bangladesh Cricket Board XI, Barbados Tridents, Dhaka Gladiators, Khulna Division, Kolkata Knight Riders, Worcestershire",role:"Allrounder",batstyle:"Left-hand bat",bowlstyle:"Slow left-arm orthodox"},
	  {name:"Shakib Al Hasan",imageURL:"sakib.jpg",age:"26 years 320 days",teams:"Bangladesh, Adelaide Strikers, Bangladesh A, Bangladesh Cricket Board XI, Barbados Tridents, Dhaka Gladiators, Khulna Division, Kolkata Knight Riders, Worcestershire",role:"Allrounder",batstyle:"Left-hand bat",bowlstyle:"Slow left-arm orthodox"},
	  {name:"Shakib Al Hasan",imageURL:"sakib.jpg",age:"26 years 320 days",teams:"Bangladesh, Adelaide Strikers, Bangladesh A, Bangladesh Cricket Board XI, Barbados Tridents, Dhaka Gladiators, Khulna Division, Kolkata Knight Riders, Worcestershire",role:"Allrounder",batstyle:"Left-hand bat",bowlstyle:"Slow left-arm orthodox"}
    ];
	$scope.params = $routeParams;
});

angular.module('adminUIAngularApp')
  .controller('UpdateScoreCtrl', function ($scope) {
    $scope.scores = [
      {date:"2014-02-07",winner:"Bangladesh",loser:"Sri Lanka",type:"test",desc:"Sri Lanka 587 & 90/3 (33.3 ov)Bangladesh 426"},
      {date:"2014-02-07",winner:"Bangladesh",loser:"Sri Lanka",type:"test",desc:"Sri Lanka 587 & 90/3 (33.3 ov)Bangladesh 426"}
    ];
});