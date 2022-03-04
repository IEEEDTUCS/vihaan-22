import 'package:flutter/material.dart';
import 'package:vihaan_2022/data/tracksData.dart';

class Tracks extends StatelessWidget {
  const Tracks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget trackCard({
      required double width,
      required String image,
      required String name,
      required String detail,
    }) {
      return Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Flexible(
              flex: 1,
              child: InkWell(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return Dialog(
                          elevation: 16,
                          backgroundColor: Colors.white,
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 16.0),
                                  child: Text(
                                    name,
                                    textAlign: TextAlign.justify,
                                    style: const TextStyle(
                                      fontSize: 25,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 16.0, horizontal: 20.0),
                                  child: Text(
                                    detail,
                                    textAlign: TextAlign.justify,
                                    style: const TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      });
                },
                child: Container(
                    padding: const EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 5.0),
                    // width: width * 0.5,
                    child: Image(
                      image: NetworkImage(image),
                    )),
              ),
            ),
          ],
        ),
      );
    }

    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 0.025, vertical: 0),
      child: Column(
        children: <Widget>[
          const SizedBox(height: 10),
          GridView.count(
            crossAxisSpacing: (width >= 800) ? 16 : 8,
            primary: false,
            shrinkWrap: true,
            crossAxisCount: (width > 350)
                ? ((width > 800) ? ((width >= 950) ? 4 : 3) : 2)
                : 1,
            // childAspectRatio: 1,
            children: [
              for (int i = 0; i < trackDetails.length; i++)
                trackCard(
                    width: width * 0.75,
                    image: trackDetails[i]["image"].toString(),
                    name: trackDetails[i]["name"].toString(),
                    detail: trackDetails[i]["detail"].toString()),
            ],
          ),
        ],
      ),
    );
  }
}
