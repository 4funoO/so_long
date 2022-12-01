# so_long
2D game! 

Try not run on Enemies, get all Collectibles and Exit!

<p align="center">
  <img width="2198" alt="Screen Shot 2022-12-01 at 6 19 28 PM" src="https://user-images.githubusercontent.com/37631996/205120561-872efd34-564d-40ad-b2de-1f20fd73bb3c.png">
</p>

7 maps was predefined and locatedin "maps" folder, but you can simply create your own!

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
