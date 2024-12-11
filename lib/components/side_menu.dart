import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../constants.dart';
import '../responsive.dart';
import 'package:flutter_svg/flutter_svg.dart';
class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFF191923),
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 1.23,
            child: Container(
              color: const Color(0xff242430),
              child:  Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    SizedBox(height: Responsive.isDesktop1(context) ? 10:15),
                    GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return Dialog(
                              backgroundColor: Colors.black.withOpacity(0.9),
                              insetPadding: EdgeInsets.all(20),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Image.asset(
                                      "assets/images/1.jpeg", // Path to your image
                                      fit: BoxFit.cover,
                                    ),
                                    Positioned(
                                      top: 10,
                                      right: 10,
                                      child: IconButton(
                                        icon: Icon(Icons.close, color: Colors.white),
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                      child: CircleAvatar(
                        radius:Responsive.isDesktop1(context)?39:Responsive.isDesktop3(context)?45: Responsive.isDesktop2(context)?50:Responsive.isDesktop(context)?55:55,
                        backgroundImage: AssetImage("assets/images/1.jpeg"),
                      ),
                    ),
                    SizedBox(height:  Responsive.isDesktop1(context) ? 8:Responsive.isDesktop3(context) ?10:Responsive.isDesktop2(context) ?12:14 ),
                    Text(
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      'ZAEEM AKHTAR',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: Responsive.isDesktop1(context) ?14:Responsive.isDesktop2(context) ?15:16,
                          color: Colors.white),
                    ),
                    SizedBox(height: 4),
                    Flexible(
                      child: Text(
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        'Your Go-To Flutter Developer for Stunning Mobile and Web Apps',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w200,
                            fontSize: Responsive.isDesktop1(context) ? 11:Responsive.isDesktop3(context) ?12:Responsive.isDesktop3(context) ?13:14,
                      
                            color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Residence',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'Pakistan',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'City',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'Gujranwala',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Age',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        '20 years',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Divider(),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Text(
                      'Skills',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.white),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Column(
                            children: [
                              AspectRatio(
                                  aspectRatio: 1,
                                  child: TweenAnimationBuilder(
                                    tween: Tween<double>(
                                        begin: 0, end: 0.8),
                                    duration: defaultDuration,
                                    builder: (context, double value,
                                        child) =>
                                        Stack(
                                          fit: StackFit.expand,
                                          children: [
                                            CircularProgressIndicator(
                                              value: value,
                                              color: primaryColor,
                                              backgroundColor: darkColor,
                                            ),
                                            Center(
                                                child: Text(
                                                  (value * 100)
                                                      .toInt()
                                                      .toString() +
                                                      "%",
                                                  style: const TextStyle(
                                                      color: Colors.white),
                                                )),
                                          ],
                                        ),
                                  )),
                              const SizedBox(
                                height: defaultPadding / 2,
                              ),
                              const Text(
                                'Flutter',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          )),
                      const SizedBox(
                        width: defaultPadding,
                      ),
                      Expanded(
                          child: Column(
                            children: [
                              AspectRatio(
                                  aspectRatio: 1,
                                  child: TweenAnimationBuilder(
                                    tween: Tween<double>(
                                        begin: 0, end: 0.6),
                                    duration: defaultDuration,
                                    builder: (context, double value,
                                        child) =>
                                        Stack(
                                          fit: StackFit.expand,
                                          children: [
                                            CircularProgressIndicator(
                                              value: value,
                                              color: primaryColor,
                                              backgroundColor: darkColor,
                                            ),
                                            Center(
                                                child: Text(
                                                  (value * 100)
                                                      .toInt()
                                                      .toString() +
                                                      "%",
                                                  style: const TextStyle(
                                                      color: Colors.white),
                                                )),
                                          ],
                                        ),
                                  )),
                              const SizedBox(
                                height: defaultPadding / 2,
                              ),
                              const Text(
                                'Database',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          )),
                      const SizedBox(
                        width: defaultPadding,
                      ),
                      Expanded(
                          child: Column(
                            children: [
                              AspectRatio(
                                  aspectRatio: 1,
                                  child: TweenAnimationBuilder(
                                    tween: Tween<double>(
                                        begin: 0, end: .70),
                                    duration: defaultDuration,
                                    builder: (context, double value,
                                        child) =>
                                        Stack(
                                          fit: StackFit.expand,
                                          children: [
                                            CircularProgressIndicator(
                                              value: value,
                                              color: primaryColor,
                                              backgroundColor: darkColor,
                                            ),
                                            Center(
                                                child: Text(
                                                  (value * 100)
                                                      .toInt()
                                                      .toString() +
                                                      "%",
                                                  style: const TextStyle(
                                                      color: Colors.white),
                                                )),
                                          ],
                                        ),
                                  )),
                              const SizedBox(
                                height: defaultPadding / 2,
                              ),
                              const Text(
                                'Firebase',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Divider(
                    color: Colors.grey,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Text(
                      'Coding',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TweenAnimationBuilder(
                      tween: Tween<double>(begin: 0, end: 0.6),
                      duration: defaultDuration,
                      builder: (context, double value, child) =>
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment
                                    .spaceBetween,
                                children: [
                                  const Text(
                                    'Java',
                                    style: TextStyle(
                                        color: Colors.white),
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    (value * 100)
                                        .toInt()
                                        .toString() +
                                        "%",
                                    style: const TextStyle(
                                        color: Colors.grey),
                                  ),
                                ],
                              ),
                              LinearProgressIndicator(
                                value: value,
                                color: primaryColor,
                                backgroundColor: darkColor,
                              ),
                            ],
                          )),
                  const SizedBox(
                    height: defaultPadding,
                  ),
                  TweenAnimationBuilder(
                      tween: Tween<double>(begin: 0, end: 0.8),
                      duration: defaultDuration,
                      builder: (context, double value, child) =>
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment
                                    .spaceBetween,
                                children: [
                                  const Text(
                                    'Dart',
                                    style: TextStyle(
                                        color: Colors.white),
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    (value * 100)
                                        .toInt()
                                        .toString() +
                                        "%",
                                    style: const TextStyle(
                                        color: Colors.grey),
                                  ),
                                ],
                              ),
                              LinearProgressIndicator(
                                value: value,
                                color: primaryColor,
                                backgroundColor: darkColor,
                              ),
                            ],
                          )),
                  const SizedBox(
                    height: defaultPadding,
                  ),
                  TweenAnimationBuilder(
                      tween: Tween<double>(begin: 0, end: 0.75),
                      duration: defaultDuration,
                      builder: (context, double value, child) =>
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment
                                    .spaceBetween,
                                children: [
                                  const Text(
                                    'C++',
                                    style: TextStyle(
                                        color: Colors.white),
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    (value * 100)
                                        .toInt()
                                        .toString() +
                                        "%",
                                    style: const TextStyle(
                                        color: Colors.grey),
                                  ),
                                ],
                              ),
                              LinearProgressIndicator(
                                value: value,
                                color: primaryColor,
                                backgroundColor: darkColor,
                              ),
                            ],
                          )),
                  const SizedBox(
                    height: defaultPadding,
                  ),
                  TweenAnimationBuilder(
                      tween: Tween<double>(begin: 0, end: 0.90),
                      duration: defaultDuration,
                      builder: (context, double value, child) =>
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment
                                    .spaceBetween,
                                children: [
                                  const Text(
                                    'Html/CSS',
                                    style: TextStyle(
                                        color: Colors.white),
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    (value * 100)
                                        .toInt()
                                        .toString() +
                                        "%",
                                    style: const TextStyle(
                                        color: Colors.grey),
                                  ),
                                ],
                              ),
                              LinearProgressIndicator(
                                value: value,
                                color: primaryColor,
                                backgroundColor: darkColor,
                              ),
                            ],
                          )),
                  const SizedBox(
                    height: defaultPadding,
                  ),
                  TweenAnimationBuilder(
                      tween: Tween<double>(begin: 0, end: 0.4),
                      duration: defaultDuration,
                      builder: (context, double value, child) =>
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment
                                    .spaceBetween,
                                children: [
                                  const Text(
                                    'Javascript',
                                    style: TextStyle(
                                        color: Colors.white),
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    (value * 100)
                                        .toInt()
                                        .toString() +
                                        "%",
                                    style: const TextStyle(
                                        color: Colors.grey),
                                  ),
                                ],
                              ),
                              LinearProgressIndicator(
                                value: value,
                                color: primaryColor,
                                backgroundColor: darkColor,
                              ),
                            ],
                          )),
                  const SizedBox(
                    height: defaultPadding,
                  ),
                  TweenAnimationBuilder(
                      tween: Tween<double>(begin: 0, end: 0.10),
                      duration: defaultDuration,
                      builder: (context, double value, child) =>
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment
                                    .spaceBetween,
                                children: [
                                  const Text(
                                    'Kotlin',
                                    style: TextStyle(
                                        color: Colors.white),
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    (value * 100)
                                        .toInt()
                                        .toString() +
                                        "%",
                                    style: const TextStyle(
                                        color: Colors.grey),
                                  ),
                                ],
                              ),
                              LinearProgressIndicator(
                                value: value,
                                color: primaryColor,
                                backgroundColor: darkColor,
                              ),
                            ],
                          )),
                  const SizedBox(
                    height: 20,
                  ),
                  const Divider(),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 13),
                    child: Text(
                      'knowledge',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.white),
                    ),
                  ),
                  Row(
                    children: [
                      SvgPicture.asset("assets/icons/check.svg"),
                      const SizedBox(
                        width: defaultPadding / 2,
                      ),
                      const Text(
                        'Flutter framework',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      SvgPicture.asset("assets/icons/check.svg"),
                      const SizedBox(
                        width: defaultPadding / 2,
                      ),
                      const Text(
                        'PF/OOP/Data Structure',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      SvgPicture.asset("assets/icons/check.svg"),
                      const SizedBox(
                        width: defaultPadding / 2,
                      ),
                      const Text(
                        'Git/Github Knowledge',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      SvgPicture.asset("assets/icons/check.svg"),
                      const SizedBox(
                        width: defaultPadding / 2,
                      ),
                      const Text(
                        'Dart programming language',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      SvgPicture.asset("assets/icons/check.svg"),
                      const SizedBox(
                        width: defaultPadding / 2,
                      ),
                      const Text(
                        'Mobile Application developmant',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      SvgPicture.asset("assets/icons/check.svg"),
                      const SizedBox(
                        width: defaultPadding / 2,
                      ),
                      const Text(
                        'Web-Application development',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: defaultPadding,
                  ),
                  const Divider(),
                  const SizedBox(
                    height: defaultPadding / 2,
                  ),
                  Center(
                    child: TextButton(
                        onPressed: () {},
                        child: FittedBox(
                          child: Row(
                            children: [
                              const Text(
                                "Download CV",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey),
                              ),
                              const SizedBox(
                                width: defaultPadding / 2,
                              ),
                              SvgPicture.asset(
                                  "assets/icons/download.svg"),
                            ],
                          ),
                        )),
                  ),
                  const SizedBox(
                    height: defaultPadding / 3,
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                        top: defaultPadding / 2),
                    color: const Color(0xFF24242E),
                    child: Row(
                      children: [
                        const Spacer(),
                        IconButton(
                          onPressed: () async {
                            const url =
                                'https://www.linkedin.com/in/zaeem-akhtar-124751340/?trk=opento_sprofile_pfeditor';
                            if (await canLaunch(url)) {
                              await launch(url);
                            } else {
                              throw 'Could not launch $url';
                            }
                          },
                          icon: SvgPicture.asset(
                            "assets/icons/linkedin.svg",
                            color: Colors.blue, // Optional: Add a default icon color
                          ),
                          tooltip: 'Visit LinkedIn Profile',
                        ),
                        IconButton(
                          onPressed: () async {
                            const url =
                                'https://github.com/ZAEEM1014';
                            if (await canLaunch(url)) {
                              await launch(url);
                            } else {
                              throw 'Could not launch $url';
                            }
                          },
                          icon: SvgPicture.asset(
                            "assets/icons/github.svg",
                            color: Colors.black, // Optional: Add a default icon color
                          ),
                          tooltip: 'Visit Github Profile',
                        ),

                        IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(
                                "assets/icons/twitter.svg")),
                        const Spacer(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
