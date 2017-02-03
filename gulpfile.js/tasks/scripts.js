var config = require('../config').scripts;

var gulp 	= require('gulp'),
    concat 	= require('gulp-concat'),
    uglify 	= require ('gulp-uglify'),
    eslint 	= require('gulp-eslint'),
    sourcemaps 	= require('gulp-sourcemaps'),
    babel 	= require('gulp-babel');

// Ejecuta ESLint para comprobar que no haya errores en javascript

gulp.task('lint', function(){
	return gulp.src(config.src)
		.pipe(eslint(config.eslint))
		.pipe(eslint.format())
		.pipe(eslint.failAfterError());
});

// Tarea principal de los scripts. Se ejecuta después de scriptslint para evitar potenciales erroes.
// Crea sourcemaps, compila ES2015 con babel, concatena los archivos y los copia a build

gulp.task('scripts', ['lint'],  function() {
	return gulp.src(config.src)
		.pipe(sourcemaps.init())
		.pipe(babel(config.babel))
		.pipe(concat('scripts.js'))
		.pipe(sourcemaps.write())
		.pipe(gulp.dest(config.build.dest));
});

// Igual a la anterior solo que para producción: luego de concatenar comprime el archivo con UglifyJS

gulp.task('scripts-dist', ['lint'],  function() {
	return gulp.src(config.src)
		.pipe(sourcemaps.init())
		.pipe(babel(config.babel))
		.pipe(concat('scripts.js'))
		.pipe(uglify())
		.pipe(sourcemaps.write())
		.pipe(gulp.dest(config.dist.dest));
});
		


