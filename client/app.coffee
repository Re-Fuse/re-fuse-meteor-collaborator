# This code only runs on the client

Accounts.ui.config passwordSignupFields: 'USERNAME_ONLY'

angular.module 'simple-todos', ['angular-meteor', 'accounts.ui', 'youtube-embed']


angular.module('simple-todos').controller 'TodosListCtrl', [
  '$scope'
  ($scope) ->
    $scope.tasks = [
      { text: 'This is task 1' }
      { text: 'This is task 2' }
      { text: 'This is task 3' }
    ]

    # $scope.theBestVideo = '7YurgZC_Mh8'
    $scope.theBestVideo = 'bYtWzqjtsJU'

    $scope.playerVars = {
        controls: 0,
        autoplay: 1
    }

    # $scope.addTask = (newTask) ->
    #   $scope.tasks.push
    #     text: newTask
    #     createdAt: new Date
    #     owner: Meteor.userId()
    #     username: Meteor.user().username

]
