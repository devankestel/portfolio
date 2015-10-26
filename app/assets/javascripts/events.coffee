# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

portfolioApp = angular.module("portfolioApp", ["ngResource"])
portfolioApp.controller "EventsCtrl", ["$scope", "event", ($scope, event) ->
  $scope.heading = "Timeline"
  $scope.events = Event.query()
  $scope.create = ->
    Event.save $scope.newEvent, ((resource) ->
      $scope.events.push resource
      $scope.newEvent = {}      
      ), (response) ->
        console.log "Error: " + response.status
]

portfolioApp.factory "Event", ["$resource" ($resource) ->
  $resource "/events"
]

 
