public class Cortina {
    // Datos
    int alpha;
    boolean oscureciendo, aclarando, listo;

    // Constructor
    Cortina(int alpha) {
      this.alpha = alpha; // Usar valores 0, si se empieza claro y 255 si se empieza oscuro
      if (alpha == 255)
        aclarando = true;
      else aclarando = false;
      oscureciendo = listo = false;
    }

    // Métodos
    void dibujar() {
    pushStyle();
      fill(0, alpha);
      rectMode(PConstants.CORNER);
      rect(0, 0, width, height);
      popStyle();
    }

    // Permitir un fadeIn o Out
    void activar(String tipo) {
      if ( listo)
        if (tipo == "in" && alpha >= 255)
          aclarando = true;
      if (tipo == "out" && alpha <= 0) 
        oscureciendo = true;

      listo = false;
    }

    void fadeIn() {
      // Se comienza a aclarar
      if (aclarando && alpha > 0) 
        alpha -= 5;

      // Cuando está clara, se devuelve el control al jugador para la etapa
      if (aclarando && alpha <= 0) { 
        aclarando = false;
        listo = true;
      }
    }

    void fadeOut() {
      // Se comienza a oscurecer
      if (oscureciendo && alpha < 255) 
        alpha += 5;

      // Cuando se termina de oscurecer, se cambia de etapa
      if (oscureciendo && alpha >= 255) {
        oscureciendo = false;
        listo = true;
      }
    }
  }