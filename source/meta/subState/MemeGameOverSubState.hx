package;

import flixel.FlxG;
import flixel.Text.FlxText;
//import BITCHES; its crossed out cause you dont get bitches
// dont expect for this to do anything \\
// its a joke state so everything is fucked up \\

class MemeGameOverSubState extends MusicBeatState{
var bitches:Array<string> = [];

var bitchesText:FlxText;
  
  override public function create(){
bitches = ["swaggy hoes", "ZAMN SHES 12?!"];
    bitchesText = new FlxText(10,0,0,bitches.FlxG.random.int(0,1),32);
    bitchesText.screenCenter();
    add(bitchesText);
  }

}
