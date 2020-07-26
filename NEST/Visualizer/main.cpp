#include "main.h"
#include "SFML/Audio.hpp"
#include "SFML/Graphics.hpp"


int main(int argc, const char * argv[])  // Asking possible input as arg, for piping input commands
{
  /*
  This is the visualizer function, where when called instantiate a SFML window that gets
  updated every time the swap happens
  */

  // Create the main window
  sf::RenderWindow window(sf::VideoMode(800, 600), "Loading pattern visualizer");
  while (window.isOpen())
  {
      // Process events
      sf::Event event;
      while (window.pollEvent(event))
      {
          // Close window: exit
          if (event.type == sf::Event::Closed)
              window.close();
      }
      // Clear screen
      window.clear();
      // Draw the sprite
      window.display();
  }
}
