import 'dart:math';

import 'package:flutter/material.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:vihaan_2022/data/hyperlinks.dart';
import 'package:vihaan_2022/data/images.dart';
import 'package:vihaan_2022/screensDesktop/about_us.dart';
import 'package:vihaan_2022/screensDesktop/contact_us.dart';
import 'package:vihaan_2022/screensDesktop/faq.dart';
import 'package:vihaan_2022/screensDesktop/judges.dart';
import 'package:vihaan_2022/screensDesktop/sponsors.dart';
import 'package:vihaan_2022/screensDesktop/team.dart';
import 'package:vihaan_2022/screensDesktop/timeline_section.dart';
import 'package:vihaan_2022/screensDesktop/tracks.dart';
import 'package:vihaan_2022/screensMobile/landingpage_m.dart';
import 'package:vihaan_2022/widgets/fancy_background_app.dart';
import 'package:vihaan_2022/widgets/vihaan_icons_icons.dart';

class MobileHomePage extends StatefulWidget {
  final AutoScrollController? controller;

  const MobileHomePage({Key? key, this.controller}) : super(key: key);
  @override
  _MobileHomePageState createState() => _MobileHomePageState();
}

class _MobileHomePageState extends State<MobileHomePage> {
  final scrollDirection = Axis.vertical;

  late AutoScrollController controller;
  Widget _wrapScrollTag({required int index, required Widget child}) =>
      AutoScrollTag(
        key: ValueKey(index),
        controller: controller,
        index: index,
        child: child,
      );

