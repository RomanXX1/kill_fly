import 'package:flame/sprite.dart';
import 'package:kill_fly/fly/fly.dart';
import 'package:kill_fly/game.dart';

class AgileFly extends Fly {
  AgileFly(LangawGame game, double x, double y) : super(game, x, y) {
    flyingSprite = List();
    flyingSprite.add(Sprite('flies/agile-fly-1.png'));
    flyingSprite.add(Sprite('flies/agile-fly-2.png'));
    deadSprite = Sprite('flies/agile-fly-dead.png');
  }
}
