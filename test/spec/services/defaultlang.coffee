'use strict'

describe 'Service: DefaultLang', ->

  # load the service's module
  beforeEach module 'networkApp'

  # instantiate service
  DefaultLang = {}
  beforeEach inject (_DefaultLang_) ->
    DefaultLang = _DefaultLang_

  it 'should do something', ->
    expect(!!DefaultLang).toBe true
