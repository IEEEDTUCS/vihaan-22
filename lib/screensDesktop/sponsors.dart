import 'dart:math';

import 'package:flutter/material.dart';

import '../widgets/grid_sponsors.dart';

class Sponsors extends StatelessWidget {
  const Sponsors({Key? key}) : super(key: key);

  Widget buildSponsorTitle({
    required String title,
    required double fnt,
    required Color clr,
  }) {
    return Center(
      child: Text(
        title,
        style: TextStyle(
          letterSpacing: 2,
          fontSize: fnt,
          fontWeight: FontWeight.w900,
          fontFamily: 'NunitoSans',
          color: clr,
          shadows: const [
            Shadow(
              color: Colors.black12,
              blurRadius: 1,
              offset: Offset(3.0, 3.0),
            ),
          ],
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final double mrg = 4,
        gold = (width > 800) ? min(300, width * 0.225) : width * 0.45,
        community = width * 0.2,
        titleFont = (width > 800) ? 50 : max(width * 0.075, 50);

    return Container(
      padding: const EdgeInsets.all(16),
      color: Colors.black87,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'SPONSORS',
            style: TextStyle(
                fontFamily: 'NunitoSans',
                fontSize: (width > 800) ? 50 : max(width * 0.075, 50),
                color: Colors.white60,
                fontWeight: FontWeight.w700),
          ),
          Container(
              height: 2,
              color: Colors.white24,
              margin: const EdgeInsets.fromLTRB(80, 0, 80, 10)),
          // Container(
          //   child: Column(
          //     children: [
          //       SizedBox(
          //         height: 200,
          //         child: SponsorTitle(
          //             title: 'TITLE SPONSOR',
          //             fnt: (width > 800)
          //                 ? titleFont
          //                 : ((width > 400) ? titleFont - 18 : titleFont - 20),
          //             clr: Colors.yellow),
          //       ),
          //       Container(
          //           height: 2,
          //           color: Colors.black12,
          //           margin: EdgeInsets.symmetric(horizontal: 350)),
          //       SingleChildScrollView(
          //         scrollDirection: Axis.horizontal,
          //         child: Row(
          //           mainAxisSize: MainAxisSize.min,
          //           mainAxisAlignment: MainAxisAlignment.center,
          //           children: [
          //             SponsorCard(
          //               bx: gold,
          //               mrl: mrg,
          //               mrr: mrg,
          //               url: goldSponsors['images/sponsor_itrack.jpg'],
          //               link: SponsorContacts.sponsorItrack,
          //             ),
          //           ],
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          Column(
            children: [
              SizedBox(
                height: 100,
                child: buildSponsorTitle(
                  title: 'TITLE',
                  fnt: titleFont,
                  clr: Colors.white,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: (width > 800) ? 100.00 : 20.0),
                child: titleSponsorsGrid(width, height),
              ),
            ],
          ),
          Column(
            children: [
              SizedBox(
                height: 100,
                child: buildSponsorTitle(
                    title: 'GOLD', fnt: titleFont, clr: Colors.amber.shade500),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: (width > 800) ? 100.00 : 20.0),
                child: goldSponsorsGrid(width, height),
              ),
            ],
          ),
          const SizedBox(height: 15),
          buildSponsorTitle(
              title: 'SILVER',
              fnt: titleFont,
              clr: const Color.fromARGB(255, 192, 192, 192)),
          silverSponsorsGrid(width, height),
          const SizedBox(height: 15),
          buildSponsorTitle(
              title: 'BRONZE',
              fnt: titleFont,
              clr: const Color.fromARGB(255, 205, 127, 50)),
          bronzeSponsorsGrid(width, height),
          const SizedBox(height: 15),
          // const buildSponsorTitle(
          //   title: 'COMMUNITY PARTNER',
          //   fnt: 38.00,
          //   clr: Colors.white,
          // ),
          // SingleChildScrollView(
          //   scrollDirection: Axis.horizontal,
          //   child: Row(
          //     mainAxisSize: MainAxisSize.min,
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       SponsorCard(
          //           bx: community,
          //           mrl: mrg,
          //           mrr: mrg,
          //           url: communitypartner['images/sponsor_hackon.jpg']
          //               .toString(),
          //           link:
          //               'https://in.linkedin.com/company/ieee-dtu' //SponsorContacts.sponsorHackon,
          //           ),
          //       SponsorCard(
          //           bx: community,
          //           mrl: mrg,
          //           mrr: mrg,
          //           url: communitypartner['images/sponsor_codeforcause.jpeg']
          //               .toString(),
          //           link:
          //               'https://in.linkedin.com/company/ieee-dtu' //SponsorContacts.sponsorCodeforcause,
          //           ),
          //       SponsorCard(
          //           bx: community,
          //           mrl: mrg,
          //           mrr: mrg,
          //           url: communitypartner['images/sponsor_ieeedelhisection.jpg']
          //               .toString(),
          //           link:
          //               'https://in.linkedin.com/company/ieee-dtu' // SponsorContacts.sponsorIEEEDelSec,
          //           ),
          //       SponsorCard(
          //           bx: community,
          //           mrl: mrg,
          //           mrr: mrg,
          //           url: communitypartner['images/sponsor_graphcms.jpg']
          //               .toString(),
          //           link:
          //               'https://in.linkedin.com/company/ieee-dtu' //SponsorContacts.sponsorGraphcms,
          //           ),
          //     ],
          //   ),
          // ),
          const SizedBox(height: 15),
          buildSponsorTitle(
            title: 'MEDIA AND OUTREACH PARTNERS',
            fnt: 30.00,
            clr: Colors.white,
          ),
          mediaOutreachSponsorsGrid(width, height),
        ],
      ),
    );
  }
}
