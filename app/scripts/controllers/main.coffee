'use strict'

###*
 # @ngdoc function
 # @name angularYeomanModularizationApp.controller:MainCtrl
 # @description
 # # MainCtrl
 # Controller of the angularYeomanModularizationApp
###
angular.module('angularYeomanModularizationApp')
  .controller 'MainCtrl', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
