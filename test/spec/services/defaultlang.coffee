'use strict'

describe 'Service: DefaultLang', ->

  # load the service's module
  beforeEach module 'angularYeomanModularizationApp'

  # instantiate service
  DefaultLang = {}
  beforeEach inject (_DefaultLang_) ->
    DefaultLang = _DefaultLang_

  it 'should do something', ->
    expect(!!DefaultLang).toBe true
