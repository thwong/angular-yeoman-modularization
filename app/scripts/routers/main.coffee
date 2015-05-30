'use strict'

angular
  .module('angularYeomanModularizationApp')
  # Configure the mainState route
  .config ($stateProvider) ->
    $stateProvider
      # Main State
      .state('main', {
        url: '/main'
        abstract: true
        templateUrl: 'views/main.html'
      })
      # Index State
      .state('main.index', {
        url: ''
        templateUrl: 'views/index.html'
      })
      # About State
      .state('main.about', {
        url: '/about'
        controller: 'AboutCtrl'
        templateUrl: 'views/about.html'
        # resolve: {
        #   files: ($ocLazyLoad) ->
        #     return $ocLazyLoad.load('scripts/controllers/about.js')
        # }
      })
