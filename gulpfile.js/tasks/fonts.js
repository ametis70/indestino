var config = require('../config').fonts;

var gulp	 	= require('gulp'),
    changed 	= require('gulp-changed')


// Copia las fuentes desde src a build

gulp.task('fonts', function() {
	return gulp.src(config.src)
		.pipe(changed(config.build.dest))
		.pipe(gulp.dest(config.build.dest));
});

// Igual a la anterior para las tareas de producción 

gulp.task('fonts-dist', function () {
	return gulp.src(config.src)
		.pipe(gulp.dest(config.dist.dest));
});
