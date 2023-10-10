import 'package:flame/components.dart';
import 'package:flame/parallax.dart';
import 'package:flutter/material.dart';
import './doodle_dash.dart';

class World extends ParallaxComponent<DoodleDash> with HasGameRef<DoodleDash> {
  @override
  Future<void> onLoad() async {
    parallax = await gameRef.loadParallax(
      [
        ParallaxImageData('background/06_Background_Solid.png'),
        ParallaxImageData('background/05_Background_Small_Stars.png'),
        ParallaxImageData('background/04_Background_Big_Stars.png'),
        ParallaxImageData('background/02_Background_Orbs.png'),
        ParallaxImageData('background/03_Background_Block_Shapes.png'),
        ParallaxImageData('background/01_Background_Squiggles.png'),
      ],
      fill: LayerFill.width,
      repeat: ImageRepeat.repeat,
      baseVelocity: Vector2(0, -5),
      velocityMultiplierDelta: Vector2(0, 1.2),
    );
  }
}
