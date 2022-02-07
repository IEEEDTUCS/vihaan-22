import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:vihaan_2022/data/hyperlinks.dart';
import 'package:vihaan_2022/data/images.dart';
import 'package:vihaan_2022/widgets/vihaan_icons_icons.dart';

class LandingPageContent extends StatelessWidget {
  const LandingPageContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var _height = MediaQuery.of(context).size.height;
    // var _width = MediaQuery.of(context).size.width;
    return AnimatedOpacity(
      duration: const Duration(milliseconds: 250),
      opacity: 1.0,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Image.network(
                  sectionImages['images/vihaan.png'].toString(),
                ),
              ),
              const Text(
                'by IEEE DTU | March 12 - 13, 2022',
                textScaleFactor: 1.25,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
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
                  ),
                ),
              ),
              InkWell(
                onTap: IEEEURLS.devfolioPage,
                child: Material(
                  elevation: 8,
                  color: Colors.white,
                  clipBehavior: Clip.antiAlias,
                  shadowColor: Colors.black54,
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                  child: SizedBox(
                    width: 300,
                    height: 42,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 25,
                          child: Image(
                            image: NetworkImage(
                                sectionImages["images/devfolio_logo.png"]
                                    .toString()),
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          "Apply with Devfolio",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            fontFamily: "NunitoSans",
                            letterSpacing: 0.4,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              InkWell(
                onTap: IEEEURLS.vihaanDiscord,
                child: Material(
                  elevation: 8,
                  color: Colors.white,
                  clipBehavior: Clip.antiAlias,
                  shadowColor: Colors.black54,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(5),
                  ),
                  child: SizedBox(
                    width: 300,
                    height: 42,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Icon(
                          VihaanIcons.discord,
                          color: Colors.black,
                          size: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Join Our Discord Server",
                          style: TextStyle(
                            color: Colors.black,
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
      ),
    );
  }
}
