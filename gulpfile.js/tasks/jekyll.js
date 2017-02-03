var config = require('../config.js').templates;

var gulp		= require('gulp'),
	browsersync = require('browser-sync'),
	cp			= require('child_process');

// Selecciona el ejecutable correcto si se ejecuta jekyll en Windows(solo utilizar como ultimo recurso)

var jekyll = process.platform === 'win32' ? 'jekyll.bat' : 'jekyll';

// Ejecuta el proceso de Jekyll para generar el html estático 

gulp.task('jekyll', function(done) {
    return cp.spawn( jekyll , ['build', '-q'], {stdio: 'inherit'})
        .on('close', done);
});

// Como la anterior, pero para el deployment. Se utilizan ambos archivos de configuración 

gulp.task('jekyll-dist', function(done) {
	return cp.spawn( jekyll , ['build', '-q', '-d', 'gh-pages'], {stdio: 'inherit'})
        .on('close', done);
});

