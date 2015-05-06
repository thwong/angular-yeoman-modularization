'use strict'

###*
 # @ngdoc function
 # @name angularYeomanModularizationApp.controller:MainCtrl
 # @description
 # # MainCtrl
 # Controller of the angularYeomanModularizationApp
###
angular.module('angularYeomanModularizationApp')
  .controller 'MainCtrl', ($scope, gettextCatalog) ->

    $scope.switchLanguage = (lang) ->
      gettextCatalog.setCurrentLanguage(lang)
      gettextCatalog.loadRemote('languages/' + lang + '.json')
