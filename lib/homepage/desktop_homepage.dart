import 'dart:math';

import 'package:flutter/material.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:vihaan_2022/data/hyperlinks.dart';
import 'package:vihaan_2022/screensDesktop/about_us.dart';
import 'package:vihaan_2022/screensDesktop/contact_us.dart';
import 'package:vihaan_2022/screensDesktop/faq.dart';
import 'package:vihaan_2022/screensDesktop/judges.dart';
import 'package:vihaan_2022/screensDesktop/landing_page.dart';
import 'package:vihaan_2022/screensDesktop/sponsors.dart';
import 'package:vihaan_2022/screensDesktop/timeline_section.dart';
import 'package:vihaan_2022/widgets/desktop_navbar.dart';
import 'package:vihaan_2022/widgets/fancy_background_app.dart';
import 'package:vihaan_2022/widgets/vihaan_icons_icons.dart';

import '../screensDesktop/tracks.dart';

class DesktopHomePage extends StatefulWidget {
  const DesktopHomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _DesktopHomePageState();
  }
}

class _DesktopHomePageState extends State<DesktopHomePage> {
  late AutoScrollController _controller;
  final scrollDirection = Axis.vertical;

  Widget _wrapScrollTag({required int index, required Widget child}) =>
      AutoScrollTag(
        key: ValueKey(index),
        controller: _controller,
        index: index,
        child: child,
      );

  @override
  void initState() {
    _controller = AutoScrollController(axis: scrollDirection);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;
    var _height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SingleChildScrollView(
            controller: _controller,
            child: Column(
              children: [
                _wrapScrollTag(
                  index: 0,
                  child: Container(
                    color: Colors.black87,
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: Stack(children: [
                      FancyBackgroundApp(),
                      const LandingPageContent(),
                    ]),
                  ),
                ),
                _wrapScrollTag(
                  index: 1,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: const AboutUs(),
                  ),
                ),
                _wrapScrollTag(
                  index: 2,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    // height: MediaQuery.of(context).size.height * 0.7,
                    color: const Color.fromARGB(255, 209, 253, 172),
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 15),
                          child: Text(
                            'TRACKS',
                            style: TextStyle(
                                fontFamily: 'NunitoSans',
                                fontSize: 50,
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        Container(
                            height: 2,
                            color: Colors.black12,
                            margin: const EdgeInsets.fromLTRB(80, 0, 80, 10)),
                        const Padding(
                          padding: EdgeInsets.only(bottom: 20),
                          child: Align(
                            alignment: Alignment.center,
                            child: Tracks(),
                            // child: Text(
                            //   "Tracks to be revealed soon!",
                            //   style: TextStyle(
                            //     fontSize: 56,
                            //     fontFamily: 'NunitoSans',
                            //     fontWeight: FontWeight.bold,
                            //   ),
                            // ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                _wrapScrollTag(
                  index: 3,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.7,
                    color: Colors.purpleAccent,
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 15),
                          child: Text(
                            'PRIZES',
                            style: TextStyle(
                                fontFamily: 'NunitoSans',
                                fontSize: 50,
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        Container(
                            height: 2,
                            color: Colors.black12,
                            margin: const EdgeInsets.fromLTRB(80, 0, 80, 10)),
                        const Padding(
                          padding: EdgeInsets.only(bottom: 20),
                          child: Align(
                            alignment: Alignment.center,
                            // child: Prizes(),
                            child: Text(
                              "Prizes to be revealed soon!",
                              // 'Prizes over\n INR 1 crore\n To be revealed soon!!',
                              style: TextStyle(
                                fontSize: 56,
                                fontFamily: 'NunitoSans',
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 15),
                          child: Text(
                            'TIMELINE',
                            style: TextStyle(
                                fontFamily: 'NunitoSans',
                                fontSize: 50,
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          ),
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
                            // child: RevealingSoon(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                _wrapScrollTag(
                  index: 5,
                  child: Container(
                    //height: MediaQuery.of(context).size.height * 0.5,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.purpleAccent,
                    child: Column(children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Text(
                          'PREVIOUS JUDGES AND SPEAKERS',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'NunitoSans',
                              fontSize: 50,
                              color: Colors.white,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      Container(
                          height: 2,
                          color: Colors.black12,
                          margin: const EdgeInsets.fromLTRB(80, 0, 80, 10)),
                      const Align(
                        child: JudgeSection(), // RevealingSoon(),
                      ),
                    ]),
                  ),
                ),
                _wrapScrollTag(
                  index: 6,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    child: Sponsors(),
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
                //     child: const Align(child: TeamSection()),
                //   ),
                // ),
                _wrapScrollTag(
                  index: 8,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    color: Colors.black12,
                    child: const ContactUs(),
                  ),
                ),
              ],
            ),
          ),
          PreferredSize(
            preferredSize: Size(_width - 40, _height * 0.1),
            child: Stack(children: [
              Positioned(
                top: 10,
                left: 25,
                right: 25,
                child: SafeArea(
                  child: Container(
                    height: max(_height * 0.07, 48),
                    width: _width * 0.95,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black,
                    ),
                    padding: const EdgeInsets.only(
                      top: 9,
                      right: 25,
                      left: 25,
                    ),
                    child: DesktopNavbar(
                      controller: _controller,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 30,
                right: 30,
                child: FloatingActionButton(
                  onPressed: () {
                    _controller.scrollToIndex(0);
                  },
                  backgroundColor: Colors.black,
                  hoverColor: Colors.purple[800],
                  splashColor: Colors.purple,
                  hoverElevation: 10,
                  child: const Icon(
                    Icons.home,
                    size: 32,
                  ),
                ),
              )
            ]),
          ),

          // Social Media Panel
          Positioned(
            top: _height / 4,
            //left: 25,
            right: 20,
            child: Container(
              height: max(_height * 0.3, 300),
              width: max(_width * 0.03, 40),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.black,
              ),
              // padding: EdgeInsets.only(
              //   top: 9,
              //   right: 25,
              //   left: 25,
              // ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  InkWell(
                    onTap: IEEEURLS.ieeedtufb,
                    child: Icon(VihaanIcons.facebook, color: Colors.white),
                  ),
                  InkWell(
                    onTap: IEEEURLS.ieeedtuinsta,
                    child: Icon(VihaanIcons.instagram, color: Colors.white),
                  ),
                  InkWell(
                    onTap: IEEEURLS.ieeedtutwitter,
                    child: Icon(VihaanIcons.twitter, color: Colors.white),
                  ),
                  InkWell(
                    onTap: IEEEURLS.ieeedtulinkedin,
                    child: Icon(VihaanIcons.linkedin, color: Colors.white),
                  ),
                  InkWell(
                    onTap: IEEEURLS.ieeedtumail,
                    child: Icon(Icons.mail, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          // Container(
          //   height: _height,
          //   width: _width,
          //   child: DevfolioButton(),
          // ),
        ],
      ),
    );
  }
}
