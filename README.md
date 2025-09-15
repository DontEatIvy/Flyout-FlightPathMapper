## Flyout-FlightPathMapper
This is an HTML-tool that allows you to print a via lua recorded flight path onto the flyout map.
The edited map can then be downloaded as a png.

# Dependencies**
- LAMP mod
- some way to display local HTML and JavaScript (e.g. a browser)

# How to use**
- Download the Git-Repository
```bash
git clone https://github.com/DontEatIvy/Flyout-FlightPathMapper
```
- Also download *Djesses* Map and  put it into the same directory as the ``flightpath.html`` and rename it to ``map.png``
- Now copy the ``tracker.lua`` into the *craft files* of the aircraft which path you would like to track and rename some part on this craft ``Lua: tracker.lua``
- Now you can collect flight data by simply flying around.
**Once the data has been collected it is time to print the flight path**
- Open the ``flightpath.html`` in you preferred browser
- Pressing the ``Browse...``-button should open a window to select files to import.
  Select the LAMP-log produced by the craft.
  It should be located here
  ```
  ...AppData/LocalLow/Stonext Games/Flyout/Mods/LAMP/Logs
  ```
- By pressing the ``Map``-button the ``map.png`` will be printed onto the canvas.
- Now you can press the ``Print flightpath``-button to paint the flight path onto the map.
  Do to the size of the map the flight path might not be visible in the preview window.
- A quick right-click onto the map allows you to open it in a new tab were you can zoom into the image to better view you flight path, or save it.

# What do the buttons do?
``Reload log content`` Attempts to re-parse the provided log. 
``Print flightpath`` Prints the flight path onto the canvas using provided settings.
``Map`` Prints the ``map.png`` onto the canvas. This overwrites all pixels painted so far.
``Clear Canvas`` Removes all pixels including the map and all flight paths of the canvas.
``Browse...`` Opens the file selection window. (If this doesn't work for you please contact me and provide which browser you are using. I only know it works on Firefox)

# What do the Settings do
``Scale`` This width and height of each pixel painted as the flight path.
`R`, `G`, `B`, `A` RGBA-Color gradients ranging from 0 to 256. This color will be used to paint the next flight path.

# tracker.lua
In order to increase efficiency in log size a ``skipTicks`` local variable was added.
In the version provided in the git this value is set to 10 and will therefor only log the lon and lat every 10th iteration of the program loop.
**Feel free to change this variable.**
A greater number will reduce file size but might lead to holes in the flight path and will also result in a slimmer line.
