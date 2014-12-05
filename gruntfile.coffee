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

        # Configuration to be run (and then tested).
        amdify: default_target: files: [{

        }]

        # Unit tests.
        nodeunit: ['test/*-test.js']

    # Actually load this plugin's task(s).
    grunt.loadTasks 'tasks'

    # Whenever the "test" task is run, first clean the "tmp" dir, then run this
    # plugin's task(s), then test the result.
    grunt.registerTask 'test', ['clean', 'amdify', 'nodeunit']

    # By default, lint and run all tests.
    grunt.registerTask 'default', ['jshint', 'test']

