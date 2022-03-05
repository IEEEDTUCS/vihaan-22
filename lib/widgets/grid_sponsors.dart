import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../data/sponsorData.dart';

Widget buildSponsorCard({
  Key? key,
  required double bx,
  required double mrl,
  required double mrr,
  required String url,
  required String link,
}) {
  return Container(
    padding: const EdgeInsets.only(top: 8.0),
    child: InkWell(
      onTap: () async {
        if (await canLaunch(link)) {
          await launch(link);
        } else {
          throw 'Could not launch $link';
        }
      },
      child: Container(
          height: bx,
          width: bx,
          margin: EdgeInsets.fromLTRB(mrl, 0, mrr, 0),
          decoration: BoxDecoration(
            image: DecorationImage(image: NetworkImage(url), fit: BoxFit.fill),
            color: Colors.white60,
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 2,
                spreadRadius: 0,
                offset: Offset(4.0, 4.0),
              )
            ],
          )),
    ),
  );
}

Widget bronzeSponsorsGrid(
  double width,
  double height,
) {
  return GridView.count(
    crossAxisSpacing: (width >= 800) ? (width >= 1000 ? 48 : 28) : 8,
    primary: false,
    shrinkWrap: true,
    crossAxisCount: (width > 350)
        ? ((width > 600)
            ? ((width >= 800)
                ? (width >= 1000)
                    ? 6
                    : 5
                : 4)
            : 3)
        : 2,
    children: [
      for (int i = 0; i < sponsorData["bronze"]!.length; i++)
        buildSponsorCard(
          bx: (width >= 800) ? width * 0.125 : width * 0.2,
          mrl: 4,
          mrr: 4,
          url: sponsorData["bronze"]![i]["image"].toString(),
          link: sponsorData["bronze"]![i]["link"].toString(),
        ),
    ],
  );
}

Widget silverSponsorsGrid(
  double width,
  double height,
) {
  return GridView.count(
    crossAxisSpacing: (width >= 800) ? (width >= 1000 ? 48 : 28) : 8,
    primary: false,
    shrinkWrap: true,
    crossAxisCount: (width > 350)
        ? ((width > 600)
            ? ((width >= 800)
                ? (width >= 1000)
                    ? 5
                    : 4
                : 3)
            : 2)
        : 2,
    children: [
      for (int i = 0; i < sponsorData["silver"]!.length; i++)
        buildSponsorCard(
          bx: (width >= 800) ? width * 0.125 : width * 0.2,
          mrl: 4,
          mrr: 4,
          url: sponsorData["silver"]![i]["image"].toString(),
          link: sponsorData["silver"]![i]["link"].toString(),
        ),
    ],
  );
}

Widget titleSponsorsGrid(
  double width,
  double height,
) {
  return GridView.count(
    crossAxisSpacing: (width >= 800) ? (width >= 1000 ? 48 : 28) : 8,
    primary: false,
    shrinkWrap: true,
    crossAxisCount: (width > 350)
        ? ((width > 600)
            ? ((width >= 800)
                ? (width >= 1000)
                    ? 3
                    : 3
                : 2)
            : 2)
        : 2,
    children: [
      for (int i = 0; i < sponsorData["title"]!.length; i++)
        buildSponsorCard(
          bx: (width >= 800) ? width * 0.125 : width * 0.2,
          mrl: 4,
          mrr: 4,
          url: sponsorData["title"]![i]["image"].toString(),
          link: sponsorData["title"]![i]["link"].toString(),
        ),
    ],
  );
}

Widget goldSponsorsGrid(
  double width,
  double height,
) {
  return GridView.count(
    crossAxisSpacing: (width >= 800) ? (width >= 1000 ? 48 : 28) : 8,
    primary: false,
    shrinkWrap: true,
    crossAxisCount: (width > 350)
        ? ((width > 600)
            ? ((width >= 800)
                ? (width >= 1000)
                    ? 3
                    : 3
                : 2)
            : 2)
        : 2,
    children: [
      for (int i = 0; i < sponsorData["gold"]!.length; i++)
        buildSponsorCard(
          bx: (width >= 800) ? width * 0.125 : width * 0.2,
          mrl: 4,
          mrr: 4,
          url: sponsorData["gold"]![i]["image"].toString(),
          link: sponsorData["gold"]![i]["link"].toString(),
        ),
    ],
  );
}

Widget mediaOutreachSponsorsGrid(
  double width,
  double height,
) {
  return GridView.count(
    crossAxisSpacing: (width >= 800) ? (width >= 1000 ? 48 : 28) : 8,
    primary: false,
    shrinkWrap: true,
    crossAxisCount: (width > 350)
        ? ((width > 600)
            ? ((width >= 800)
                ? (width >= 1000)
                    ? 5
                    : 4
                : 3)
            : 2)
        : 2,
    children: [
      for (int i = 0; i < sponsorData["mediaAndOutreach"]!.length; i++)
        buildSponsorCard(
          bx: (width >= 800) ? width * 0.125 : width * 0.2,
          mrl: 4,
          mrr: 4,
          url: sponsorData["mediaAndOutreach"]![i]["image"].toString(),
          link: sponsorData["mediaAndOutreach"]![i]["link"].toString(),
        ),
    ],
  );
}
