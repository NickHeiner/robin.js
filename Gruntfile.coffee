module.exports = (grunt) ->

  grunt.loadNpmTasks 'grunt-mocha-test'
  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-contrib-jshint'

  grunt.initConfig
    mochaTest:
      files: ['tests/*.js']

    mochaTestConfig:
      options:
        reporter: 'min'

    jshint:
      options:
        globalstrict: true
        newcap: false
        node: true
        force: true

      all:
        files:
          src: ['src/**/*.js']

    watch:
      test:
        files: ['<%= jshint.all.files.src %>', '<%= mochaTest.files %>']
        tasks: ['jshint', 'mochaTest']
