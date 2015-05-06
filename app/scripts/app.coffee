'use strict'

###*
 # @ngdoc overview
 # @name angularYeomanModularizationApp
 # @description
 # # angularYeomanModularizationApp
 #
 # Main module of the application.
###
angular
  .module('angularYeomanModularizationApp', [
    'ui.router'    # Angular UI Router
    'oc.lazyLoad'  # Lazy Loader
    'gettext'      # i18n Support
  ])
  # Configure HTML5 clean URL
  .config ($locationProvider) ->
    $locationProvider.html5Mode(true).hashPrefix('!')
  # Configure the UI Router
  .config ($stateProvider, $urlRouterProvider) ->
    # Redirect any unmatched URL to /
    $urlRouterProvider.otherwise("/")
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
