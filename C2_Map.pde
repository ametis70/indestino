// Clase para el mapa

public class Map
{  
  final long cellFormat [][] =
    {
    { 6, 1, 7       }, 
    { 6, 4, 2684354566L }, 
    { 6, 7, 5       }, 
    { 4, 10, 1610612737L }, 
    { 1, 10, 3221225475L }, 

    { 4, 8, 1610612738L }, 
    { 7, 10, 3221225473L }, 
    { 7, 13, 1610612737L }, 
    { 4, 14, 2684354565L }, 
    { 1, 12, 1       }, 
    { 1, 9, 2684354561L }, 


    // Capa 4
    { 4, 8, 1610612741L }, 
    { 7, 10, 2684354562L }, 


    // Capa 3
    {10, 8, 3       }, 
    { 7, 7, 3221225478L }, 
    { 4, 6, 1           }, 
    { 2, 3, 1610612739L }, 
    { 1, 6, 2684354566L }, 
    { 2, 9, 1610612740L }, 
    { 5, 9, 3221225473L }, 
    { 7, 12, 2       }, 
    { 5, 15, 3221225474L }, 

    // Final
    { 6, 18, 7       }, 
    { 6, 21, 7       }
  };


  final float bacterias [][] = 
    {
    {0, 1435.0f, 909.0f, 2.0999994f, 0.22000001f}, 
    {0, 1350.2517f, 1234.6763f, 3.6999981f, 0.24000002f}, 
    {0, 1546.365f, 1363.414f, 1.5000002f, 0.17999999f}, 
    {1, 1506.2634f, 1525.4904f, 0.9000007f, 0.19f}, 
    {1, 1729.4563f, 1713.9574f, 1.5000002f, 0.23000002f}, 
    {1, 1386.0604f, 1795.0581f, 2.2999995f, 0.21000001f}, 


    {2, 1251.3143f, 2073.7651f, 1.4500003f, 0.12999997f}, 
    {2, 1351.3143f, 2079.7651f, 1.4500003f, 0.12999997f}, 
    {2, 1044.0634f, 2153.7756f, 5.9831834f, 0.23000002f}, 

    //
    { 2, 1179.2397f, 2428.3833f, 1.3499998f, 0.34999993f}, 

    { 2, 890.9091f, 2380.1108f, 2.1499991f, 0.17999999f}, 

    { 2, 841.9091f, 2538.1108f, 5.733183f, 0.17999999f}, 

    { 3, 287.92f, 2323.3386f, 0.9999999f, 0.26000002f}, 

    { 3, 562.92004f, 2231.3386f, 4.8331804f, 0.26000002f}, 

    { 3, 594.92004f, 2358.3386f, 4.8331804f, 0.12999997f}, 

    { 4, 838.8127f, 2136.7964f, 5.5831833f, 0.15999998f}, 

    { 4, 896.3292f, 1900.7283f, 4.5331793f, 0.19f}, 

    { 4, 1069.2563f, 1702.8732f, 3.483178f, 0.25000003f}, 

    { 4, 1288.9878f, 2094.4614f, 3.483178f, 0.26000002f}, 

    { 4, 1370.258f, 2137.6685f, 3.483178f, 0.13999997f}, 

    { 5, 1444.4238f, 2048.1719f, 3.483178f, 0.13999997f}, 

    { 5, 1535.4238f, 2150.1719f, 3.483178f, 0.13999997f}, 

    { 5, 1816.299f, 2135.5322f, 0.4000005f, 0.21000001f}, 

    { 5, 1729.299f, 2270.5322f, 3.1831772f, 0.16999999f}, 

    { 5, 1897.8003f, 2568.0608f, 3.1831772f, 0.12999997f}, 

    { 6, 1846.9865f, 2709.9248f, 4.483178f, 0.10999997f}, 

    { 6, 1953.9865f, 2712.9248f, 4.483178f, 0.10999997f}, 

    { 6, 1732.254f, 2895.221f, 4.683179f, 0.16999999f}, 

    { 6, 1564.7638f, 2826.426f, 5.1331806f, 0.22000001f}, 

    { 6, 1430.6504f, 3044.8235f, 5.6831827f, 0.12999997f}, 

    { 6, 1524.6504f, 3115.8235f, 5.6831827f, 0.12999997f}, 

    { 6, 1524.6504f, 3115.8235f, 5.6831827f, 0.12999997f}, 

    { 7, 1196.6587f, 3292.7368f, 2.1999989f, 0.13999997f}, 

    { 7, 977.6586f, 3206.7368f, 1.0999999f, 0.22000001f}, 

    { 7, 828.3721f, 2961.763f, 1.7999992f, 0.10999997f}, 

    { 7, 900.3721f, 2880.763f, 1.7999992f, 0.10999997f}, 

    { 8, 745.3721f, 2848.763f, 1.7999992f, 0.10999997f}, 

    { 8, 453.5558f, 2886.17f, 3.4999976f, 0.25000003f}, 

    { 8, 640.5558f, 2657.3408f, 2.7499983f, 0.15999998f}, 

    { 8, 335.8557f, 2437.8513f, 5.933184f, 0.21000001f}, 

    { 9, 275.9874f, 2128.778f, 4.7331796f, 0.16999999f}, 

    { 9, 636.9874f, 2162.778f, 4.88318f, 0.23000002f}, 

    { 9, 663.60266f, 1905.5977f, 5.4331822f, 0.19f}, 

    { 9, 766.60266f, 1960.5977f, 5.4331822f, 0.12999997f}, 

    { 10, 831.60266f, 1841.5977f, 5.4331822f, 0.12999997f}, 

    { 10, 1019.6562f, 1702.2162f, 5.2831817f, 0.17999999f}, 

    { 10, 1240.4442f, 1823.3318f, 4.033177f, 0.17999999f}, 

    { 10, 1296.4442f, 2091.3318f, 3.4831774f, 0.22000001f}, 

    { 11, 1424.7627f, 2153.5737f, 3.4831774f, 0.11999997f}, 

    { 11, 1519.0095f, 2086.8066f, 3.4831774f, 0.11999997f}, 

    { 11, 1743.3555f, 2310.3076f, 3.7331772f, 0.19f}, 

    { 11, 1727.3555f, 2494.3076f, 3.7331772f, 0.26000002f}, 

    { 11, 1888.7256f, 2105.9448f, 1.9331789f, 0.15999998f}, 

    { 12, 2290.788f, 1874.5078f, 2.933178f, 0.15999998f}, 

    { 12, 2470.5684f, 1789.242f, 3.4331775f, 0.28f}, 

    { 12, 2043.8993f, 1739.7034f, 2.783178f, 0.19f}, 

    { 12, 2107.8994f, 1640.7034f, 2.783178f, 0.079999976f}, 

    { 13, 1747.6929f, 1483.0945f, 3.5331774f, 0.17999999f}, 

    { 13, 1451.6991f, 1693.7622f, 3.5331774f, 0.2f}, 

    { 14, 1057.2563f, 1682.6741f, 3.7831771f, 0.24000002f}, 

    { 14, 1247.5079f, 1446.5957f, 3.7831771f, 0.24000002f}, 

    { 14, 946.4976f, 1222.5165f, 0.20000018f, 0.11999997f}, 

    { 15, 845.4976f, 1173.5165f, 0.20000018f, 0.11999997f}, 

    { 15, 601.54395f, 728.7412f, 0.20000018f, 0.26000002f}, 

    { 15, 537.82056f, 1165.728f, 0.8000003f, 0.15999998f}, 

    { 16, 393.1469f, 1441.6565f, 0.8000003f, 0.13999997f}, 

    { 16, 548.3889f, 1739.5043f, 0.8000003f, 0.13999997f}, 

    { 16, 443.24768f, 1773.1066f, 0.8000003f, 0.09999997f}, 

    { 17, 532.39764f, 2127.8662f, 0.8000003f, 0.17999999f}, 

    { 17, 757.39764f, 2081.8662f, 0.8000003f, 0.17999999f}, 

    { 17, 947.42346f, 1916.084f, 0.8000003f, 0.17999999f}, 

    { 18, 1030.4792f, 1849.9095f, 0.8000003f, 0.11999997f}, 

    { 18, 1147.4792f, 1948.9095f, 4.683179f, 0.11999997f}, 

    { 18, 1376.4792f, 1924.9095f, 3.333177f, 0.11999997f}, 

    { 18, 1217.4792f, 2029.9095f, 3.333177f, 0.11999997f}, 

    { 18, 1198.4792f, 2195.9097f, 4.93318f, 0.19f}, 

    { 18, 1382.4335f, 2307.1467f, 4.93318f, 0.049999975f}, 

    { 18, 1467.4335f, 2385.15f, 4.93318f, 0.049999975f}, 

    { 18, 1525.4335f, 2385.15f, 4.93318f, 0.049999975f}, 


    { 19, 1519.2046f, 2513.5493f, 3.8831766f, 0.21000001f}, 

    { 19, 1723.2046f, 2560.5493f, 4.7831793f, 0.17999999f}, 

    { 19, 1868.7947f, 2638.9844f, 4.7831793f, 0.14999998f}, 

    { 19, 1506.4458f, 2878.944f, 5.0831804f, 0.25000003f}, 

    { 19, 1484.4458f, 2959.944f, 5.0831804f, 0.13999997f}, 

    { 20, 1356.2676f, 3306.9807f, 5.0831804f, 0.2f}, 

    { 20, 1108.2676f, 3328.9807f, 5.3831816f, 0.26000002f}, 

    { 20, 1290.706f, 3496.0312f, 5.5831823f, 0.24000002f}, 

    { 20, 1444.4978f, 3560.634f, 3.6831768f, 0.19f}, 

    { 20, 1512.4978f, 3498.634f, 3.6831768f, 0.09999997f}
  };

