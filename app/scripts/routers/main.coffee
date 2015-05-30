'use strict'

angular
  .module('angularYeomanModularizationApp')
  # Configure the mainState route
  .config ($stateProvider) ->
    $stateProvider
      .state('mainState', {
        url: '/'
        views: {
          '' : {
            controller: 'MainCtrl'
            templateUrl: 'views/main.html'
          }
        }
        resolve: {
          files: ($ocLazyLoad) ->
            return $ocLazyLoad.load('scripts/controllers/main.js')
        }
      })
      .state('aboutState', {
        url: '/about'
        views: {
          '' : {
            controller: 'AboutCtrl'
            templateUrl: 'views/about.html'
          }
        }
        resolve: {
          files: ($ocLazyLoad) ->
            return $ocLazyLoad.load('scripts/controllers/about.js')
        }
      })
