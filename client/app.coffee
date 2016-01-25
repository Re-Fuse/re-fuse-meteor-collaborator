# This code only runs on the client

Accounts.ui.config passwordSignupFields: 'USERNAME_ONLY'

angular.module 'simple-todos', ['angular-meteor', 'accounts.ui', 'youtube-embed', 'timer']


angular.module('simple-todos').controller 'TodosListCtrl', [
  '$scope', '$meteor'
  ($scope, $meteor) ->
    $scope.actions = $meteor.collection(Actions)
    $scope.answers = $meteor.collection(Answers)

    $scope.$broadcast('timer-clear')

    $scope.currentStep = 0
    $scope.setStep = (step)->
      $scope.currentStep = step

    $scope.steps = [
      text: "Hello everyone! Let’s start the third and last day of our online roundtable!"
      action: 'welkom'
      options: null
    ,
      text: "Hi Iro, are you here?"
      action: 'welkom'
      options: null
    ,
      text: "Nice!"
      action: 'welkom'
      options: null
    ,
      text: "Hi George, are you here?"
      action: 'welkom'
      options: null
    ,
      text: "Great, George!"
      action: 'welkom'
      options: null
    ,
      text: "Hi Richard, are you here?"
      action: 'welkom'
      options: null
    ,
      text: "Welcome, Richard!"
      action: 'welkom'
      options: null
    ,
      text: "Hi Tzeni, are you here?"
      action: 'welkom'
      options: null
    ,
      text: "Nice, Tzeni!"
      action: 'welkom'
      options: null
    ,
      text: "Hi Pepe, are you here?"
      action: 'welkom'
      options: null
    ,
      text: "Great, Pepe!"
      action: 'welkom'
      options: null
    ,
      text: "Hi Bas, are you here?"
      action: 'welkom'
      options: null
    ,
      text: "You nailed it, Bas!"
      action: 'welkom'
      options: null
    ,
      text: "Hi Kieran, are you here?"
      action: 'welkom'
      options: null
    ,
      text: "Welcome, Kieran!"
      action: 'welkom'
      options: null
    ,
      text: "Hi Efthimis, are you here?"
      action: 'welkom'
      options: null
    ,
      text: "Great!"
      action: 'welkom'
      options: null
    ,
      text: "Hi Els, are you here?"
      action: 'welkom'
      options: null
    ,
      text: "Welcome, Els!"
      action: 'welkom'
      options: null
    ,
      text: "Hi Roelof, are you here?"
      action: 'welkom'
      options: null
    ,
      text: "Welcome, Roelof!"
      action: 'welkom'
      options: null
    ,
      text: "Hi Thanasis, are you here?"
      action: 'welkom'
      options: null
    ,
      text: "Nice, Thanasis!"
      action: 'welkom'
      options: null
    ,
      text: "Great, no one is missing."
      action: 'welkom'
      options: null
    ,
      text: "Please click on this link and sign in. In case your account is not working anymore you can easily create again a new one, like yesterday."
      action: 'welkom'
      options: null
    ,
      text: "http://re-fuse-day-3.meteor.com"
      action: 'welkom'
      options: null
    ,
      text: "If you managed to log in successfully, the Sign in (top left corner) will disappear."
      action: 'welkom'
      options: null
    ,
      text: "Now Thanasis is going to make a short introduction about today’s roundtable."
      action: 'play_video'
      options: {video_id: 'r5LXDD2rfFQ'}
    ,
      text: "Great! Now you all know what to expect, don’t you! \n Next: Please click on your name. It will bring you to a hangout conversation. Click on JOIN HANGOUT and enjoy a few minutes of social interaction."
      action: 'play_video'
      options: {video_id: 'r5LXDD2rfFQ'}
    ,
      function: -> randomvideoChat()
      action: 'play_video'
      options: {video_id: 'r5LXDD2rfFQ'}
    ,
      text: "Now close your hangout and click once again on your name."
      action: 'play_video'
      options: null
    ,
      function: -> randomvideoChat()
      action: 'play_video'
      options: {video_id: 'r5LXDD2rfFQ'}
    ,
      text: "Moving on, you are all going to answer a questionnaire in the meteor/todo window. You have 10’."
      action: 'ask_questions'
      options: null
    ,
      text: "Good! Let’s watch a video. This is Roelof doing his job / existing on stage."
      action: 'play_video'
      options: {video_id: 'dICHosfr5is'}
    ,
      text: "Great, Roelof! What a profession…!"
      action: 'play_video'
      options: {video_id: 'r5LXDD2rfFQ'}
    ,
      text: "Let’s now watch an excerpt of a music-theater piece that Efthimis would like to share with the rest of the team."
      action: 'play_video'
      options: {video_id: '4p4QGXdaFVM'}
    ,
      text: 'Moving on, let’s now watch a video of Thanasis doing his job / existing on stage. Please skip the video at 15:35.'
      action: 'play_video'
      options: {video_id: 'U5kDuehK8Is?t=15m35s'}
    ,
      text: "Great, Thanasis! What a profession…! \n Let’s now watch an excerpt of a music-theater piece that Kieran would like to share with the rest of the team."
      action: 'play_video'
      options: {video_id: 'OcTT0KCY2BY'}
    ,
      text: "So many things in the world I didn’t know exist… \n Let’s watch one more! This is an excerpt of a music-theater piece that Tzeni would like to share with the rest of the team."
      action: 'play_video'
      options: {video_id: 'u0q7Hq4V_QY'}
    ,
      text: "Great! Now let’s read your answers in one of the questionnaire’s questions."
      action: 'play_video'
      options: {video_id: 'r5LXDD2rfFQ'}
    ,
      text: 'What are you interested in exploring/researching further in your work this period (regardless the music-theater field)?'
      action: 'play_video'
      options: {video_id: 'r5LXDD2rfFQ'}
    ,
      function: -> postAnswers('c')
      action: 'play_video'
      options: {video_id: 'r5LXDD2rfFQ'}
    ,
      text: "I got so many ideas from your answers! \n Let’s now move to Richard. You are going to watch a video of him doing his job / existing on stage."
      action: 'play_video'
      options: {video_id: 'Wn9gdqDXELI'}
    ,
      text: "Great, Richard! What a profession…! \n Moving on, let’s watch an excerpt of a music-theater piece that Els would like to share with the rest of the team. Please skip at 00:35."
      action: 'play_video'
      options: {video_id: 'vPyWC_ILphs?t=35s'}
    ,
      text: "I love your videos guys. Let’s watch one more! \n This is an excerpt of a music-theater piece that Roelof would like to share with the rest of the team."
      action: 'play_video'
      options: {video_id: 'wRQmuwAVPTo'}
    ,
      text: "Let’s finish the video frenzie with Iro doing her job / existing on stage! Please skip at 01:07."
      action: 'play_video'
      options: {video_id: 'hf0l2ghSGkE?t=1m7s'}
    ,
      text: "Moving on, in the next 15’ you will have the chance to discuss a few ideas. You are going to chat in 4 different rooms (channels) under different thematics. I will let you know when to move to a different room. You can talk for longer this time! \n Here are the first groups:"
      action: 'play_video'
      options: {video_id: 'r5LXDD2rfFQ'}
    ,
      function: -> randomGroupChat()
      action: 'play_video'
      options: {video_id: 'r5LXDD2rfFQ'}
    ,
      text: "Moving on! New groups:"
      action: 'play_video'
      options: {video_id: 'r5LXDD2rfFQ'}
    ,
      function: -> randomGroupChat()
      action: 'play_video'
      options: {video_id: 'r5LXDD2rfFQ'}
    ,
      text: "Time for a grant finale! Please click on this link to join the live-stream! \n <https://hangouts.google.com/call/fwqa3bdcx3il2qknubkmn2fpaea>"
      action: 'live_stream'
      options: {video_id: 'r5LXDD2rfFQ'}
    ,
      text: "It was a pleasure to go through all this information during the past three days. What an inspiring team! \n Thanasis will send you soon more details about the upcoming workshop Utrecht (29/2-4/3). \n Goodbye everyone! See you in Spring in the next online roundtable of the RE-FUSE platform!"
      action: 'play_video'
      options: {video_id: 'r5LXDD2rfFQ'}
    ,
      text: ''
      action: 'welcome'
      options: null
    ]

    # Trigger mechanism
    $scope.$watch 'currentStep', (val)->
      if Meteor.user().username == 'kieran'
        step = $scope.steps[val]
        $scope.say step.text if step.text
        $scope.newAction step.action, step.options if step.action
        step.function() if step.function

    # Action watcher for clients
    $scope.$watchCollection 'actions', (val)->
      $scope.currentAction = $scope.actions[$scope.actions.length - 1]

      # VIDEO
      if $scope.currentAction.type != 'play_video'
        $scope.bestPlayer.stopVideo() if $scope.bestPlayer

      # QUESTIONS
      if $scope.currentAction.type == 'ask_questions'
        $scope.$broadcast('timer-clear')
        $scope.$broadcast('timer-start')
        $scope.answering = true
      else
        $scope.$broadcast('timer-stop')

    $scope.newAnswer = (answers) ->
      $scope.answering = false
      $scope.answers.push
        answers: answers
        createdAt: new Date
        owner: Meteor.userId()
        username: Meteor.user().username

    $scope.destroyAnswer = (id)->
      confirm 'zeker?'
      Answers.remove(id)

    $scope.playerVars = {
        controls: 1,
        autoplay: 1
    }

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
            # channel: '#test'
          )
        dataType: 'json'
        success: (msg)->
          console.log msg
        fail: (msg)->
          console.log msg

    randomGroupChat = ->
      namen = Shuffle(leden)
      say = "#{namen[0]}, #{namen[1]}, #{namen[2]} join the channel: #space_and_time\n"
      say += "#{namen[3]}, #{namen[4]}, #{namen[5]} join the channel: #body_on_stage \n"
      say += "#{namen[6]}, #{namen[7]}, #{namen[8]} join the channel: #interdisciplinarity \n"
      say += "#{namen[9]}, #{namen[10]} join the channel: #speech_music "
      $scope.say say

    randomvideoChat = ->
      say = ('-\n-\n-\n\n\nWe are going to video chat in pairs. Click on your name to connect. 4 minutes each. \n\n ')
      $(leden).each (i, name)->
        say += "<https://plus.google.com/hangouts/_/#{Shuffle(hangouts)[i]}|#{name}>\n"
      $scope.say say

    postAnswers = (name)->
      say = ''
      $($scope.answers).each ->
        say += "\n -- #{this.username}: \n "
        say += @answers[name]
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

leden = ['Efthimis', 'Kieran', 'Roelof', 'George', 'Iro', 'Tzeni', 'Richard', 'Els', 'Pepe', 'Bas', 'Thanasis']
hangouts = ['tdmb6vcvw5a52gsnojogof564ua', 'htmrtfdbad5g35ymak4brtsocma', 'rgqnibmlgut4346vyt4e2mx6daa', 'cxzde2zfbtd74mpafzrnyoeaqea', 'bntvcwu4hvyskxbuo5yqwnxnw4a','tdmb6vcvw5a52gsnojogof564ua', 'htmrtfdbad5g35ymak4brtsocma', 'rgqnibmlgut4346vyt4e2mx6daa', 'cxzde2zfbtd74mpafzrnyoeaqea', 'bntvcwu4hvyskxbuo5yqwnxnw4a', 'bntvcwu4hvyskxbuo5yqwnxnw4a']