  private List<Bloque> bloqueList;

  private List<Cell> cellsList;

  Camera camera1;
  Camera camera2;

  private int actual1;

  public int getActual1() {
    return actual1;
  }

  public int getActual2() {
    return actual2;
  }

  private int actual2;

  private PImage imagActual1;
  private PImage imagActual2;

  private PImage imageBacteria1;
  private PImage imageBacteria2;
  private float rotacionBac;
  private float scaleBac = 0.2f;

  public Camera getCamera1()
  {
    return camera1;
  }

  public Camera getCamera2()
  {
    return camera2;
  }

  private PImage fondo;
  private PImage marcador;

  public Map()
  {
    bloqueList = new ArrayList<Bloque>();
    cellsList = new ArrayList<Cell>();

    fondo = loadImage("map/fondo.png");
    marcador = loadImage("map/marcador.png");

    imagActual1 = loadImage("map/player1.png");
    imagActual2 = loadImage("map/player2.png");

    imageBacteria1 = loadImage("map/objetos/bacteria1.png");
    imageBacteria2 = loadImage("map/objetos/bacteria2.png");

    camera1 = new Camera();
    camera2 = new Camera(640, 0);

    camera1.setOffsetX(1180);
    camera1.setOffsetY(200);

    camera2.setOffsetX(1180);
    camera2.setOffsetY(200);

    try
    {
      File file = new File("C:\\indestino\\data\\map\\intestinos\\");  
      File[] files = file.listFiles();

      for (int i = 0; i < files.length; i++)  
      {  
        if ( !files[i].isFile() ) continue;

        bloqueList.add( new Bloque("map/intestinos/" + files[i].getName()) );

        System.out.println("Adding: " + files[i].getName() );
      }
    }
    
    catch(Exception ex) {
    }


    buildMap();
  }

