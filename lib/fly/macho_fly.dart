import 'package:flame/sprite.dart';
import 'package:kill_fly/fly/fly.dart';
import 'package:kill_fly/game.dart';

class MachoFly extends Fly {
  MachoFly(LangawGame game, double x, double y) : super(game, x, y) {
    flyingSprite = List();
    flyingSprite.add(Sprite('flies/macho-fly-1.png'));
    flyingSprite.add(Sprite('flies/macho-fly-2.png'));
    deadSprite = Sprite('flies/macho-fly-dead.png');
  }
}
