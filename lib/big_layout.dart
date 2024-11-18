import 'package:flutter/material.dart';
import 'package:responsive_ui/responsive_ui.dart';
import 'package:yt_layout/custom_card_2.dart';

import 'custom_card.dart';
import 'video_meta_data.dart';

class BigLayout extends StatefulWidget {
  const BigLayout({super.key});

  @override
  State<BigLayout> createState() => _BigLayoutState();
}

class _BigLayoutState extends State<BigLayout> {
  @override
  Widget build(BuildContext context) {
    return Responsive(
      children: <Widget>[
        Div(
          divison: Division(
            colM: 8,
            colS: 12,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 640,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(255, 58, 58, 58),
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(12.0),
                    color: const Color.fromARGB(255, 216, 255, 236),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 200,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(255, 58, 58, 58),
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: VideoMetaData(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 640,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(255, 58, 58, 58),
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(12.0),
                    color: const Color.fromARGB(255, 216, 255, 236),
                  ),
                ),
              ),
            ],
          ),
        ),
        Div(
          divison: Division(
            colL: 3,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: List.generate(
                20,
                (index) => Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: CustomCard(),
                ),
              ), // Generates 11 CustomCard widgets
            ),
          ),
        ),
      ],
    );
  }
}
