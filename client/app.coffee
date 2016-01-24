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
      text: "Hello everyone! Let’s start the second day of our online roundtable!"
      action: 'welkom'
      options: null
    ,
      text: "Hi Kieran, are you here?"
      action: 'welkom'
      options: null
    ,
      text: "Nice!"
      action: 'welkom'
      options: null
    ,
      text: "Hi Els, are you here?"
      action: 'welkom'
      options: null
    ,
      text: "Great, Els!"
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
      text: "Hi Bas, are you here?"
      action: 'welkom'
      options: null
    ,
      text: "Great, Bas!"
      action: 'welkom'
      options: null
    ,
      text: "Hi Pepe, are you here?"
      action: 'welkom'
      options: null
    ,
      text: "You nailed it, Pepe!"
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
      text: "Great!"
      action: 'welkom'
      options: null
    ,
      text: "Hi Iro, are you here?"
      action: 'welkom'
      options: null
    ,
      text: "Welcome, Iro!"
      action: 'welkom'
      options: null
    ,
      text: "Hi George, are you here?"
      action: 'welkom'
      options: null
    ,
      text: "Welcome, George!"
      action: 'welkom'
      options: null
    ,
      text: "Hi Efthimis, are you here?"
      action: 'welkom'
      options: null
    ,
      text: "Nice, Efthimis!"
      action: 'welkom'
      options: null
    ,
      text: "Great, no one is missing. What an inspiring team!"
      action: 'welkom'
      options: null
    ,
      text: "Please click on this link and follow the instructions."
      action: 'welkom'
      options: null
    ,
      text: "http://re-fuse-day-2.meteor.com"
      action: 'welkom'
      options: null
    ,
      text: "Everybody created an account? Thanasis will give now a short introduction about today's roundtable."
      action: 'play_video'
      options: {video_id: '3NxMHP4rCko'}
    ,
      text: "Thank you for keeping it short, Thanasis. Moving on, you are all going to answer a questionnaire. You have 15’."
      action: 'ask_questions'
      options: null
    ,
      text: "Are you all finished with the questionnaire?"
      action: 'play_video'
      options: {video_id: '3NxMHP4rCko'}
    ,
      text: "Good! Let’s watch now a video of Bas doing his job / existing on stage."
      action: 'play_video'
      options: {video_id: 'h0oW5sEMY2g'}
    ,
      text: "Great, Bas! What a profession…! Now let’s read the answers that you all wrote in the questionnaire. Let’s start with the first question:"
      action: 'play_video'
      options: {video_id: '3NxMHP4rCko'}
    ,
      text: 'What is music-theater for you?'
      action: 'play_video'
      options: {video_id: '3NxMHP4rCko'}
    ,
      function: -> postAnswers('a')
      action: 'play_video'
      options: {video_id: '3NxMHP4rCko'}
    ,
      text: "How did you come up with all these stories, guys?! \n Let’s now watch an excerpt of a music-theater piece that Iro would like to share with the rest of the team. "
      action: 'play_video'
      options: {video_id: 'y87y9TTjgcc'}
    ,
      text: "Moving on, let’s watch an excerpt of a music-theater piece that Richard would like to share with the rest of the team. You should skip to 28:00."
      action: 'play_video'
      options: {video_id: 'MXvr8jmOle0?t=28m'}
    ,
      text: "Let’s watch now a video of Efthimis doing his job / existing on stage."
      action: 'play_video'
      options: {video_id: 'ibO01uJI07M'}
    ,
      text: "Great, Efthimis! What a profession…! Now let’s read the answers that you all wrote on the second question."
      action: 'play_video'
      options: {video_id: '3NxMHP4rCko'}
    ,
      text: 'Have you worked in this field before? If yes, what kind of skills of yours have you applied until now in music-theater? (e.g. moving on stage/dancing, singing, acting, stage directing etc.)'
      action: 'play_video'
      options: {video_id: '3NxMHP4rCko'}
    ,
      function: -> postAnswers('b')
      action: 'play_video'
      options: {video_id: '3NxMHP4rCko'}
    ,
      text: "Moving on, let’s watch an excerpt of a music-theater piece that George would like to share with the rest of the team."
      action: 'play_video'
      options: {video_id: 'b1SIUcfS1Zw'}
    ,
      text: "Let’s continue like this, I like it! Let’s watch an excerpt of a music-theater piece that Thanasis would like to share with the rest of the team. You should skip to 01:00."
      action: 'play_video'
      options: {video_id: 'XaON3v3IpNU?t=1m'}
    ,
      text: "But there is more! I like it! Let’s watch an excerpt of a music-theater piece that Pepe would like to share with the rest of the team. You should skip to 07:25."
      action: 'play_video'
      options: {video_id: 'IPWB4p-GT38?t=7m25s'}
    ,
      text: "You guys impress me. Let’s now watch a video of Els doing her job / existing on stage."
      action: 'play_video'
      options: {video_id: 'r1nRI5x25pc'}
    ,
      text: "Great, Els! What a profession…! Now see what you answered on the third question of the questionnaire."
      action: 'play_video'
      options: {video_id: '3NxMHP4rCko'}
    ,
      text: 'Is there something in particular you find attractive/challenging in music-theater?'
      action: 'play_video'
      options: {video_id: '3NxMHP4rCko'}
    ,
      function: -> postAnswers('c')
      action: 'play_video'
      options: {video_id: '3NxMHP4rCko'}
    ,
      text: "More video! Let’s watch an excerpt of a music-theater piece that Bas would like to share with the rest of the team."
      action: 'play_video'
      options: {video_id: 'e0d7BVYZ4MM'}
    ,
      text: "Wow! I can now only think of moving to the answers you all wrote on the fourth question of the questionnaire. Let’s have a look!"
      action: 'play_video'
      options: {video_id: '3NxMHP4rCko'}
    ,
      text: 'What professional/personal skills of yours would you love to be taken advantage of in a music-theater piece? (e.g. sense of space, perfect pitch, playing the Eb clarinet, crisp articulation etc.)'
      action: 'play_video'
      options: {video_id: '3NxMHP4rCko'}
    ,
      function: -> postAnswers('d')
      action: 'play_video'
      options: {video_id: '3NxMHP4rCko'}
    ,
      text: "So many skills! Did I tell you I can type short directions? \n Let’s watch one more video. This is Roelof doing his job / existing on stage."
      action: 'play_video'
      options: {video_id: 'dICHosfr5is'}
    ,
      text: "Moving on, in the next 15’ you will have the chance to discuss on a few ideas. You are going to chat in four different rooms (channels) under different thematics. Please check the short description when you enter each room. I will let you know when to move to a different one. Here are the first groups:"
      action: 'play_video'
      options: {video_id: '3NxMHP4rCko'}
    ,
      function: -> randomGroupChat()
      action: 'play_video'
      options: {video_id: '3NxMHP4rCko'}
    ,
      text: "Second group: Moving on! Change groups"
      action: 'play_video'
      options: {video_id: '3NxMHP4rCko'}
    ,
      function: -> randomGroupChat()
      action: 'play_video'
      options: {video_id: '3NxMHP4rCko'}
    ,
      text: "Third group: Change ding ding ding!"
      action: 'play_video'
      options: {video_id: '3NxMHP4rCko'}
    ,
      function: -> randomGroupChat()
      action: 'play_video'
      options: {video_id: '3NxMHP4rCko'}
    ,
      text: "Fourth group: Last random group! Change"
      action: 'play_video'
      options: {video_id: '3NxMHP4rCko'}
    ,
      function: -> randomGroupChat()
      action: 'play_video'
      options: {video_id: '3NxMHP4rCko'}
    ,
      text: "Thank you RE-FUSE team for one more information overload, it was fun! See you back here tomorrow @15:00!"
      action: 'play_video'
      options: {video_id: '3NxMHP4rCko'}
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
# hangouts = ['tdmb6vcvw5a52gsnojogof564ua', 'htmrtfdbad5g35ymak4brtsocma', 'rgqnibmlgut4346vyt4e2mx6daa', 'cxzde2zfbtd74mpafzrnyoeaqea', 'bntvcwu4hvyskxbuo5yqwnxnw4a','tdmb6vcvw5a52gsnojogof564ua', 'htmrtfdbad5g35ymak4brtsocma', 'rgqnibmlgut4346vyt4e2mx6daa', 'cxzde2zfbtd74mpafzrnyoeaqea', 'bntvcwu4hvyskxbuo5yqwnxnw4a']
