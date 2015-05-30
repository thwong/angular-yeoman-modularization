'use strict'

###*
 # @ngdoc function
 # @name angularYeomanModularizationApp.controller:AboutCtrl
 # @description
 # # AboutCtrl
 # Controller of the angularYeomanModularizationApp
###
angular.module('angularYeomanModularizationApp')
  .controller 'AboutCtrl', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
