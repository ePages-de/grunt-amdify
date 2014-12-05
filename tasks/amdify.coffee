#
# grunt-amdify
# https://github.com/ePages-de/grunt-amdify
#
# Copyright (c) 2014 Erik Müller
# Licensed under the MIT license.
#

module.exports = (grunt) ->
    # Please see the Grunt documentation for more information regarding task
    # creation: http://gruntjs.com/creating-tasks

    amdify = require('audit').wrap
    colors = require 'chalk'

    grunt.task.registerMultiTask('amdify', 'use audit to wrap commonjs modules to AMD', ->
        @files.forEach (file) ->
            grunt.file.write file.dest, amdify grunt.file.read file.src[0]
            grunt.log.ok colors.magenta('amdified'), file.src[0], '=>', file.dest
    )
