// Configuración de GULP 

// Directorios

var src 	= './src/',
    bld 	= './build/',
    dst 	= './gh-pages/',
    assets 	= src + '_assets/';

// Configuración de módulos

module.exports = {

	browsersync: {
		server: {
			baseDir: 'build'
		},
		host: 'localhost',
		files: [bld+'**/*.*', '!'+'**/*.map'],
	},

	styles: {
		src: [assets+'sass/**/*.sass', assets+'sass/**/*.scss'],
		build: { dest: bld + 'css/' },
		dist: { dest: dst + 'css/' },
		autoprefixer: {
			browsers: ['last 2 versions'],
			cascade: false
		},
		sass: {
			includePaths: [assets+'sass'],
			indentedSyntax: true
		}
	},

	scripts: {
		src: assets+'js/**/*.js',
		build: { dest: bld+'js/' },
		dist: { dest: dst+'js/' },
		babel: { presets: ['es2015'] },
		eslint: { config: './.eslintrc' }
	},

	images: {
		src: assets+'img/**',
		build: { dest: bld+'img' },
		dist: { dest: dst+'img' }, 
		imagemin: {
			progressive: true,
			svgoPlugins: [{removeViewBox: false}]
		}
	},

	watch : {
		styles : assets+'sass/**/*(*.sass|*.scss)',
		scripts : assets+'js/**/*.js',
		images : assets+'img/**/*(*.png|*.jpg|*.jpeg|*.gif|*.svg)',
		fonts: assets+'ttf/**/*.ttf',
		jekyll: src+'**/*.html'
	},
	
	util : {
		build: bld,
		dist: dst,
		sizereport: {
			gzip: true
		}
	},

	fonts : {
		src: assets+'ttf/**/*.ttf',
		build: { dest: bld+'ttf' },
		dist: { dest: dst+'ttf' } 
	}
}
