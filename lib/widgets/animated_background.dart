import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class AnimatedBackground extends StatelessWidget {
  const AnimatedBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          tileMode: TileMode.mirror,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            // Color(0xfff0564b),
            Color(0xfff73123),
            // Color(0xff008eff),
            Color(0xff0076d4),
          ],
          stops: [
            0,
            1,
          ],
        ),
        backgroundBlendMode: BlendMode.srcOver,
      ),
      child: const PlasmaRenderer(
        type: PlasmaType.infinity,
        particles: 10,
        color: const Color(0x440fbcdf),
        blur: 0.19,
        size: 0.49,
        speed: 7.38,
        offset: 1.46,
        blendMode: BlendMode.screen,
        particleType: ParticleType.atlas,
        variation1: 1,
        variation2: 0.48,
        variation3: 0.41,
        rotation: -0.59,
      ),
    );
  }
}
