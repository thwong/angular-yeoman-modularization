'use strict'

###*
 # @ngdoc function
 # @name angularYeomanModularizationApp.controller:MainCtrl
 # @description
 # # MainCtrl
 # Controller of the angularYeomanModularizationApp
###
angular.module('angularYeomanModularizationApp')
  .controller 'MainCtrl', ($scope, $translate) ->

    $scope.langModel = {
      name: 'Tim'
      gender: 'male'
    }

    $scope.changeLanguage = (key) ->
      $translate.use(key)
