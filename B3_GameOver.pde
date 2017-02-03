// Clase para la pantalla de game over

public class Gameover {
  
  private PImage intestino1, intestino2, maiz, background, placa;
  private boolean expulsoMaiz;
  private boolean ganoJugador1;
  private boolean mostrarPlaca;
  private int tiempo;
  
  private PVector posicionMaiz;
  private PVector velocidadMaiz;
  private PVector aceleracionMaiz;
  
  private int alpha;
  
  private Cortina cortina;
  
  
  public Gameover(boolean ganoJugador1) {
    this.ganoJugador1 = ganoJugador1;
    
    if (ganoJugador1) {
      maiz = loadImage("gameover/maiz1.png");
      placa = loadImage("gameover/placajugador1.png");
    } else {
      maiz = loadImage("gameover/maiz2.png");
      placa = loadImage("gameover/placajugador2.png");
    }
    
    background  = loadImage("gameover/background.png");
    
    intestino1 = loadImage("gameover/intestino1.png");
    intestino2 = loadImage("gameover/intestino2.png");
    
    posicionMaiz = new PVector(712, 416);
    aceleracionMaiz = new PVector(0, 0.2f);
    velocidadMaiz = new PVector(0, 0);

    
    tiempo = frameCount;
    expulsoMaiz = false;
    mostrarPlaca = false;
    
    alpha = 0;
    
    cortina = new Cortina(255);
  }
  
  public void keyPressed() {
  }
  
  public void update() {
    if(frameCount - tiempo >  60 && expulsoMaiz == false)  {
      expulsoMaiz = true;
      posicionMaiz.add(0f, 30f);
    }
    
    if (expulsoMaiz == true) {
      velocidadMaiz.add(aceleracionMaiz);
      posicionMaiz.add(velocidadMaiz);
      if(posicionMaiz.y > height + 300) {
        mostrarPlaca = true;        
      }
    }
    
    if(mostrarPlaca && alpha < 255) {
      alpha += 2;
    }

    if (cortina.listo && cortina.alpha >= 255) {
      principal = new Principal();  
    }  
    
    if( joystick != null && alpha >= 255 )
    {
      if(joystick.getButton(0).pressed()) {
        cortina.activar("out");    
      }
      if(joystick2.getButton(0).pressed()) {
        cortina.activar("out");    
      }
    }
  }

  public void draw() {
    imageMode(PConstants.CORNER);
    image(background, 0, 0);
    
    imageMode(PConstants.CENTER);
    image(maiz, posicionMaiz.x, posicionMaiz.y, 98, 131);

    imageMode(PConstants.CORNER);
    if(expulsoMaiz == false) {
      image(intestino1, 0, 0);
    } else {
      image(intestino2, 0, 0);
    }

    if(mostrarPlaca) {
      pushStyle();
      imageMode(PConstants.CENTER);
      tint(255, alpha);
      image(placa, width / 2, height / 2);  
      popStyle();
    }
    
    if(cortina.aclarando) {
    cortina.fadeIn();
    }
    
    if(cortina.oscureciendo) {
    cortina.fadeOut();
    }
    
    cortina.dibujar();
  }
  
}