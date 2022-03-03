import 'dart:math';

import 'package:flutter/material.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vihaan_2022/data/teamData.dart';

import '../widgets/vihaan_icons_icons.dart';

// TODO: Alag panna banana h jo mujhe nhi aata kaise krte h :)
class TeamSection extends StatefulWidget {
  const TeamSection({Key? key}) : super(key: key);

  @override
  State<TeamSection> createState() => _TeamSectionState();
}

class _TeamSectionState extends State<TeamSection> {
  late AutoScrollController _controller;
  final scrollDirection = Axis.vertical;
  @override
  void initState() {
    _controller = AutoScrollController(axis: scrollDirection);
    super.initState();
  }

  Widget profileCard({
    required String name,
    required String position,
    required String imageAddress,
    String? linkedInAddress,
    String? facebookAddress,
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
                style: const TextStyle(color: Colors.white, fontSize: 12),
                textAlign: TextAlign.center,
                maxLines: 2,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                if (linkedInAddress != null)
                  InkWell(
                    onTap: () => launch(linkedInAddress),
                    child:
                        const Icon(VihaanIcons.linkedin, color: Colors.white),
                  ),
                if (linkedInAddress != null && facebookAddress != null)
                  const SizedBox(width: 5),
                if (facebookAddress != null)
                  InkWell(
                    onTap: () {},
                    child: const Icon(
                      VihaanIcons.facebook,
                      color: Colors.white,
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

    List<Widget> teamMemberInfo = [];
    for (int i = 0; i < ieeeDtuMembers.length; i++) {
      teamMemberInfo.add(
        profileCard(
          name: ieeeDtuMembers[i]["name"].toString(),
          position: ieeeDtuMembers[i]["position"].toString(),
          imageAddress: ieeeDtuMembers[i]["image"].toString(),
          linkedInAddress: ieeeDtuMembers[i]["linkedIn"].toString(),
        ),
      );
    }

    return Scaffold(
      body: SingleChildScrollView(
        controller: _controller,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  backgroundColor: Colors.black,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_back,
                  ),
                ),
                Text(
                  'OUR TEAM',
                  style: TextStyle(
                      fontFamily: 'NunitoSans',
                      fontSize: max(width * 0.075, 60),
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
            Container(
                height: 2,
                color: Colors.black12,
                margin: const EdgeInsets.fromLTRB(80, 0, 80, 10)),
            Container(
              margin: EdgeInsets.symmetric(horizontal: (width >= 800) ? 32 : 8),
              child: GridView.count(
                crossAxisSpacing:
                    (width >= 800) ? (width >= 1000 ? 48 : 28) : 8,
                primary: false,
                shrinkWrap: true,
                crossAxisCount: (width > 350)
                    ? ((width > 600) ? ((width >= 800) ? 4 : 3) : 2)
                    : 1,
                childAspectRatio: (itemWidth / itemHeight),
                children: [
                  for (int i = 0; i < ieeeDtuMembers.length; i++)
                    profileCard(
                      name: ieeeDtuMembers[i]["name"].toString(),
                      position: ieeeDtuMembers[i]["position"].toString(),
                      imageAddress: ieeeDtuMembers[i]["image"].toString(),
                      linkedInAddress: ieeeDtuMembers[i]["linkedIn"].toString(),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
