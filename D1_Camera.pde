// Clase para la cámara

public class Camera 
{
  private float x;
  private float y;
  
  
  private float offsetX;
  private float offsetY;
  
  private PGraphics pg;
  
  private int capa = 1;
  
  public int getCapa()
  {
    return capa;
  }
  
  public void setCapa(int capa)
  {
    this.capa = capa;
  }
  
  public Camera()
  {
    this(0,0);
  }
  
  public Camera(float x, float y)
  {
    this.x = x;
    this.y = y;
    
    pg = createGraphics(640, 720, PConstants.P2D );
  }
  
  public void setX( float x )
  {
    this.x = x;
  }
  
  public void setY( float y )
  {
    this.y = y;
  }
  
  public float getX()
  {
    return x;
  }
  
  public float getY()
  {
    return y;
  }

  public float getOffsetX() {
    return offsetX;
  }

  public void setOffsetX(float offsetX) {
    this.offsetX = offsetX;
  }

  public float getOffsetY() {
    return offsetY;
  }

  public void setOffsetY(float offsetY) {
    this.offsetY = offsetY;
  }
  
  public void clear()
  {
    //pg.background(255);
    pg.clear();
  }
  
  public void beginDraw()
  {
    pg.beginDraw();
  }
  
  public void endDraw()
  {
    pg.endDraw();
  }
  
  public PGraphics getPg()
  {
    return pg;
  }
  
  
  void draw( Cell cell )
  {
    if (cell.getX() <= (offsetX + 640) && (cell.getX() + 600) >= offsetX &&
       cell.getY() <= (offsetY + 720 ) && (cell.getY() + 600 ) >= offsetY)
    {
      pg.image(cell.getImage(),  cell.getX() - offsetX, cell.getY() - offsetY );
      
      //if( cell.getBacterias() 
    }
  }
  
  public void draw( PGraphics image, float x, float y )
  {
    pg.image(image, x, y );
  }
  
  public void draw()
  {
    image(pg, x, y);
  }

}