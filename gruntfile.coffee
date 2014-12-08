#
# grunt-amdify
# https://github.com/ePages-de/grunt-amdify
#
# Copyright (c) 2014 Erik Mueller
# Licensed under the MIT license.
#

module.exports = (grunt) ->
    # load all npm grunt tasks
    require('load-grunt-tasks') grunt

    # Project configuration.
    grunt.initConfig
        # Before generating any new files, remove any previously-created files.
        clean: ['tmp']

        coffeelint:
            options: configFile: '.coffeelintrc'
            files: 'tasks/*'

    # By default, lint and run all tests.
    grunt.registerTask 'default', ['coffeelint']

