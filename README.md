# so_long
2D game! 

Try not run on Enemies, get all Collectibles and Exit!

![ezgif com-gif-maker](https://user-images.githubusercontent.com/37631996/205122424-a6048edd-b566-44c3-8520-d27e352b73af.gif)


7 maps was predefined and located in "maps" folder, but you can simply create your own!


Unfortunatelly run only on mac os.


How to play:

* Copy repository on your device
* cd into repository and run "make bonus" (or "make" for non-animated version with no enemies)
* Run Executable so_long_bonus (so_long if you compiled non-animated version) with 2 -nd parameter path to the map (ex: "./so_long_bonus maps/map2.ber"
* Play!

P.S. "Make fclean" will delete all compiled files.

How to create map:

* Create regular file with .ber extension (ex: "test.ber")
*  Edit it with any text editor
*  Fill it with following elements:
   a) '1' - defines a Wall
   b) '0' - Free space
   c) 'P' - Player position
   d) 'E' - Exit position

Please note: Map should have 1 Player, 1 Exit and at least 1 Collectible. Map should be surrounded by walls and not rectangular.
