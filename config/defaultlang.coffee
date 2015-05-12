'use strict'

###*
 # @ngdoc service
 # @name angularYeomanModularizationApp.DefaultLang
 # @description
 # # DefaultLang
 # Constant in the angularYeomanModularizationApp.
###
angular.module('config.i18n', [])
  .constant 'DefaultLang', {
    en: @@content
  }
