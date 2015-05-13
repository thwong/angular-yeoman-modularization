'use strict'

angular
  .module('networkApp')
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
