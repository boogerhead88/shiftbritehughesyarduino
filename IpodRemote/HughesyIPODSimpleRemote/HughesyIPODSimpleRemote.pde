//working as on 24/APR/10

#include <Bounce.h>
//#include <//simpleRemotge.h>

const byte BUTTON_PLAY = 6;
const byte BUTTON_NEXT = 5;
const byte BUTTON_PREVIOUS = 3;
const byte BUTTON_MENU = 2;
const byte BUTTON_SCROLL_UP = 7;
const byte BUTTON_SCROLL_DOWN = 4;
const byte BUTTON_SELECT = 8;


const unsigned long DEBOUNCE_MS = 50;

Bounce btnPlay(BUTTON_PLAY, DEBOUNCE_MS);
Bounce btnNext(BUTTON_NEXT, DEBOUNCE_MS);
Bounce btnPrevious(BUTTON_PREVIOUS, DEBOUNCE_MS);                      
Bounce btnMenu(BUTTON_MENU, DEBOUNCE_MS);
Bounce btnScrollUp(BUTTON_SCROLL_UP, DEBOUNCE_MS);
Bounce btnScrollDown(BUTTON_SCROLL_DOWN, DEBOUNCE_MS);
Bounce btnSelect(BUTTON_SELECT, DEBOUNCE_MS);

//simpleRemotge //simpleRemotge;

void setup()
{
  Serial.begin(9600);
  //init buttons
  for(int i = BUTTON_PLAY; i < BUTTON_SELECT+1; i++)
  {
    pinMode(i,INPUT);
    digitalWrite(i, HIGH);
  }
  //simpleRemotge.setup();
}

void loop()
{
  //simpleRemotge.loop();

  if(btnPlay.update())
  {
    if (btnPlay.read() == LOW)
    {
      Serial.println("play");
      //simpleRemotge.sendPlay();

    }
    else
    {
      Serial.println("play released");
      //simpleRemotge.sendButtonReleased();
    }
  }
  if(btnNext.update())
  {
    if (btnNext.read() == LOW)
    {
      Serial.println("forward");
      //simpleRemotge.sendSkipForward();
    }
    else
    {
      Serial.println("forward release");
      //simpleRemotge.sendButtonReleased();
    }
  }
  if(btnPrevious.update())
  {
    if (btnPrevious.read() == LOW)
    {
      Serial.println("backward");
      //simpleRemotge.sendSkipBackward();
    }
    else
    {
      Serial.println("backward release");
      //simpleRemotge.sendButtonReleased();
    }
  }
  if(btnMenu.update())
  {
    if (btnMenu.read() == LOW)
    {
      Serial.println("menu");
      //simpleRemotge.sendMenuButton();
    }
    else
    {
      Serial.println("menu release");
      //simpleRemotge.sendButtonReleased();
    }
  }
  if(btnScrollUp.update())
  {
    if (btnScrollUp.read() == LOW)
    {
      Serial.println("up");
      //simpleRemotge.sendScrollUp();
    }
    else
    {
      Serial.println("up release");
      //simpleRemotge.sendButtonReleased();
    }
  }
  if(btnScrollDown.update())
  {
    if (btnScrollDown.read() == LOW)
    {
      Serial.println("down");
      //simpleRemotge.sendScrollDown();
    }
    else
    {
      Serial.println("down release");
      //simpleRemotge.sendButtonReleased();
    }
  }
  if(btnSelect.update())
  {
    if (btnSelect.read() == LOW)
    {
      Serial.println("select");
      //simpleRemotge.sendOkSelectButton();
    }
    else
    {
      Serial.println("select release");
      //simpleRemotge.sendButtonReleased();
    }
  }


}









