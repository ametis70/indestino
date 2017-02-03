// enum para los estados en los que el juego puede estar.

public static enum Estados
  {
    MENU,
    GAME,
    GAMEOVER;
  }

// Clase que anida las instancias de las demás. Controla que pantalla se dibuja en cada momento.

public class Principal
{
    
  private Estados estado;
  private Estados cambiarEstado;
  
  Game game;
  Menu menu;
  public Gameover gameover;
  
  public Game getGame()
  {
    return game;
  }
  
  public void cambiarEstado( Estados estado )
  {
    cambiarEstado = estado;
  }
  
  public Principal() 
  {  
    game = new Game();
    menu = new Menu();
    
    
    cambiarEstado = estado = Estados.MENU;
  }
  
  public void update()
  {
    if( estado != cambiarEstado )
    {
      estado = cambiarEstado;
    }
    
    switch(estado) 
    {
    case GAMEOVER:
      gameover.update();
      break;
    case MENU:
      menu.update();
      break;
    case GAME:
      game.update();
      break;
    default:
      break; 
    }
    
  }
  
  public void keyPressed()
  {
    switch(estado) 
    {
    case GAMEOVER:
      gameover.keyPressed();
      break;
    case MENU:
      menu.keyPressed();
      break;
    case GAME:
      game.keyPressed();
      break;
    default:
      break; 
    }
  }
  
  
  public void draw()
  {
    switch(estado) 
    {
    case GAMEOVER:
      gameover.draw();
      break;
    case MENU:
      menu.draw();
      break;
    case GAME:
      game.draw();
      break;
    default:
      break; 
    }
  }
}