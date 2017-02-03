import org.gamecontrolplus.ControlDevice;
import org.gamecontrolplus.ControlIO;

import ddf.minim.AudioPlayer;
import ddf.minim.Minim;

Principal principal;

public Principal getPrincipal()
{
  return principal;
}

// Configuración inicial
public void setup()
{
  size(1280, 720, P2D); // Se utiliza P2D para aprovechar la aceleración por hardware
  //fullScreen(P2D);    // Esta linea lo ejecuta en fullscreen, pero la resolución del escritorio debe ser 1280x720

  smooth();
  principal = new Principal();
  setupGameControlPlus();
  setupMinim();
}

public void keyPressed()
{
  principal.keyPressed();
}


public void draw()
{
  principal.update();

  background(255);
  principal.draw();



  //debuggpublic void debugging() {
  pushStyle();
  fill(0);
  text(frameRate, 50, 50);
  text("(" + mouseX + "," + mouseY, mouseX, mouseY);
  point(mouseX, mouseY);    
  popStyle();
}