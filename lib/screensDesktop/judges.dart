import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vihaan_2022/data/judgeData.dart';

import '../widgets/vihaan_icons_icons.dart';

class JudgeSection extends StatelessWidget {
  const JudgeSection({Key? key}) : super(key: key);

  Widget judgeCard({
    required String name,
    required String position,
    required String imageAddress,
    String? linkedInAddress,
    String? twitterAddress,
    required String category,
  }) {
    return Card(
      shadowColor: Colors.black,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: CircleAvatar(
                maxRadius: 64.0,
                minRadius: 20.0,
                backgroundColor: Colors.white,
                //radius: 60.0,
                backgroundImage: NetworkImage(imageAddress),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                name,
                style: const TextStyle(color: Colors.white, fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                position,
                style: const TextStyle(color: Colors.white, fontSize: 15),
                textAlign: TextAlign.center,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    if (linkedInAddress != null)
                      InkWell(
                        onTap: () => launch(linkedInAddress),
                        child: const Icon(
                          VihaanIcons.linkedin,
                          color: Colors.white,
                        ),
                      ),
                    if (linkedInAddress != null && twitterAddress != null)
                      const SizedBox(width: 5),
                    if (twitterAddress != null)
                      InkWell(
                          onTap: () {},
                          child: const Icon(
                            VihaanIcons.facebook,
                            color: Colors.white,
                          )),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    category,
                    style: TextStyle(color: Colors.yellow[700], fontSize: 15),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      elevation: 12.0,
      margin: const EdgeInsets.all(10.0),
      color: Colors.black38,
      clipBehavior: Clip.hardEdge,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    final double itemHeight = (width >= 800 && width < 1100) ? 425 : 385;
    final double itemWidth = (width > 350)
        ? ((width > 600) ? ((width >= 800) ? width / 4 : width / 3) : width / 2)
        : width;

    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: (width >= 800) ? 32 : 8),
          child: GridView.count(
            crossAxisSpacing: (width >= 800) ? (width >= 1000 ? 48 : 28) : 8,
            primary: false,
            shrinkWrap: true,
            crossAxisCount: (width > 350)
                ? ((width > 600) ? ((width >= 800) ? 4 : 3) : 2)
                : 1,
            childAspectRatio: (itemWidth / itemHeight) * 0.85,
            children: [
              for (int i = 0; i < judgeData.length; i++)
                judgeCard(
                  name: judgeData[i]["name"].toString(),
                  position: judgeData[i]["designation"].toString(),
                  imageAddress: judgeData[i]["image"].toString(),
                  linkedInAddress: judgeData[i]["linkedIn"].toString(),
                  category: judgeData[i]["category"].toString(),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
