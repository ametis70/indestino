public class Bacteria 
{
  private PImage image1;
  private PImage image2;
  private int capa;
  private float x;
  private float y;
  private float rotacion;
  private float scale;
  
  private boolean imagen;


  public Bacteria(PImage image1, PImage image2, int capa, float x, float y, float rotacion, float scale) 
  {
    super();
    this.image1 = image1;
    this.image2 = image2;
    this.capa = capa;
    this.x = x;
    this.y = y;
    this.rotacion = rotacion;
    this.scale = scale;
  }
  
  public void update()
  {
    if( frameCount % (int)(30 * scale) == 0 )
    {
      imagen = !imagen;
    }
  }
  
  /*public void draw()
  {
    pushStyle();
    imageMode(PConstants.CENTER);
    
    pushMatrix();
    translate(mouseX, mouseY);
    scale(scaleBac);
    rotate(rotacionBac);
    image(bacteria1, 0, 0);
    popMatrix();
    
    popStyle();*
  }*/


  public PImage getImage() {
    return image1;
  }


  public int getCapa() {
    return capa;
  }


  public float getX() {
    return x;
  }


  public float getY() {
    return y;
  }


  public float getRotacion() {
    return rotacion;
  }


  public float getScale() {
    return scale;
  }
  
  public void draw( PGraphics pg, float x, float y )
  {
    
    pg.pushStyle();
    pg.imageMode(PConstants.CENTER);
    
    pg.pushMatrix();
    pg.translate(x, y);
    
    pg.scale(scale);
    pg.rotate(rotacion);
    pg.image(imagen ? image1 : image2, 0, 0);
    
    pg.fill(0);
    pg.text(capa, 0, 0);
    pg.popMatrix();  
    pg.popStyle();
  }

}