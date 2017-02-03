var config = require('../config').images;

var gulp 	= require('gulp'),
    changed 	= require('gulp-changed'),
    imagemin 	= require('gulp-imagemin');


// Copia las imagenes desde src a build

gulp.task('images', function() {
	return gulp.src(config.src)
		.pipe(changed(config.build.dest))
		.pipe(gulp.dest(config.build.dest));
});

// Optimiza las imagenes(con imagemin) de src, y las copia a dist

gulp.task('images-dist', function () {
	return gulp.src(config.src)
		.pipe(imagemin(config.imagemin))
		.pipe(gulp.dest(config.dist.dest));
});
