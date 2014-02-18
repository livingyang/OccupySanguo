"use strict"

module.exports = (grunt) ->

	fs = require "fs"

	grunt.loadNpmTasks('grunt-contrib-coffee');

	coffeeSrcDir = "Resources/src/"
	jsSrcDir = "multi-platform-js/#{coffeeSrcDir}"

	files = {}
	for filename in fs.readdirSync(coffeeSrcDir) when filename.match "coffee"
		files["#{jsSrcDir}#{filename.replace 'coffee', 'js'}"] = "#{coffeeSrcDir}#{filename}"
	
	console.log files
	grunt.initConfig
		coffee:
			compileDefault:
				files: files

	grunt.registerTask "default", ["coffee"]
