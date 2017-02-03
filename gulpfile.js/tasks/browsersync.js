var config = require('../config.js').browsersync;

var gulp			= require('gulp'),
    browsersync 	= require('browser-sync');

// Inicia Browsersync

gulp.task('browsersync', ['build'], function() {
	browsersync(config);
});

gulp.task('jekyll-rebuild', ['jekyll'], function() {
	browsersync.reload();
});
