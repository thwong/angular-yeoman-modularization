# Karma configuration
# http://karma-runner.github.io/0.12/config/configuration-file.html
# Generated on 2015-05-06 using
# generator-karma 0.8.3

module.exports = (config) ->
  config.set
    # base path, that will be used to resolve files and exclude
    basePath: '../'

    # testing framework to use (jasmine/mocha/qunit/...)
    frameworks: ['jasmine']

    # list of files / patterns to load in the browser
    files: [
      'bower_components/angular/angular.js'
      'bower_components/angular-mocks/angular-mocks.js'
      'bower_components/angular-ui-router/release/angular-ui-router.js'
      'bower_components/oclazyload/dist/ocLazyLoad.min.js'
      'bower_components/angular-gettext/dist/angular-gettext.js'
      'bower_components/angular-translate/angular-translate.js'
      'bower_components/angular-translate-loader-static-files/angular-translate-loader-static-files.js'
      'app/scripts/app.coffee'
      'app/scripts/controllers/*.coffee'
      'app/scripts/directives/*.coffee'
      'app/scripts/routers/*.coffee'
      'app/scripts/services/*.coffee'
      'test/spec/**/*.coffee'
    ],

    # list of files / patterns to exclude
    exclude: []

    # web server port
    port: 8080

    # level of logging
    # possible values: LOG_DISABLE || LOG_ERROR || LOG_WARN || LOG_INFO || LOG_DEBUG
    logLevel: config.LOG_INFO

    # Start these browsers, currently available:
    # - Chrome
    # - ChromeCanary
    # - Firefox
    # - Opera
    # - Safari (only Mac)
    # - PhantomJS
    # - IE (only Windows)
    browsers: [
      'PhantomJS'
    ]

    # Unit test coverage report configuration
    coverageReporter: {
      type: 'lcov'
      dir: 'coverage/'
      subdir: '.'
    }

    # Unit test coverage reporter
    reporters: ['progress', 'coverage']

    # Which plugins to enable
    plugins: [
      'karma-phantomjs-launcher'
      'karma-jasmine'
      'karma-coffee-preprocessor'
      'karma-coverage'
    ]

    # enable / disable watching file and executing tests whenever any file changes
    autoWatch: true

    # Continuous Integration mode
    # if true, it capture browsers, run tests and exit
    singleRun: false

    colors: true

    preprocessors: {
      '**/*.coffee': ['coffee']
      'app/**/*.coffee': ['coverage']
    }

    # Uncomment the following lines if you are using grunt's server to run the tests
    # proxies: '/': 'http://localhost:9000/'
    # URL root prevent conflicts with the site root
    # urlRoot: '_karma_'
