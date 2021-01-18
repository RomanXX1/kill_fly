import 'package:flame/sprite.dart';
import 'package:kill_fly/fly/fly.dart';
import 'package:kill_fly/game.dart';

class HouseFly extends Fly {
  HouseFly(LangawGame game, double x, double y) : super(game, x, y) {
    flyingSprite = List<Sprite>();
    flyingSprite.add(Sprite('flies/house-fly-1.png'));
    flyingSprite.add(Sprite('files/house-fly-2.png'));
    deadSprite = Sprite('flies/house-fly-dead.png');
  }
}
