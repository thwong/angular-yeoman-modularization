'use strict'

###*
 # @ngdoc service
 # @name networkApp.DefaultLang
 # @description
 # # DefaultLang
 # Constant in the networkApp.
###
angular.module('config.i18n', [])
  .constant 'DefaultLang', {
    en: @@content
  }
