var config = require('../config').styles;

var gulp			= require('gulp'),
    sass			= require('gulp-sass'),
    autoprefixer 	= require('gulp-autoprefixer'),
    sourcemaps 		= require('gulp-sourcemaps'),
    cssnano 		= require('gulp-cssnano'),
	browserSync		= require('browser-sync');

// Tarea principal de CSS. Crea sourcemaps, compila sass y elimina/agrega los prefijos necesarios.
// Finalmente injecta los cambios con Browsersync.

gulp.task('styles', function() {
	return gulp.src(config.src)
	.pipe(sourcemaps.init())
	.pipe(sass(config.sass))
	.pipe(autoprefixer(config.autoprefixer))
	.pipe(sourcemaps.write())
	.pipe(gulp.dest(config.build.dest))
	.pipe(browserSync.stream());
});

// Tarea de producción. Aparte de realizar lo anterior, comprime el css resultante con cssnano. 

gulp.task('styles-dist', function() {
	return gulp.src(config.src)
	.pipe(sourcemaps.init())
	.pipe(sass(config.sass))
	.pipe(autoprefixer(config.autoprefixer))
	.pipe(cssnano())
	.pipe(sourcemaps.write())
	.pipe(gulp.dest(config.dist.dest));
});
