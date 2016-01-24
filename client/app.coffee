# This code only runs on the client

Accounts.ui.config passwordSignupFields: 'USERNAME_ONLY'

angular.module 'simple-todos', ['angular-meteor', 'accounts.ui', 'youtube-embed', 'timer']


angular.module('simple-todos').controller 'TodosListCtrl', [
  '$scope', '$meteor'
  ($scope, $meteor) ->
    $scope.actions = $meteor.collection(Actions)
    $scope.$broadcast('timer-clear')

    $scope.$watchCollection 'actions', (val)->
      $scope.currentAction = $scope.actions[$scope.actions.length - 1]


      if $scope.currentAction.type != 'play_video'
        $scope.bestPlayer.stopVideo()

      if $scope.currentAction.type == 'ask_questions'
        $scope.$broadcast('timer-clear')
        $scope.$broadcast('timer-start')
        $scope.questionsStarted = true
        $('textarea.answer').show()
      else
        $scope.questionsStarted = false
        $scope.$broadcast('timer-stop')


    $scope.playerVars = {
        controls: 1,
        autoplay: 1
    }

    $scope.$on 'timer-stopped', (event, data) ->
      if $scope.questionsStarted
        $scope.say "#{$('textarea.answer').val()}\n--\n--\n--"
        $('textarea.answer').hide()



    # ADMIN
    # types: play_video, set_timer, ask_questions
    $scope.newAction = (action, options) ->
      $scope.actions.push
        type: action
        options: options
        createdAt: new Date
        owner: Meteor.userId()
        username: Meteor.user().username

    # types: play_video, ask_questions
    $scope.say = (text) ->
      jQuery.ajax
        url: 'https://hooks.slack.com/services/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'
        method: 'POST'
        data:
          JSON.stringify(
            username: 'RE-FUSE BOT'
            icon_emoji: ":ghost:"
            text: text
          )
        dataType: 'json'
        success: (msg)->
          console.log msg
        fail: (msg)->
          console.log msg

    $scope.randomGroupChat = ->
      say = ('-\n-\n-\n\n\nWe are going to group chat, check your name and click and join your channel. \n\n ')
      namen = Shuffle(leden)
      say += "#{namen[0]}, #{namen[1]}, #{namen[2]} join the channel: #day1-room1\n"
      say += "#{namen[3]}, #{namen[4]}, #{namen[5]} join the channel: #day1-room2\n"
      say += "#{namen[6]}, #{namen[7]}, #{namen[8]} join the channel: #day1-room3\n"
      say += "#{namen[9]}, #{namen[10]} join the channel: #day1-room4"
      $scope.say say

    $scope.randomvideoChat = ->
      say = ('-\n-\n-\n\n\nWe are going to video chat in pairs. Click on your name to connect. 4 minutes each. \n\n ')
      $(leden).each (i, name)->
        say += "<https://plus.google.com/hangouts/_/#{Shuffle(hangouts)[i]}|#{name}>\n"
      $scope.say say
]

Shuffle = (o) ->
  j = undefined
  x = undefined
  i = o.length
  while i
    j = parseInt(Math.random() * i)
    x = o[--i]
    o[i] = o[j]
    o[j] = x
  o

leden = ['Efthimis', 'Kieran', 'Roelof', 'George', 'Iro', 'Tzeni', 'Richard', 'Els', 'Pepe', 'Bas']
hangouts = ['tdmb6vcvw5a52gsnojogof564ua', 'htmrtfdbad5g35ymak4brtsocma', 'rgqnibmlgut4346vyt4e2mx6daa', 'cxzde2zfbtd74mpafzrnyoeaqea', 'bntvcwu4hvyskxbuo5yqwnxnw4a','tdmb6vcvw5a52gsnojogof564ua', 'htmrtfdbad5g35ymak4brtsocma', 'rgqnibmlgut4346vyt4e2mx6daa', 'cxzde2zfbtd74mpafzrnyoeaqea', 'bntvcwu4hvyskxbuo5yqwnxnw4a']