  @override
  void initState() {
    super.initState();
    controller = AutoScrollController(axis: scrollDirection);
  }

  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text('VIHAAN'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.black,
              ),
              child: InkWell(
                onTap: () {
                  controller.scrollToIndex(0);
                  Navigator.pop(context);
                },
                child: Image(
                  image: NetworkImage(
                      sectionImages["images/Vihaan_Logo.png"].toString()),
                ),
              ),
            ),
            ListTile(
              title: const Text('About Us'),
              onTap: () {
                controller.scrollToIndex(1);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Tracks'),
              onTap: () {
                controller.scrollToIndex(2);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Prizes'),
              onTap: () {
                controller.scrollToIndex(3);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Timeline'),
              onTap: () {
                controller.scrollToIndex(4);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Previous Speakers'),
              onTap: () {
                controller.scrollToIndex(5);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Sponsors'),
              onTap: () {
                controller.scrollToIndex(6);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('FAQs'),
              onTap: () {
                controller.scrollToIndex(7);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Team'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TeamSection()),
                );
              },
            ),
            ListTile(
              title: const Text('Contact Us'),
              onTap: () {
                controller.scrollToIndex(9);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  InkWell(
                    onTap: IEEEURLS.ieeedtufb,
                    child: Icon(VihaanIcons.facebook, color: Colors.black),
                  ),
                  InkWell(
                    onTap: IEEEURLS.ieeedtuinsta,
                    child: Icon(VihaanIcons.instagram, color: Colors.black),
                  ),
                  InkWell(
                    onTap: IEEEURLS.ieeedtutwitter,
                    child: Icon(VihaanIcons.twitter, color: Colors.black),
                  ),
                  InkWell(
                    onTap: IEEEURLS.ieeedtulinkedin,
                    child: Icon(VihaanIcons.linkedin, color: Colors.black),
                  ),
                  InkWell(
                    onTap: IEEEURLS.ieeedtumail,
                    child: Icon(Icons.mail, color: Colors.black),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            controller: controller,
            physics: const BouncingScrollPhysics(),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _wrapScrollTag(
                  index: 0, // Landing Page
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: Stack(children: [
                      FancyBackgroundApp(),
                      const LandingPageContent(),
                    ]),
                  ),
                ),
                _wrapScrollTag(
                  index: 1, // About Us
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: const AboutUs(),
                  ),
                ),
                _wrapScrollTag(
                  index: 2, // Tracks
                  child: Container(
                    // height: MediaQuery.of(context).size.height * 0.5,
                    width: MediaQuery.of(context).size.width,
                    color: const Color.fromARGB(255, 209, 253, 172),
                    child: Column(
                      children: [
                        Text(
                          'TRACKS',
                          style: TextStyle(
                              fontFamily: 'NunitoSans',
                              fontSize: max(_width * 0.075, 50),
                              color: Colors.white,
                              fontWeight: FontWeight.w700),
                        ),
                        Container(
                            height: 2,
                            color: Colors.black12,
                            margin: const EdgeInsets.fromLTRB(80, 0, 80, 10)),
                        const Padding(
                          padding: EdgeInsets.only(bottom: 20),
                          child: Align(
                            alignment: Alignment.center,
                            child:
                                // RevealingSoon(),
                                Tracks(),
                          ),
                        ),
                        // SizedBox(
                        //   height: MediaQuery.of(context).size.height,
                        //   child: const Padding(
                        //     padding: EdgeInsets.only(bottom: 20),
                        //     child: Align(
                        //       alignment: Alignment.center,
                        //       child: Text(
                        //         "To be revealed soon!",
                        //         style: TextStyle(
                        //           fontSize: 56,
                        //           fontFamily: 'NunitoSans',
                        //           fontWeight: FontWeight.bold,
                        //         ),
                        //         textAlign: TextAlign.center,
                        //       ),
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ),
                _wrapScrollTag(
                  index: 3,
                  child: Container(
                    // height: MediaQuery.of(context).size.height * 0.75,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.purpleAccent,
                    child: Column(
                      children: [
                        Text(
                          'PRIZES',
                          style: TextStyle(
                              fontFamily: 'NunitoSans',
                              fontSize: max(_width * 0.075, 50),
                              color: Colors.white,
                              fontWeight: FontWeight.w700),
                        ),
                        Container(
                            height: 2,
                            color: Colors.black12,
                            margin: const EdgeInsets.fromLTRB(80, 0, 80, 10)),
                        SizedBox(
                          height: MediaQuery.of(context).size.height,
                          child: const Padding(
                            padding: EdgeInsets.only(bottom: 20),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                // 'Prizes over\n INR 1 Crore\n To be revealed soon!!',
                                "To be revealed soon!",
                                style: TextStyle(
                                  fontSize: 56,
                                  fontFamily: 'NunitoSans',
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              // child: Prizes(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                _wrapScrollTag(
                  index: 4,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    color: Colors.amber,
                    child: Column(
                      children: [
                        Text(
                          'TIMELINE',
                          style: TextStyle(
                              fontFamily: 'NunitoSans',
                              fontSize: max(_width * 0.075, 60),
                              color: Colors.white,
                              fontWeight: FontWeight.w700),
                        ),
                        Container(
                            height: 2,
                            color: Colors.black12,
                            margin: const EdgeInsets.fromLTRB(80, 0, 80, 10)),
                        const Padding(
                          padding: EdgeInsets.only(bottom: 20),
                          child: Align(
                            alignment: Alignment.center,
                            child: TimelineSection(),
                          ),
                        ),
                        // Padding(
                        //   padding: EdgeInsets.only(bottom: 20),
                        //   child: ElevatedButton(
                        //     child: Padding(
                        //       padding: const EdgeInsets.all(8.0),
                        //       child: Text(
                        //         "Download Itenary",
                        //         textAlign: TextAlign.center,
                        //         style: TextStyle(
                        //           fontWeight: FontWeight.bold,
                        //           fontSize: 20,
                        //           letterSpacing: 0.4,
                        //         ),
                        //       ),
                        //     ),
                        //     style: ButtonStyle(
                        //       alignment: Alignment.center,
                        //     ),
                        //     onPressed: () {},
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ),
                _wrapScrollTag(
                  index: 5,
                  child: Container(
                    // height: MediaQuery.of(context).size.height * 0.5,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.purpleAccent,
                    child: Column(
                      children: [
                        Text(
                          'PREVIOUS JUDGES AND SPEAKERS',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'NunitoSans',
                              fontSize: max(_width * 0.075, 50),
                              color: Colors.white,
                              fontWeight: FontWeight.w700),
                        ),
                        Container(
                            height: 2,
                            color: Colors.black12,
                            margin: const EdgeInsets.fromLTRB(80, 0, 80, 10)),
                        const Padding(
                          padding: EdgeInsets.only(bottom: 20),
                          child: Align(
                            alignment: Alignment.center,
                            child: JudgeSection(), // RevealingSoon(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                _wrapScrollTag(
                  index: 6,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    child: const Sponsors(),
                  ),
                ),
                _wrapScrollTag(
                  index: 7,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    child: const Faq(),
                  ),
                ),
                // _wrapScrollTag(
                //   index: 8,
                //   child: Container(
                //     width: MediaQuery.of(context).size.width,
                //     color: Colors.greenAccent,
                //     child: const TeamSection(),
                //   ),
                // ),
                _wrapScrollTag(
                  index: 9,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    color: Colors.black12,
                    child: const ContactUs(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
