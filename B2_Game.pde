// Clase para la carrera/nivel donde se jugará

public class Game 
{
  private Choclo choclo1;
  private Choclo choclo2;
  
  private boolean terminoJuego;
  private boolean ganoJugador1;
  
  private Cortina cortina;
  
  private String estado;
  private int cuentaRegresiva;
  
  public Choclo getChoclo1()
  {
    return choclo1;
  }
  
  public Choclo getChoclo2()
  {
    return choclo2;
  }
  
  Map map;
  
  public Game()
  {
    map = new Map();
    
    choclo1 = new Choclo(320, 360, true);
    choclo2 = new Choclo(960, 360, false);
    
    cortina = new Cortina(255);
  }
  
  public void update()
  {
    choclo1.update(joystick);
    choclo2.update(joystick2);
    
    if(cortina.alpha == 255 && cortina.listo) {
      terminoJuego = true;
      ganoJugador1 = true;
      }
      
      if(map.getActual1() == 22) {
        cortina.activar("out");
        terminoJuego = true;
        ganoJugador1 = true;
      } else if(map.getActual2() == 22) {
        cortina.activar("out");
        terminoJuego = true;
        ganoJugador1 = false;
      }
      
      if (terminoJuego) {
        cancionJuego.pause();
        cancionJuego.rewind();

        if(ganoJugador1) {
          principal.gameover = new Gameover(true);
        } else {
          principal.gameover = new Gameover(false);
        }

        principal.cambiarEstado(Estados.GAMEOVER);
      }

      if(cortina.aclarando) {
      cortina.fadeIn();
      }
      
      if(cortina.oscureciendo) {
      cortina.fadeOut();
      }
    
    map.update();
  }
  
  public void keyPressed()
  {
    map.keyPressed();
  }
  
  
  public void draw()
  {
    map.draw();
    
    if (cancionJuego.isPlaying() == false) {
      cancionJuego.loop();
    }
    
    choclo1.draw(joystick);
    choclo2.draw(joystick2);
            
    cortina.dibujar();
      
  }
}