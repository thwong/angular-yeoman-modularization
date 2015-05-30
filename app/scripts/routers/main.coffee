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
      })
      .state('aboutState', {
        url: '/about'
        views: {
          '' : {
            controller: 'AboutCtrl'
            templateUrl: 'views/about.html'
          }
        }
      })
