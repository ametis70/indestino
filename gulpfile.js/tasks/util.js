config = require('../config.js').util;

var gulp 	= require('gulp'),
    del 	= require('del'),
    sizereport 	= require('gulp-sizereport');

// Elimina todos los archivos en build.

gulp.task('clean', function () {
	return del(config.build);
});

// Elimina todos los archivos en dist.

gulp.task('clean-dist', function() {
	return del(config.dist);
});

// Devuelve un reporte del tamaño de total de los archivos de dist.

gulp.task('sizereport', function() {
	return gulp.src(config.dist)
		.pipe(sizereport(config.sizereport));
});

