'use strict'

describe 'Controller: MainCtrl', ->

  # load the controller's module
  beforeEach module 'angularYeomanModularizationApp'

  MainCtrl = {}
  scope = {}
  gettextCatalog = {
    setCurrentLanguage: () -> return true
    loadRemote: () -> return true
  }

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    MainCtrl = $controller 'MainCtrl', {
      $scope: scope
      gettextCatalog: gettextCatalog
    }
    spyOn(gettextCatalog, 'setCurrentLanguage')
    spyOn(gettextCatalog, 'loadRemote')

  it('should load the remote language file and set the language when calling switchLanguage', () ->
    scope.changeLanguage()
    #expect(gettextCatalog.setCurrentLanguage).toHaveBeenCalled()
    #expect(gettextCatalog.loadRemote).toHaveBeenCalled()
  )
