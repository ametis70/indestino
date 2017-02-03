// Clase para el menu del juego

public class Menu {
  private PImage background, boton, jugar;
  
  private Imagen indestino;
  private Imagen maiz1;
  private Imagen maiz2;
  private Imagen bacterias[];
  
  private Cortina cortina;  
  private int alpha;
  private boolean alphaDireccion;
  
  public Menu() {
    background =  loadImage("menu/background.png");    
    
    indestino = new Imagen("logo", 400, -250, 520, 0.25f, 1, 0);
    maiz1 = new Imagen("maiz1", 325, -300, 380, random(0.20f,0.30f), 0.8f, PApplet.radians(-20));
    maiz2 = new Imagen("maiz2", 525, -350, 380, random(0.20f,0.30f), 0.8f, PApplet.radians(20));
    
    bacterias = new Imagen[4];
    for(int i = 0; i < bacterias.length; i++) {
      bacterias[i] = new Imagen("bacterias/" + i, 300 + i * 100, -300, 250, random(0.30f,0.40f), 0.7f, PApplet.radians(random(-30, 30)));
    }
    
    boton = loadImage("menu/boton.png");
    jugar = loadImage("menu/jugar.png");

    
    alphaDireccion = false;
    alpha = 5;
    
    cortina = new Cortina(0);
  }
  
  public void keyPressed() {
  }
  
  public void update() {
    indestino.update();
    maiz1.update();
    maiz2.update();
    
    for(int i = 0; i < bacterias.length; i++) {
      bacterias[i].update();
    }
    
    if (alphaDireccion == true) {
      alpha += 5;
    } else {
      alpha -= 5;
    }
    
    if(alpha <= 0 || alpha >= 255) {
      alphaDireccion = !alphaDireccion;
    }
    
    if(cortina.alpha >= 255 && cortina.listo) {
      principal.cambiarEstado(Estados.GAME);
    }
    
    if( joystick != null )
    {
      if(joystick.getButton(0).pressed()) {
        cortina.activar("out");    
      }
    }
    
    if( joystick2 != null )
    {
      if(joystick2.getButton(0).pressed()) {
        cortina.activar("out");    
      }
    }
    
  }
  
  public void draw(){
//    background(0);
    imageMode(PConstants.CORNER);
    image(background, 0, 0, width, height);  
    
    maiz1.draw();
    maiz2.draw();
    indestino.draw();
    
    for(int i = 0; i < bacterias.length; i++) {
      bacterias[i].draw();
    }
    
    pushStyle();
    imageMode(PConstants.CENTER);
    tint(255, 255);
    image(boton, 1000, 360);
    tint(255, alpha);
    image(jugar, 1000, 360);
    popStyle();
    
    
    cortina.fadeOut();
    cortina.dibujar();
  }
  
  // Clase para las imagenes del menu que son afectadas por la gravedad
  
  class Imagen {
  
    PImage imagen;
    
    // Gravedad y fricción de la imagen 
    private PVector position, velocity, acceleration, gravity;
    private float mass, c, normal, frictionMag;
    
    private float rotacion;

    // Dimensiones
//    private float logowidth, logoheight;
    private float piso;
    
    
    public Imagen(String img, float x, float y, float piso, float friccion, float masa, float rotacion) {
      imagen =  loadImage("menu/" + img + ".png");

      // Dimensiones del logo
//      logowidth = 769;
//      logoheight = 395;
      
//      logowidth = ancho;
//       logoheight = alto;
      
      // Fricción y gravedad
//      c = 0.25f;
      c = friccion;
      normal = 1;
      frictionMag = c * normal;
//      mass = 1;
      mass =  masa;
      
      this.piso = piso;
      this.rotacion = rotacion;

      position = new PVector(x, y);
      velocity = new PVector(0, 0);
      acceleration = new PVector(0, 0);
      
    }
    
    public Imagen(String img, float x, float y, float piso) {
      this(img, x, y, piso, 0.25f, 1, 0);    
    }
    
    private void update() {
      
      PVector gravity = new PVector(0,(float)0.98*mass);
      PVector friction = velocity.copy();
      friction.mult(-1);
      friction.normalize();
        
      friction.mult(frictionMag);

      applyForce(gravity);
      applyForce(friction);
      velocity.add(acceleration);
      position.add(velocity);

      // Se reinicia la aceleración cada vez
      acceleration.mult(0);
      
      // Chequea si el logo tocó el piso(arbitrario)
      checkEdges(height - piso);
      
      
    }
    
    private void draw() {
      pushStyle();
      pushMatrix();
      
      translate(position.x, position.y);
      imageMode(PConstants.CENTER);
      
      rotate(rotacion);
      image(imagen, 0, 0);
      
      popMatrix();
      popStyle();
    }

    // Función para hacer rebotar la imagen
    private void checkEdges(float y) {
      if (position.y > y) {
        velocity.y *= -1;
        position.y = y;
      }
    }

    // Función para aplicar gravedad y fricción
    private void applyForce(PVector force) {
      PVector f = force.copy();
      f.div(mass);
      acceleration.add(f);
    }

  }
}