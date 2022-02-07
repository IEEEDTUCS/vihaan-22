import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

import '../data/timeline_data.dart';

class TimelineSection extends StatefulWidget {
  const TimelineSection({Key? key}) : super(key: key);

  @override
  _TimelineSectionState createState() => _TimelineSectionState();
}

class _TimelineSectionState extends State<TimelineSection> {
  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;
    return Center(
      child: FixedTimeline.tileBuilder(
        theme: TimelineThemeData(
          nodeItemOverlap: true,
          connectorTheme: const ConnectorThemeData(
            color: Color(0xffe6e7e9),
            thickness: 8.0,
          ),
        ),
        builder: TimelineTileBuilder.connectedFromStyle(
          contentsAlign: ContentsAlign.alternating,
          oppositeContentsBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text(
                timelineData[index]["date"].toString(),
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  fontFamily: 'LeagueSpartan',
                ),
              ),
            );
          },
          contentsBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(
                  top: 20.0, bottom: 20.0, left: 8.0, right: 8.0),
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 28.0, bottom: 20.0, left: 15.0, right: 15.0),
                        child: Text(
                          timelineData[index]["heading"].toString(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: (_width >= 800) ? _width * 0.02 : 15,
                            fontFamily: 'LeagueSpartan',
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            bottom: 28.0, left: 15.0, right: 15.0),
                        child: Text(
                          timelineData[index]["description"].toString(),
                          style: TextStyle(
                              fontSize: (_width >= 800) ? _width * 0.015 : 14),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
          connectorStyleBuilder: (context, index) => ConnectorStyle.solidLine,
          indicatorStyleBuilder: (context, index) => IndicatorStyle.dot,
          itemCount: timelineData.length,
        ),
      ),
    );
  }
}
