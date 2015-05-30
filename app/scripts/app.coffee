'use strict'

###*
 # @ngdoc overview
 # @name angularYeomanModularizationApp
 # @description
 # # angularYeomanModularizationApp
 #
 # Main module of the application.
###
app = angular
  .module('angularYeomanModularizationApp', [
    'ui.router'               # Angular UI Router
    'oc.lazyLoad'             # Lazy Loader
    'pascalprecht.translate'  # Angular Translate
    'config.i18n'             # Default language configuration
  ])
  # Configure HTML5 clean URL
  # .config ($locationProvider) ->
  #   $locationProvider.html5Mode(true).hashPrefix('!')
  # Configure the UI Router
  .config ($stateProvider, $urlRouterProvider) ->
    # Redirect any unmatched URL to /
    $urlRouterProvider.otherwise("/main/about")
  # Configure i18n loader
  .config ($translateProvider, DefaultLang) ->
    $translateProvider.translations('en', DefaultLang.en)
    $translateProvider.useStaticFilesLoader({prefix: 'languages/', suffix: '.json'})
    # $translateProvider.useMessageFormatInterpolation()
    $translateProvider.useSanitizeValueStrategy('escaped')
    $translateProvider.preferredLanguage('en')
    $translateProvider.fallbackLanguage('en')

app.config ($controllerProvider) ->
  app.controllerProvider = $controllerProvider
