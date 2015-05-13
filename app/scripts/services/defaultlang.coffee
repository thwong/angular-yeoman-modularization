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
    en: {"title":"Hello World","welcome":"Welcome {{name}} to this wonderful application template.","i-am-tim":"Actually, my name is Tim.","i-am-mary":"Actually, my name is Mary.","i-read-chinese":"I want to read this in Chinese.","i-read-english":"I want to read this in English."}
  }
