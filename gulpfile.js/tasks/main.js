var gulp	 	= require('gulp'),
    sequence	= require('gulp-sequence');

//Ejecuta watch > browsersync > build como tarea default
gulp.task('default', ['watch']);

//Tarea de desarrollo. Prepara y copia los assets de desarrollo a ./build
gulp.task('build', sequence('clean', ['images', 'scripts', 'styles', 'fonts', 'jekyll']));

//Tarea de producción. Optimiza y copia los assets a ./dist
gulp.task('dist', sequence('clean-dist', ['images-dist', 'scripts-dist', 'styles-dist', 'fonts-dist', 'jekyll-dist'], 'sizereport'));
