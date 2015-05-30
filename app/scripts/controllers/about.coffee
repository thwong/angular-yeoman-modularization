'use strict'

###*
 # @ngdoc function
 # @name angularYeomanModularizationApp.controller:AboutCtrl
 # @description
 # # AboutCtrl
 # Controller of the angularYeomanModularizationApp
###
AboutCtrl = ['$scope', ($scope) ->
  $scope.awesomeThings = [
    'HTML5 Boilerplate'
    'AngularJS'
    'Karma'
  ]
]

app = angular.module('angularYeomanModularizationApp')
if app.controllerProvider
  app.controllerProvider.register('AboutCtrl', AboutCtrl)
else
  app.controller('AboutCtrl', AboutCtrl)
