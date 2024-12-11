import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../responsive.dart';

class Banner_home extends StatelessWidget {
  const Banner_home({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Responsive.isTablet(context)
          ? const EdgeInsets.only(right: defaultPadding * 1.5)
          : Responsive.isDesktop4(context)
              ? const EdgeInsets.only(right: defaultPadding * 1.4)
              : const EdgeInsets.only(right: 0),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/bg.jpeg",
            fit: BoxFit.cover,
          ),
          Container(
            color: darkColor.withOpacity(0.7),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding / 2),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      overflow: TextOverflow.ellipsis,
                      'Discover My Amazing',
                      style: Responsive.isDesktop(context)
                          ? const TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                            )
                          :Responsive.isMobile(context)
                          ? const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                      ): const TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                            ),
                    ),
                    Transform.translate(
                      offset: const Offset(-13, -5),
                      child: Text(
                        ' Art Space!',
                        style: Responsive.isDesktop(context)
                            ? const TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.w900,
                                color: Colors.white,
                              )
                            : Responsive.isMobile(context)
                          ? const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                      ):const TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.w900,
                                color: Colors.white,
                              ),
                      ),
                    ),
                  ],
                ),
                DefaultTextStyle(
                    style:  TextStyle(
                        color: Colors.white,
                        fontWeight:Responsive.isMobile(context)? FontWeight.w500:FontWeight.w800,
                        fontSize: Responsive.isMobile(context)?12.5:19),
                    child: Row(
                      children: [
                        const Text.rich(TextSpan(text: "<", children: [
                          TextSpan(
                            text: "Flutter",
                            style: TextStyle(color: primaryColor),
                          ),
                          TextSpan(text: ">"),
                        ])),
                        const SizedBox(
                          width: defaultPadding / 3,
                        ),
                        AnimatedTextKit(animatedTexts: [

                          TyperAnimatedText(
                              "Transforming ideas into functional digital applications.",
                              speed: const Duration(milliseconds: 60)),
                          TyperAnimatedText(
                              "Developing cross-platform apps with consistent quality.",
                              speed: const Duration(milliseconds: 60)),
                          TyperAnimatedText(
                              "I build Responsive web and mobile applications.",
                              speed: const Duration(milliseconds: 60)),
                        ]),
                        const SizedBox(
                          width: defaultPadding / 3,
                        ),
                        const Text.rich(TextSpan(text: "<", children: [
                          TextSpan(
                            text: "Flutter",
                            style: TextStyle(color: primaryColor),
                          ),
                          TextSpan(text: ">"),
                        ])),
                      ],
                    )),
                 SizedBox(
                  height: Responsive.isMobile(context)?defaultPadding/3:defaultPadding,
                ),
                ElevatedButton(
                    style: TextButton.styleFrom(
                      padding:  EdgeInsets.symmetric(
                          horizontal: Responsive.isMobile(context)?Material.defaultSplashRadius/2 :Material.defaultSplashRadius * 1.7,
                          vertical:Responsive.isMobile(context)?defaultPadding/2 : defaultPadding * 1.3),
                      backgroundColor: primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            6), // No rounding (square corners)
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'EXPLORE NOW',
                      style: Responsive.isMobile(context)?TextStyle(
                          color: darkColor, fontWeight: FontWeight.bold)
                    :TextStyle(
                          color: darkColor, fontWeight: FontWeight.bold),
                    ))

              ],
            ),
          ),
        ],
      ),
    );
  }
}