  public void buildMap()
  {
    for ( int i = 0; i < cellFormat.length; i++ )
    {
      long tileId = cellFormat[i][2];

      float rotation = 0;

      if ( tileId > 3221225472L )
      { // if the tile was rotated 180º
        tileId -= 3221225472L;
        rotation = PConstants.PI;
      } else if ( tileId > 2684354560L )
      {
        tileId -= 2684354560L;
        rotation = PConstants.HALF_PI;
      } else if ( tileId > 1610612736L)
      {
        tileId -= 1610612736L;
        rotation = -PConstants.HALF_PI;
      }

      Bloque bloq = bloqueList.get((int) tileId-1);
      cellsList.add( new Cell( i, bloq, rotation, false, false, 200 * cellFormat[i][0], 200 * cellFormat[i][1]) );
    }


    for ( int i = 0; i < bacterias.length; i++ )
    {
      int capa = (int)bacterias[i][0];

      cellsList.get(capa+1).addBacteria( new Bacteria(imageBacteria1, imageBacteria2, capa+1, bacterias[i][1], bacterias[i][2], bacterias[i][3], bacterias[i][4]));
    }
  }

  public void keyPressed()
  {
    if ( keyCode == PConstants.ENTER )
    {
      /*System.out.println("Bacteria:");
       System.out.println("x: " +  (camera1.getOffsetX() + mouseX) );
       System.out.println("y: " +  (camera1.getOffsetY() + mouseY) );
       System.out.println("Rotacion: " + rotacionBac );
       System.out.println("Scale: " + scaleBac );
       System.out.println("Capa: " + actual1);*/
      System.out.println("{ " + actual1 + ", " + (camera1.getOffsetX() + mouseX) + "f, " + (camera1.getOffsetY() + mouseY)
        + "f, " + rotacionBac + "f, " + scaleBac + "f}," );
      System.out.println();
    }

    if ( keyCode == PConstants.UP )
    {
      scaleBac += 0.01;
    }

    if ( keyCode == PConstants.DOWN )
    {
      scaleBac -= 0.01;
    }

    if ( keyCode == PConstants.LEFT )
    {
      rotacionBac -= 0.05;
      if ( rotacionBac < 0 )
      {
        rotacionBac = PConstants.TWO_PI - rotacionBac;
      }
    }
    if ( keyCode == PConstants.RIGHT )
    {
      rotacionBac += 0.05;
      if ( rotacionBac > PConstants.TWO_PI )
      {
        rotacionBac = rotacionBac - PConstants.TWO_PI;
      }
    }
  }


