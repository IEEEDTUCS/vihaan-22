import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:vihaan_2022/data/hyperlinks.dart';
import 'package:vihaan_2022/data/images.dart';
import 'package:vihaan_2022/widgets/devfolio_button.dart';
import 'package:vihaan_2022/widgets/vihaan_icons_icons.dart';

class LandingPageContent extends StatelessWidget {
  const LandingPageContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: const Duration(milliseconds: 250),
      opacity: 1.0,
      child: Container(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                flex: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Container(
                        child: Image.network(
                            sectionImages['images/vihaan.png'].toString()),
                        constraints: const BoxConstraints(
                          maxHeight: 400,
                        ),
                      ),
                    ),
                    const Text(
                      'by IEEE DTU | March 12 - 13, 2022',
                      textScaleFactor: 1.5,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white70,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 12),
                      decoration: BoxDecoration(
                        color: Colors.white70,
                        backgroundBlendMode: BlendMode.srcOver,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: DefaultTextStyle(
                        style: const TextStyle(
                          fontSize: 22,
                          fontFamily: 'NunitoSans',
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                          height: 1.6,
                        ),
                        child: AnimatedTextKit(
                          animatedTexts: [' Eat', ' Sleep', ' Code', ' Repeat']
                              .map((e) => TypewriterAnimatedText(e))
                              .toList(),
                          isRepeatingAnimation: true,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      width: 312,
                      child: DevfolioButton(),
                    ),
                    InkWell(
                      onTap: IEEEURLS.vihaanDiscord,
                      child: Material(
                        elevation: 8,
                        color: Colors.white,
                        clipBehavior: Clip.antiAlias,
                        shadowColor: Colors.black54,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(5)),
                        child: SizedBox(
                          width: 310,
                          height: 42,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Icon(
                                VihaanIcons.discord,
                                color: Color(0xff27333f),
                                size: 30,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Join Our Discord Server",
                                style: TextStyle(
                                  color: Color(0xff2c3a43),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  letterSpacing: 0.4,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
