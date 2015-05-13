'use strict'

###*
 # @ngdoc function
 # @name networkApp.controller:MainCtrl
 # @description
 # # MainCtrl
 # Controller of the networkApp
###
angular.module('networkApp')
  .controller 'MainCtrl', ($scope, $translate) ->

    $scope.langModel = {
      name: 'Tim'
      gender: 'male'
    }

    $scope.changeLanguage = (key) ->
      $translate.use(key)
