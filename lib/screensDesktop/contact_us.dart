import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_conditional_rendering/flutter_conditional_rendering.dart';
import 'package:vihaan_2022/data/hyperlinks.dart';
import 'package:vihaan_2022/data/images.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;

    return Container(
      padding: const EdgeInsets.only(top: 32, bottom: 16),
      color: Colors.black,
      child: Column(
        children: Conditional.list(
          context: context,
          conditionBuilder: (BuildContext context) => (_width >= 800) == true,
          widgetBuilder: (BuildContext context) => [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Flexible(
                  flex: 2,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Flexible(
                            flex: 2,
                            child: Container(
                              constraints: const BoxConstraints(maxHeight: 200),
                              child: Image.network(
                                sectionImages['images/IEEE_DTU_Logo.png']
                                    .toString(),
                                color: Colors.white70,
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            child: Container(
                              constraints: const BoxConstraints(maxHeight: 200),
                              child: Image.network(
                                sectionImages['images/WIE_Logo_Black.png']
                                    .toString(),
                                color: Colors.white70,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Flexible(
                            flex: 2,
                            child: Container(
                              constraints: const BoxConstraints(maxHeight: 200),
                              child: Image.network(
                                sectionImages['images/IEEE_DTU_Logo.png']
                                    .toString(),
                                color: Colors.white70,
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            child: Container(
                              constraints: const BoxConstraints(maxHeight: 200),
                              child: Image.network(
                                sectionImages['images/WIE_Logo_Black.png']
                                    .toString(),
                                color: Colors.white70,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Flexible(
                  flex: 3,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: buildPiyushDetails(),
                      )
                    ],
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: buildPriyanshDetails(),
                      )
                    ],
                  ),
                )
              ],
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'This website has been developed with ',
                    style: TextStyle(fontSize: 16, color: Colors.white70),
                  ),
                  RichText(
                    text: const TextSpan(
                      text: '❤',
                      style: TextStyle(fontSize: 25, color: Colors.red),
                    ),
                  ),
                  const Text(
                    ' by ',
                    style: TextStyle(fontSize: 16, color: Colors.white70),
                  ),
                  const Text(
                    'members of IEEE DTU',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white70,
                      decorationThickness: 0.7,
                    ),
                  ),
                ],
              ),
            ),
            const Center(
              child: Text(
                '© 2022 IEEE DTU',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
            ),
          ],
          fallbackBuilder: (BuildContext context) => <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                  flex: 2,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Flexible(
                            flex: 2,
                            child: Container(
                              constraints: const BoxConstraints(maxHeight: 200),
                              child: Image.network(
                                sectionImages['images/IEEE_DTU_Logo.png']
                                    .toString(),
                                color: Colors.white70,
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            child: Container(
                              constraints: const BoxConstraints(maxHeight: 200),
                              child: Image.network(
                                sectionImages['images/WIE_Logo_Black.png']
                                    .toString(),
                                color: Colors.white70,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Flexible(
                            flex: 2,
                            child: Container(
                              constraints: const BoxConstraints(maxHeight: 200),
                              child: Image.network(
                                sectionImages['images/IEEE_DTU_Logo.png']
                                    .toString(),
                                color: Colors.white70,
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            child: Container(
                              constraints: const BoxConstraints(maxHeight: 200),
                              child: Image.network(
                                sectionImages['images/WIE_Logo_Black.png']
                                    .toString(),
                                color: Colors.white70,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Flexible(
                  flex: 2,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: buildPiyushDetails(),
                      )
                    ],
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: buildPriyanshDetails(),
                      )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(height: 40),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'This website has been',
                    style: TextStyle(fontSize: 16, color: Colors.white70),
                  ),
                  Column(
                    children: [
                      const Text(
                        'developed',
                        style: TextStyle(fontSize: 16, color: Colors.white70),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'with ',
                            style:
                                TextStyle(fontSize: 16, color: Colors.white70),
                          ),
                          RichText(
                            text: const TextSpan(
                              text: '❤',
                              style: TextStyle(fontSize: 25, color: Colors.red),
                            ),
                          ),
                          const Text(
                            ' by ',
                            style:
                                TextStyle(fontSize: 16, color: Colors.white70),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Text(
                    'members of IEEE DTU',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white70,
                      decorationThickness: 0.7,
                    ),
                  ),
                ],
              ),
            ),
            const Center(
              child: Text(
                '© 2021 IEEE DTU',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
            ),
          ],
        ),
      ),
    );
  }

  final contactUsTextStyle = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w200,
    height: 1.3,
  );

  final contactUsNameTextStyle = const TextStyle(
    color: Colors.white70,
    fontFamily: 'NunitoSans',
    fontWeight: FontWeight.bold,
    fontSize: 22,
    height: 1.2,
  );
  final emailUsNameTextStyle = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w200,
    height: 1.3,
    decoration: TextDecoration.underline,
    decorationThickness: 2,
  );

  RichText buildPriyanshDetails() {
    return RichText(
      text: TextSpan(
        text: 'Priyansh Tyagi',
        children: [
          TextSpan(
            text: '\nLead Organizer, VIHAAN',
            style: contactUsTextStyle,
          ),
          TextSpan(
            text: '\nMembership Coordinator, IEEE DTU',
            style: contactUsTextStyle,
          ),
          TextSpan(
            text: '\nTechnical Activities Coordinator, IEEE Delhi SSN',
            style: contactUsTextStyle,
          ),
          TextSpan(
            text: '\n+91 88262 77762',
            style: contactUsTextStyle,
          ),
          TextSpan(
            text: '\npriyansh.tyagi@ieee.org',
            style: emailUsNameTextStyle,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                ContactMails.priyanshEmail();
              },
          ),
        ],
        style: contactUsNameTextStyle,
      ),
    );
  }

  RichText buildPiyushDetails() {
    return RichText(
      text: TextSpan(
        text: 'Piyush Kumar Sahoo',
        children: [
          TextSpan(
            text: '\nLead Organizer, VIHAAN',
            style: contactUsTextStyle,
          ),
          TextSpan(
            text: '\nMembership & Event Coordinator, IEEE DTU',
            style: contactUsTextStyle,
          ),
          TextSpan(
            text: '\nSection Student Representative, IEEE Delhi SSN',
            style: contactUsTextStyle,
          ),
          TextSpan(
            text: '\n+91 79827 64251',
            style: contactUsTextStyle,
          ),
          TextSpan(
            text: '\npiyushkrsahoo@ieee.org',
            style: emailUsNameTextStyle,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                ContactMails.piyushEmail();
              },
          ),
        ],
        style: contactUsNameTextStyle,
      ),
    );
  }
}
