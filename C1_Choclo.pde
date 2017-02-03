// Clase para el personaje que controla el jugador

public class Choclo 
{
  private PVector position;
  private PVector velocity;
  private PVector analog;
  
  private PImage choclo;

  public PVector getPosition()
  {
    return position;
  }
  
  private float xinicial, xconstrain;
  private float yinicial, yconstrain;
  
  boolean jugador1;
  
  private PVector oldPosition;
  
  public PVector getOldPosition()
  {
    return oldPosition;
  }
  
  public Choclo()
  {
    this(0,0, true);
  }
  
  public Choclo(float x, float y, boolean jugador1)
  {
    position = new PVector(x, y);
    oldPosition = new PVector(x, y);
    velocity = new PVector();
    analog =  new PVector(0, 0);

      
    xinicial = x;
    yinicial = y;
    xconstrain = 200;
    yconstrain = 200;
    
    this.jugador1 = jugador1;
    
    if( jugador1)
      choclo = loadImage("amarillo.png");
    else
      choclo = loadImage("naranja.png");

    
    
  }
    
  public float getX() {
    return position.x;
  }

  public void setX(float x) {
    position.x = x;
  }
  
  public float getOldX()
  {
    return oldPosition.x;
  }
  
  public float getOldY()
  {
    return oldPosition.y;
  }

  public float getY() {
    return position.y;
  }

  public void setY(float y) 
  {
    position.y = y;
  }

  public void update(ControlDevice control)
  {
    if( control == null )
      return;
    
    oldPosition.x = position.x;
    oldPosition.y = position.y;
    
    
    analog.set( control.getSlider(1).getValue(), control.getSlider(0).getValue());
    velocity.add( analog );
    position.add( velocity.mult(0.8f) );
    
    
    position.x = Math.min(Math.max(position.x, xinicial - xconstrain), xinicial + xconstrain);
    position.y = Math.min(Math.max(position.y, yinicial - yconstrain), yinicial + yconstrain);  
  }
  
  public void toOldPosition()
  {
    position.x = oldPosition.x;
    position.y = oldPosition.y;
  }
  
  public void restarVelocidad( float x )
  {
    //velocity.x = velocity.x * 0.7;
    //velocity.y = velocity.y * 0.7;
    velocity.mult(x);
  }
  
  public void draw(ControlDevice control)
  {  
    if( control == null )
      return;
    
    pushMatrix();
    pushStyle();
    imageMode(PConstants.CENTER);
    translate(position.x, position.y);
    choclo.resize(40, 0);
    rotate(control.getSlider(1).getValue());
    image(choclo, 0, 0);
    popStyle();
    popMatrix();
  }
}