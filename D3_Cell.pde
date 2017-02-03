// Clase para el ArrayList de bacterias

public class Cell 
{
  private float x;
  private float y;
  
  //private boolean downFlip;
  //private boolean leftFlip;
  
  private List <Bacteria> bacterias;
  
  private PGraphics pg;
  
  private int capa;
  
  public int getCapa()
  {
    return capa;
  }
  
  public void setCapa(int capa)
  {
    this.capa = capa;
  }
  
  public Cell( int capa, Bloque bloque, float angle, boolean downFlip, boolean leftFlip, float x, float y )
  {
    pg = createGraphics(600, 600, PConstants.P2D);
    
    bacterias = new ArrayList<Bacteria>();
    
    //System.out.println(pg);
    this.capa = capa;
    //pg.alpha(0);
    //pg.rotate(angle);
    
    this.x = x;
    this.y = y;
    
    pg.beginDraw();
    pg.translate(pg.width / 2, pg.height / 2);
    pg.scale(leftFlip ? -1.0f : 1.0f, downFlip ? -1.0f : 1.0f);
    pg.imageMode(PConstants.CENTER);
    pg.rotate(angle);
    pg.image(bloque.getImage(), 0, 0);
    pg.endDraw();
  }
  
  public float getX()
  {
    return x;
  }
  
  public float getY()
  {
    return y;
  }
  
  public PGraphics getImage()
  {
    return pg;
  }
  
  public void addBacteria( Bacteria bacteria )
  {
    bacterias.add(bacteria);
  }
  
  public List<Bacteria> getBacterias()
  {
    return bacterias;
  }
  
  public int getPixel(float x, float y)
  {
    return pg.get((int)x, (int)y);
  }
  
  public void draw(float x, float y)
  {
    image(pg, x, y);
  }
  
  public void draw()
  {
    image(pg, x, y);
  }
  
  public void draw( Camera camera )
  {
    if (x <= (camera.getOffsetX() + 640) && (x + 600) >= camera.getOffsetX() &&
           y <= (camera.getOffsetY() + 720 ) && (y + 600 ) >= camera.getOffsetY())
    {
      //camera.draw(pg, x - camera.getOffsetX(), y - camera.getOffsetY() );
      camera.getPg().image(pg, x - camera.getOffsetX(), y - camera.getOffsetY() );
      
      /*for( Bacteria bacteria : bacterias )
      {
        bacteria.draw(camera.getPg(), bacteria.getX() - camera.getOffsetX(), bacteria.getY() - camera.getOffsetY());
      }*/
    }
  }
  
  public void drawBacterias( Camera camera )
  {
    if (x <= (camera.getOffsetX() + 640) && (x + 600) >= camera.getOffsetX() &&
           y <= (camera.getOffsetY() + 720 ) && (y + 600 ) >= camera.getOffsetY())
    {
      
      for( Bacteria bacteria : bacterias )
      {
        bacteria.draw(camera.getPg(), bacteria.getX() - camera.getOffsetX(), bacteria.getY() - camera.getOffsetY());
      }
      //camera.draw(pg, x - camera.getOffsetX(), y - camera.getOffsetY() );
    }
  }

}