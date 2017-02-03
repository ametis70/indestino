# Indestino 
 
### Sobre el repositorio
El repositorio está divivido en tres *branches*:

- `master`: El codigo fuente del juego.
- `jekyll`: ***Desarrollo del sitio web(archivos sin procesear).***
- `gh-pages`: Para hostear el sitio a través del servicio de GitHub Pages. 
  
### Instrucciones para compilar el sitio
Para poder compilar el proyecto hace falta tener instalado [Ruby](https://www.ruby-lang.org/), [Jekyll](https://jekyllrb.com/), [Node.js](https://nodejs.org/) y [gulp.js](http://gulpjs.com/). Seguir las instrucciones en cada sitio para instalar el software.
  
El proyecto fue probado en una PC corriendo Arch Linux, con `Ruby 2.3.1`, `Node.js 4.4.5 LTS`, `gulp.js CLI 1.2.1` y `Jekyll 3.1.6`.
En Mac OS X debería funcionar sin problemas, pero no tengo la certeza de que funcione en Windows.
  
Primero hay que clonar el repositoro a nuestra PC:
```
git clone https://github.com/Ianmethyst/tp-tecno
```

Luego desde el directorio donde se clonó el repositorio, instalamos los paquetes de Node con
```
npm install
```

Para disparar el enterno de desarrollo, abrir una linea de comandos o terminal y ejecutar: 
```
gulp
```

Para procesar todos los archivos con las tareas de producción, utilizar:
```
gulp dist
```

### Licencia

El código en el repositorio está liberado bajo la [Licencia MIT](https://opensource.org/licenses/MIT).
