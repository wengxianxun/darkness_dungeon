
import 'package:darkness_dungeon/core/Enemy.dart';
import 'package:flutter/material.dart';
import 'package:flame/animation.dart' as FlameAnimation;

class GoblinEnemy extends Enemy{

  static const double SIZE = 20;

  GoblinEnemy():super(
      Rect.fromLTWH(0, 0, SIZE, SIZE),
      FlameAnimation.Animation.sequenced("goblin_idle.png", 6, textureWidth: 16, textureHeight: 16),
      size:SIZE,
      life: SIZE,
      intervalAtack: 1000,
      speed: 50,
      visionCells: 6
  );

  @override
  void updateEnemy(double t, Rect player) {

    moveToHero(player, (){
      atackPlayer(30);
    });

    super.updateEnemy(t, player);
  }

}