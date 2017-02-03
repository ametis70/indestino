// enum para las direcciones de las imagenes.

public static enum Direction
{
  NW(0), 
    N(1), 
    NE(2), 

    WN(3), 
    W(4), 
    WS(5), 

    EN(6), 
    E(7), 
    ES(8), 

    S(9), 
    SE(10), 
    SW(11), 

    NONE(12);

  final private int id;

  private Direction( int id )
  {
    this.id = id;
  }

  public static Direction toDirection(int id)
  {
    switch(id)
    {
    case 0: 
      return NW;
    case 1: 
      return N;
    case 2: 
      return NE;

    case 3: 
      return WN;
    case 4: 
      return W;
    case 5: 
      return WS;

    case 6: 
      return EN;
    case 7: 
      return E;
    case 8: 
      return ES;

    case 9: 
      return SW;
    case 10: 
      return S;
    case 11: 
      return SE;

    default: 
      return NONE;
    }
  }

  public static Direction toDirection(String direction)
  {
    final char sDirec [] = {'N', 'W', 'E', 'S'};

    int direcId = 0;
    for ( int i = 0; i < sDirec.length; i++)
    {
      if ( direction.charAt(0) == sDirec[i] )
      {
        direcId = 3 * i + Character.getNumericValue(direction.charAt(1));
        break;
      }
    }

    return toDirection(direcId);
  }
}

// Clase para los bloques con los que se construye el mapa

public class Bloque 
{

  private int id;

  private Direction in;
  private Direction out;

  PImage imagen;

  public Bloque(String filename)
  {
    String fileSplit [] = filename.split("/");
    String splits [] = fileSplit[fileSplit.length-1].split("_");

    id = Integer.parseInt(splits[0]);

    in = Direction.toDirection(splits[1]);
    out = Direction.toDirection(splits[2]);

    imagen = loadImage(filename);
  }

  public PImage getImage()
  {
    return imagen;
  }

  public void imagencita(float a, float b)
  {
    image(imagen, a, b);
  }

  public void imagencita(float a, float b, float c, float d)
  {
    image(imagen, a, b, c, d);
  }
}