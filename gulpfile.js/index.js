var requireDir = require('require-dir');

// Busca recursivamente las tareas en ./tasks

requireDir('./tasks', {recurse: true});