  public void update()
  {
    for ( Cell cell : cellsList )
    {
      for ( Bacteria bacteria : cell.getBacterias() )
      {
        bacteria.update();
      }
    }

    if ( joystick != null )
    {
      float nX = camera1.getOffsetX() + joystick.getSlider(3).getValue() * 5;
      float nY = camera1.getOffsetY() + joystick.getSlider(2).getValue() * 5;

      float chocloX = getPrincipal().getGame().getChoclo1().getX();
      float chocloY = getPrincipal().getGame().getChoclo1().getY();

      for ( Cell cell : cellsList )
      {        
        float diffX = nX - cell.getX() + chocloX;
        float diffY = nY - cell.getY() + chocloY;

        if ( diffX >= 0 && diffX < 600 && diffY >= 0 && diffY < 600 )
        {
          if ( cell.getCapa() == actual1+1 )
          {
            actual1++;
            System.out.println("Nueva Capa Choclo1: " + actual1);
          } else if ( cell.getCapa() == actual1-1)
          {
            /*actual1--;
             if( actual1 < 0 )
             {
             actual1 = 0;
             
             getPrincipal().getGame().getChoclo1().toOldPosition();
             
             nX = camera1.getOffsetX();
             nY = camera1.getOffsetY();
             }*/
            //System.out.println("Vieja Capa " + actual1);
          } else if ( cell.getCapa() != actual1 )
          {
            continue;
          }


          int colorcito = cell.getPixel(diffX, diffY);
          //if( cell.getPixel(diffX, diffY) == color(0) )

          //if( )

          //if( color == color(208, 123, 128) )
          if ( colorcito == color(209, 123, 129) )
          {
            getPrincipal().getGame().getChoclo1().toOldPosition();

            nX = camera1.getOffsetX();
            nY = camera1.getOffsetY();
            break;
          }

          for ( Bacteria bacteria : cell.getBacterias() )
          {
            //if( PApplet.dist(nX + chocloX, nY + chocloY, bacteria.getX(), bacteria.getY() ) <= (image) )
            //bacteria.getX(); /* bacteria.getImage().width * bacteria.getScale();*/

            if ( Math.abs(nX + chocloX - bacteria.getX()) < (cell.getImage().width * bacteria.getScale() * 0.3) )
            {
              if ( Math.abs(nY + chocloY - bacteria.getY()) < (cell.getImage().height * bacteria.getScale() * 0.3) )
              {
                getPrincipal().getGame().getChoclo1().restarVelocidad(0.5f);
                //getPrincipal().getGame().getChoclo2().restarVelocidad(bacteria.getScale());

                nX = camera1.getOffsetX() + joystick.getSlider(3).getValue() * 2.5f;
                nY = camera1.getOffsetY() + joystick.getSlider(2).getValue() * 2.5f;
              }
            }
          }
        }
      }

      camera1.setOffsetX(nX);
      camera1.setOffsetY(nY);
    }

    if ( joystick2 != null )
    {
      float nX = camera2.getOffsetX() + joystick2.getSlider(3).getValue() * 5;
      float nY = camera2.getOffsetY() + joystick2.getSlider(2).getValue() * 5;

      float chocloX = getPrincipal().getGame().getChoclo2().getX() - 640;
      float chocloY = getPrincipal().getGame().getChoclo2().getY();

      for ( Cell cell : cellsList )
      {    
        float diffX = nX - cell.getX() + chocloX;
        float diffY = nY - cell.getY() + chocloY;

        if ( diffX >= 0 && diffX < 600 && diffY >= 0 && diffY < 600 )
        {
          if ( cell.getCapa() == actual2+1 )
          {
            actual2++;
            System.out.println("Nueva Capa Choclo2: " + actual2);
          } else if ( cell.getCapa() == actual2-1)
          {
          } else if ( cell.getCapa() != actual2 )
          {
            continue;
          }


          int colorcito = cell.getPixel(diffX, diffY);
          //if( cell.getPixel(diffX, diffY) == color(0) )

          //if( )

          //if( color == color(208, 123, 128) )
          if ( colorcito == color(209, 123, 129) )
          {
            getPrincipal().getGame().getChoclo2().toOldPosition();

            nX = camera2.getOffsetX();
            nY = camera2.getOffsetY();
            break;
          }

          for ( Bacteria bacteria : cell.getBacterias() )
          {
            //if( PApplet.dist(nX + chocloX, nY + chocloY, bacteria.getX(), bacteria.getY() ) <= (image) )
            //bacteria.getX(); /* bacteria.getImage().width * bacteria.getScale();*/

            if ( Math.abs(nX + chocloX - bacteria.getX()) < (cell.getImage().width * bacteria.getScale() * 0.3) )
            {
              if ( Math.abs(nY + chocloY - bacteria.getY()) < (cell.getImage().height * bacteria.getScale() * 0.3) )
              {
                getPrincipal().getGame().getChoclo2().restarVelocidad(0.5f);
                //getPrincipal().getGame().getChoclo2().restarVelocidad(bacteria.getScale());

                nX = camera2.getOffsetX() + joystick2.getSlider(3).getValue() * 2.5f;
                nY = camera2.getOffsetY() + joystick2.getSlider(2).getValue() * 2.5f;
              }
            }
          }
        }
      }

      camera2.setOffsetX(nX);
      camera2.setOffsetY(nY);
    }
  }

