// ArrayList y List
import java.util.ArrayList;
import java.util.List;
import java.security.CodeSource;
import java.net.URL;
import java.lang.ClassLoader;

// GameControlPlus
import org.gamecontrolplus.ControlDevice;
import org.gamecontrolplus.ControlIO;

ControlIO control;
public ControlDevice joystick = null;
public ControlDevice joystick2 = null;

void setupGameControlPlus()
{
  control = ControlIO.getInstance(this);

  for ( ControlDevice device : control.getDevices() )
  {
    //System.out.println(device.getName());

    if ( !device.getName().equals("Controller (XBOX 360 For Windows)") && 
      !device.getName().equals("Controller (Xbox One For Windows)") ) continue;

    if ( joystick == null )
    {
      joystick = joystick2 = device;
    } else
    {
      joystick2 = device;
    }

    //device.matches( Configuration.makeConfiguration(this, "controlMapped") );
    device.open();

    for ( int i = 0; i < device.getNumberOfSliders(); i++ )
    {
      System.out.println( device.getSlider(i).getName() );
    }

    device.setTolerance(0.25f);
  }
}


// Minim
import ddf.minim.AudioPlayer;
import ddf.minim.Minim;

Minim minim;
AudioPlayer cancionJuego;

public void setupMinim() {
  minim = new Minim(this);
  cancionJuego = minim.loadFile("musica/cancionjuego.wav");
}

// Debugging
public void debugging() {
  pushStyle();
  fill(0);
  text(frameRate, 50, 50);
  text("(" + mouseX + "," + mouseY, mouseX, mouseY);
  point(mouseX, mouseY);    
  popStyle();
}