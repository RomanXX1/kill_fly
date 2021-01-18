import 'dart:math';
import 'package:flame/game/game.dart';
import 'package:flame/flame.dart';
import 'package:kill_fly/components/backyard.dart';
import 'package:kill_fly/fly/agile_fly.dart';
import 'dart:ui';
import 'package:kill_fly/fly/fly.dart';
import 'package:flutter/gestures.dart';
import 'package:kill_fly/fly/house_fly.dart';
import 'package:kill_fly/fly/hungry_fly.dart';
import 'package:kill_fly/fly/macho_fly.dart';

import 'fly/drooler_fly.dart';

class LangawGame extends Game {
  Size screenSize;
  double tileSize;
  Backyard background;
  List<Fly> files;
  Random rnd;

  LangawGame() {
    initialize();
  }

  void initialize() async {
    files = List<Fly>();
    rnd = Random();
    resize(await Flame.util.initialDimensions());

    background = Backyard(this);
    spawnFly();
  }

  void render(Canvas canvas) {
    background.render(canvas);

    files.forEach((Fly fly) => fly.render(canvas));
  }

  void update(double t) {
    files.forEach((Fly fly) => fly.update(t));
    files.removeWhere((Fly fly) => fly.isOffScreen);
  }

  void resize(Size size) {
    screenSize = size;
    tileSize = screenSize.width / 9;
  }

  void spawnFly() {
    double x = rnd.nextDouble() * (screenSize.width - tileSize);
    double y = rnd.nextDouble() * (screenSize.height - tileSize);
    switch (rnd.nextInt(5)) {
      case 0:
        files.add(HouseFly(this, x, y));
        break;
      case 1:
        files.add(DroolerFly(this, x, y));
        break;
      case 2:
        files.add(AgileFly(this, x, y));
        break;
      case 3:
        files.add(MachoFly(this, x, y));
        break;
      case 4:
        files.add(HungryFly(this, x, y));
        break;
    }
  }

  void onTapDown(TapDownDetails d) {
    files.forEach((Fly fly) {
      if (fly.flyRect.contains(d.globalPosition)) {
        fly.onTapDown();
      }
    });
  }
}