  public void draw()
  {
    image(fondo, 0, 0);

    camera1.beginDraw();
    camera1.clear();

    for ( int i = (actual1 - 2); i >= 0 && i < cellsList.size(); i-- )
    {
      //camera1.draw(cellsList.get(i));
      cellsList.get(i).draw(camera1);

      //cellsList.get(i-1).drawBacterias(camera1);
      cellsList.get(i).drawBacterias(camera1);
    }

    for ( int i = cellsList.size()-1; (actual1 + 1) < i; i-- )
    {
      //camera1.draw(cellsList.get(i));
      cellsList.get(i).draw(camera1);

      //cellsList.get(i-1).drawBacterias(camera1);
      cellsList.get(i).drawBacterias(camera1);
    }

    if ( actual1 != 0 )
    {
      //camera1.draw(cellsList.get(actual1 - 1));
      cellsList.get(actual1 - 1).draw(camera1);
      if ( actual1 - 1 > 0 ) cellsList.get(actual1 - 2).drawBacterias(camera1);
    }

    if ( actual1+1 < cellsList.size() )
    {
      //camera1.draw(cellsList.get(actual1));
      cellsList.get(actual1).draw(camera1);
      if ( actual1 != 0 ) cellsList.get(actual1-1).drawBacterias(camera1);
      //camera1.draw(cellsList.get(actual1+1));
      cellsList.get(actual1+1).draw(camera1);
      cellsList.get(actual1).drawBacterias(camera1);
      cellsList.get(actual1+1).drawBacterias(camera1);
    } else if ( actual1 < cellsList.size() )
    {
      //camera1.draw(cellsList.get(cellsList.size() -1));
      //cellsList.get(cellsList.size() -1).draw(camera1);
      cellsList.get(actual1).draw(camera1);
      cellsList.get(actual1-1).drawBacterias(camera1);
      cellsList.get(actual1).drawBacterias(camera1);
    }

    camera1.endDraw();

    camera2.beginDraw();
    camera2.clear();

    /*for( int i = (actual2 - 2) ;  i >= 0 && i < cellsList.size() ; i-- )
     {
     //camera2.draw(cellsList.get(i));
     cellsList.get(i).draw(camera2);
     }
     
     for( int i = cellsList.size()-1 ; (actual2 + 1) < i ; i-- )
     {
     //camera2.draw(cellsList.get(i));
     cellsList.get(i).draw(camera2);
     }
     
     if( actual2 != 0 )
     {
     //camera2.draw(cellsList.get(actual2 - 1));
     cellsList.get(actual2-1).draw(camera2);
     }
     
     if( actual2+1 < cellsList.size() )
     {
     //camera2.draw(cellsList.get(actual2));
     cellsList.get(actual2).draw(camera2);
     //camera2.draw(cellsList.get(actual2+1));
     cellsList.get(actual2+1).draw(camera2);
     }
     else
     {
     camera2.draw(cellsList.get(cellsList.size() -1));
     }*/

    for ( int i = (actual2 - 2); i >= 0 && i < cellsList.size(); i-- )
    {
      //camera1.draw(cellsList.get(i));
      cellsList.get(i).draw(camera2);

      //cellsList.get(i-1).drawBacterias(camera1);
      cellsList.get(i).drawBacterias(camera2);
    }

    for ( int i = cellsList.size()-1; (actual2 + 1) < i; i-- )
    {
      //camera1.draw(cellsList.get(i));
      cellsList.get(i).draw(camera2);

      //cellsList.get(i-1).drawBacterias(camera1);
      cellsList.get(i).drawBacterias(camera2);
    }

    if ( actual2 != 0 )
    {
      //camera1.draw(cellsList.get(actual1 - 1));
      cellsList.get(actual2 - 1).draw(camera2);
      if ( actual2 - 1 > 0 ) cellsList.get(actual2 - 2).drawBacterias(camera2);
    }

    if ( actual1+1 < cellsList.size() )
    {
      //camera1.draw(cellsList.get(actual1));
      cellsList.get(actual2).draw(camera2);
      if ( actual2 != 0 ) cellsList.get(actual2-1).drawBacterias(camera2);
      //camera1.draw(cellsList.get(actual1+1));
      cellsList.get(actual2+1).draw(camera2);
      cellsList.get(actual2).drawBacterias(camera2);
      cellsList.get(actual2+1).drawBacterias(camera2);
    } else if ( actual1 < cellsList.size() )
    {
      //camera1.draw(cellsList.get(cellsList.size() -1));
      //cellsList.get(cellsList.size() -1).draw(camera1);
      cellsList.get(actual2).draw(camera2);
      cellsList.get(actual2-1).drawBacterias(camera2);
      cellsList.get(actual2).drawBacterias(camera2);
    }

    camera2.endDraw();

    camera1.draw();
    camera2.draw();

    //line(640, 0, 640, 720);
    image(marcador, 612, 0);

    if ( actual1 >= actual2 )
    {
      image(imagActual2, 627.0f, 16 + actual2 * (670/22.0f) );
      image(imagActual1, 607.0f, 16 + actual1 * (670/22.0f) );
    } else
    {
      image(imagActual1, 607.0f, 16 + actual1 * (670/22.0f) );
      image(imagActual2, 627.0f, 16 + actual2 * (670/22.0f) );
    }


    //Marcador

    /*pushStyle();
     imageMode(PConstants.CENTER);
     
     pushMatrix();
     translate(mouseX, mouseY);
     scale(scaleBac);
     rotate(rotacionBac);
     image(imageBacteria, 0, 0);
     popMatrix();
     
     popStyle();*/

    // Debbugging
    //    pushStyle();
    //    fill(0);
    //    text(cellsList.get(0).getBacterias().size() + " " + camera1.getOffsetX() + " " + camera1.getOffsetY(), 60, 60);
    //    popStyle();
  }
}