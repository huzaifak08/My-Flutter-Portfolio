import 'package:flutter/material.dart';
import 'package:flutter_profile/components/animated_counter.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/responsive.dart';
import 'package:flutter_profile/screens/home/components/heigh_light.dart';

class HighLightsInfo extends StatelessWidget {
  const HighLightsInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Responsive.isMobileLarge(context)
          ? Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HeighLight(
                      counter: AnimatedCounter(value: 800, text: "+"),
                      label: "Subscribers",
                    ),
                    HeighLight(
                      counter: AnimatedCounter(value: 80, text: "+"),
                      label: "Videos",
                    ),
                  ],
                ),
                const SizedBox(height: defaultPadding),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HeighLight(
                      counter: AnimatedCounter(value: 80, text: "+"),
                      label: "GitHub Projects",
                    ),
                    HeighLight(
                      counter: AnimatedCounter(value: 13, text: "+"),
                      label: "Stars",
                    ),
                  ],
                )
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HeighLight(
                  counter: AnimatedCounter(value: 800, text: "+"),
                  label: "Subscribers",
                ),
                HeighLight(
                  counter: AnimatedCounter(value: 80, text: "+"),
                  label: "Videos",
                ),
                HeighLight(
                  counter: AnimatedCounter(value: 80, text: "+"),
                  label: "GitHub Projects",
                ),
                HeighLight(
                  counter: AnimatedCounter(value: 13, text: "+"),
                  label: "Stars",
                ),
              ],
            ),
    );
  }
}
