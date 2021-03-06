// ignore_for_file: camel_case_types,prefer_const_literals_to_create_immutables, prefer_const_constructors, file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:placementcracker/helper/general.dart';
import 'package:placementcracker/url/UrlLinks.dart';
import 'package:url_launcher/url_launcher.dart';

class resume extends StatefulWidget {
  const resume({Key? key}) : super(key: key);

  @override
  State<resume> createState() => _resumeState();
}

class _resumeState extends State<resume> {
  // ignore: unnecessary_new
  General general = new General();
  // ignore: unnecessary_new
  URL url = new URL();

  launchURLForResume(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Resume Tips',
          style: GoogleFonts.roboto(),
        ),
        centerTitle: true,
        backgroundColor: Colors.indigo.shade300,
      ),
      body: SafeArea(
          child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(gradient: general.backgroundColor),
        child: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              Text(
                '1. Only add useful links at the top.',
                style: GoogleFonts.roboto(fontSize: 22),
              ),
              SizedBox(
                height: 10,
              ),
              Image.asset(
                'Assets/images/arrow.png',
                height: 170,
              ),
              SizedBox(
                height: 5,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Image.asset(
                  'Assets/images/links.png',
                  height: 150,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                '2. Try keeping resume without your\npicture.',
                style: GoogleFonts.roboto(fontSize: 22),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 10,
              ),
              Image.asset(
                'Assets/images/arrow.png',
                height: 170,
              ),
              SizedBox(
                height: 5,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Image.asset(
                  'Assets/images/cv.png',
                  height: 220,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                '3. Do not leave whitespaces.',
                style: GoogleFonts.roboto(fontSize: 22),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 10,
              ),
              Image.asset(
                'Assets/images/arrow.png',
                height: 170,
              ),
              SizedBox(
                height: 5,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Image.asset(
                  'Assets/images/lineresume.png',
                  height: 220,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                '4. Do not use a fancy font or design.',
                style: GoogleFonts.roboto(fontSize: 22),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 10,
              ),
              Image.asset(
                'Assets/images/arrow.png',
                height: 170,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Image.asset(
                  'Assets/images/mistakes.png',
                  height: 200,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Card(
                elevation: 3,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50))),
                child: SizedBox(
                  width: width,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          "Other resources to follow for resume tips.",
                          style: GoogleFonts.roboto(
                              fontSize: 22,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Stack(children: [
                        InkWell(
                          onTap: () {
                            url.launchURLForThumbnail1();
                          },
                          child: Container(
                            width: width / 2.5,
                            height: height * 0.25,
                            child: Image.asset(
                              'Assets/images/thumbnail1.png',
                              fit: BoxFit.fill,
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15)),
                          ),
                        ),
                        Positioned(
                            left: 50,
                            top: 50,
                            bottom: 50,
                            right: 50,
                            child: InkWell(
                              onTap: () {
                                url.launchURLForThumbnail1();
                              },
                              child: Icon(
                                Icons.play_arrow_outlined,
                                size: 100,
                                color: Colors.red,
                              ),
                            ))
                      ]),
                    ),
                    Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Stack(children: [
                        InkWell(
                          onTap: () {
                            url.launchURLForThumbnail2();
                          },
                          child: Container(
                            width: width / 2.5,
                            height: height * 0.25,
                            child: Image.asset(
                              'Assets/images/thumbnail2.png',
                              fit: BoxFit.fill,
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15)),
                          ),
                        ),
                        Positioned(
                            left: 50,
                            top: 50,
                            bottom: 50,
                            right: 50,
                            child: InkWell(
                              onTap: () {
                                url.launchURLForThumbnail2();
                              },
                              child: Icon(
                                Icons.play_arrow_outlined,
                                size: 100,
                                color: Colors.red,
                              ),
                            ))
                      ]),
                    ),
                    Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Stack(children: [
                        InkWell(
                          onTap: () {
                            url.launchURLForThumbnail3();
                          },
                          child: Container(
                            width: width / 2.5,
                            height: height * 0.25,
                            child: Image.asset(
                              'Assets/images/thumbnail3.png',
                              fit: BoxFit.fill,
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15)),
                          ),
                        ),
                        Positioned(
                            left: 50,
                            top: 50,
                            bottom: 50,
                            right: 50,
                            child: InkWell(
                              onTap: () {
                                url.launchURLForThumbnail3();
                              },
                              child: Icon(
                                Icons.play_arrow_outlined,
                                size: 100,
                                color: Colors.red,
                              ),
                            ))
                      ]),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Card(
                elevation: 3,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50))),
                child: SizedBox(
                  width: width,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          "Free resume building websites",
                          style: GoogleFonts.roboto(
                              fontSize: 22,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      launchURLForResume("https://app.flowcv.io/");
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      elevation: 3,
                      child: Container(
                        child: Image.asset(
                          'Assets/images/resumelink.png',
                          fit: BoxFit.contain,
                        ),
                        width: width / 5,
                        height: height / 10,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50)),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      launchURLForResume(
                          "https://www.overleaf.com/latex/templates/deedy-cv/bjryvfsjdyxz");
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      elevation: 3,
                      child: Container(
                        width: width / 5,
                        height: height / 10,
                        child: Image.asset(
                          'Assets/images/resumelink.png',
                          fit: BoxFit.contain,
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50)),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        )),
      )),
    );
  }
}
