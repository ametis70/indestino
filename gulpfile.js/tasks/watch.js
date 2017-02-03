var config = require('../config').watch;

var gulp = require('gulp');

// Define los directorios en los que gulp comprobará por cambios luego de llamar a Browsersync.

gulp.task('watch', ['browsersync'], function () {
	gulp.watch(config.styles, ['styles']);
	gulp.watch(config.scripts, ['scripts']);
	gulp.watch(config.images, ['images']);
	gulp.watch(config.jekyll, ['jekyll-rebuild']);
	gulp.watch(config.fonts, ['fonts']);
});
