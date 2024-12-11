import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_web/components/banner.dart';
import '../components/contact_us.dart';
import '../components/side_menu.dart';

import 'package:portfolio_web/constants.dart';
import 'package:portfolio_web/models/project.dart';
import 'package:portfolio_web/responsive.dart';


class MainScreen extends StatelessWidget {




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:Responsive.isDesktop(context)
          ?null
          : AppBar(
        leading: Builder(
            builder: (context) => IconButton(
                  onPressed: () {

                    Scaffold.of(context).openDrawer();
                  },
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                )),
        backgroundColor: bgColor,
      ),
      drawer:SideMenu(),

      backgroundColor: const Color(0xFF1E1E28),
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: maxWidth),
          child: Row(
            children: [
              if (Responsive.isDesktop(context))
              const Expanded(
                  flex: 2,
                  child: SideMenu()),
              const SizedBox(
                width: defaultPadding,
              ),
              Expanded(
                  flex: 7,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const AspectRatio(
                          aspectRatio: 3,
                          child: Banner_home(),
                        ),
                        Padding(
                          padding:Responsive.isTablet(context)?const EdgeInsets.only(right:defaultPadding*1.5,top: defaultPadding/3):Responsive.isDesktop4(context)?const EdgeInsets.only(right:defaultPadding*1.4,top: defaultPadding/3):const EdgeInsets.only(right:0,top: defaultPadding/3),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  TweenAnimationBuilder(
                                    tween: IntTween(begin: 0, end: 10),
                                    duration: const Duration(seconds: 1),
                                    builder: (context, value, child) => Text(
                                      '$value +',
                                      style:  TextStyle(
                                          color: primaryColor,
                                          fontSize: Responsive.isMobile(context)?16:20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: defaultPadding / 2,
                                  ),
                                   Text(
                                    'Skills',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: Responsive.isMobile(context)?14:16,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              /* Row(
                                children: [
                                  TweenAnimationBuilder(
                                    tween: IntTween(begin: 0, end: 119),
                                    duration: Duration(seconds: 1),
                                    builder: (context, value, child) => Text(
                                      'Software Engineer',
                                      style: TextStyle(
                                          color: primaryColor,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),


                                  ),

                                ],
                              ),*/
                              Row(
                                children: [
                                  TweenAnimationBuilder(
                                    tween: IntTween(begin: 0, end: 20),
                                    duration: const Duration(seconds: 1),
                                    builder: (context, value, child) => Text(
                                      '$value +',
                                      style:  TextStyle(
                                          color: primaryColor,
                                          fontSize:Responsive.isMobile(context)?16:20 ,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),

                                  const SizedBox(
                                    width: defaultPadding / 2,
                                  ),
                                   Text(
                                    'GitHub Project',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: Responsive.isMobile(context)?14:16,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                         Padding(
                          padding: Responsive.isMobile(context)?const EdgeInsets.only(top: defaultPadding, bottom: 0,left: 3):const EdgeInsets.only(top: defaultPadding, bottom: defaultPadding/2,left: 3),
                          child: Text(
                            'My Projects',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: Responsive.isMobile(context)?22:28,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: Responsive.isTablet(context)?const EdgeInsets.only(right:defaultPadding*1.5,top:defaultPadding,bottom: defaultPadding):Responsive.isDesktop4(context)?const EdgeInsets.only(right:defaultPadding*1.4,top:defaultPadding*2,bottom: defaultPadding,):Responsive.isMobile(context)?const EdgeInsets.only(top: defaultPadding/4, bottom: defaultPadding,left: 3):const EdgeInsets.only(right:0),

                          child: GridView.builder(
                            shrinkWrap: true,
                            physics:    const NeverScrollableScrollPhysics(),
                            itemCount: demo_projects.length,
                            gridDelegate:
                                 SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: Responsive.isMobile(context)?2:3,
                              childAspectRatio: 1.3,
                              crossAxisSpacing: defaultPadding,
                              mainAxisSpacing: defaultPadding,
                            ),
                            itemBuilder: (context, index) {
                              final project = demo_projects[index];
                              return Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(00),
                                ), // Dark card background
                                color: darkColor,
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        project.title!,
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                       SizedBox(height: 10),
                                      Expanded(
                                        child: Text(
                                          project.description!,
                                          style: TextStyle(
                                            color: Colors.grey[400],
                                            fontSize: 14,
                                          ),
                                          maxLines:  Responsive.isMobile(context)?3:5,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      Align(
                                        alignment: Alignment.bottomRight,
                                        child: Expanded(
                                          child: TextButton(
                                            onPressed: () {

                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      ProjectDetailScreen(
                                                    title: project.title!,
                                                    description:
                                                    project.description!,
                                                  ),
                                                ),
                                              );
                                            },
                                            style: TextButton.styleFrom(
                                              foregroundColor: Colors.orange,
                                            ),
                                            child: const Text('Read More >>'),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        SizedBox(height: defaultPadding*4,),
                        Divider(),

                        const Padding(
                          padding: EdgeInsets.only(top: defaultPadding, bottom: defaultPadding/2,left: defaultPadding),
                          child: Text(
                            'Contact_Us',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        ContactUsBlock(),


                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

class ProjectDetailScreen extends StatelessWidget {
  final String title;
  final String description;

  ProjectDetailScreen({required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Center(
          child: Text(
            title,

            style: const TextStyle(color: Color(0xFFFFC107),fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: Colors.black,
        actions: [
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: IconButton(
              icon: Icon(Icons.close, color: Colors.white),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
      body:

      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          description,
          style: const TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),


    );
  }
}
