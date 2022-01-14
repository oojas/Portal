// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors,prefer_const_literals_to_create_immutables, deprecated_member_use,prefer_final_fields
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:placementcracker/Authentication/pfp.dart';
import 'package:placementcracker/helper/general.dart';

// ignore: camel_case_types
class userInfo extends StatefulWidget {
  const userInfo({Key? key}) : super(key: key);

  @override
  _userInfoState createState() => _userInfoState();
}

// ignore: camel_case_types
class _userInfoState extends State<userInfo>
    with SingleTickerProviderStateMixin {
  General general = General();
  // ignore:
  TextEditingController _collegeYear = TextEditingController();
  TextEditingController _collegeName = TextEditingController();
  TextEditingController _language = TextEditingController();
  late AnimationController _controller;
  late Animation _animation;

  
  FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    _animation = Tween(begin: 300.0, end: 50.0).animate(_controller)
      ..addListener(() {
        setState(() {});
      });

    _focusNode.addListener(() {
      if (_focusNode.hasFocus) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: InkWell(
        splashColor: Colors.transparent,
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: SafeArea(
          child: Container(
            decoration: BoxDecoration(gradient: general.backgroundColor),
            width: double.infinity,
            height: double.infinity,
            child: Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.contain,
                          image: AssetImage('Assets/images/formFill.png'))),
                ),
                Positioned(
                  bottom: 1,
                  right: 5,
                  left: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Stack(children: [
                      Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height / 2.5,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade100,
                              borderRadius: BorderRadius.circular(15)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Card(
                                    elevation: 5,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    child: Container(
                                      width: 120,
                                      height: 50,
                                      child: Center(
                                          child: Text(
                                        'Fill Details',
                                        style: GoogleFonts.roboto(fontSize: 20),
                                      )),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: TextFormField(
                                              controller: _collegeYear,
                                              keyboardType: TextInputType.name,
                                              decoration: InputDecoration(
                                                  border: OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                          color: Colors.black)),
                                                  focusColor: Colors.black,
                                                  labelText: 'Community Name',
                                                  labelStyle:
                                                      GoogleFonts.roboto(
                                                          color: Colors.black),
                                                  contentPadding:
                                                      EdgeInsets.all(10)),
                                              //cursorWidth: 10,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: TextFormField(
                                            focusNode: _focusNode,
                                            controller: _collegeName,
                                            keyboardType: TextInputType.number,
                                            decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color: Colors.black)),
                                                focusColor: Colors.black,
                                                labelText: 'College Year',
                                                labelStyle: GoogleFonts.roboto(
                                                    color: Colors.black),
                                                contentPadding:
                                                    EdgeInsets.all(10)),
                                            //cursorWidth: 10,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: TextFormField(
                                            controller: _language,
                                            keyboardType: TextInputType.text,
                                            decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color: Colors.black)),
                                                focusColor: Colors.black,
                                                labelText:
                                                    'Known coding language',
                                                labelStyle: GoogleFonts.roboto(
                                                    color: Colors.black),
                                                contentPadding:
                                                    EdgeInsets.all(10)),
                                            //cursorWidth: 10,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 1,
                        left: 100,
                        right: 100,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: MaterialButton(
                            child: Container(
                              width: 120,
                              height: 45,
                              decoration: BoxDecoration(
                                  color: Colors.amber,
                                  borderRadius: BorderRadius.circular(15)),
                              child: Center(
                                  child: Text(
                                'Submit',
                                style: GoogleFonts.roboto(fontSize: 20),
                              )),
                            ),
                            minWidth: 120,
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return Profile();
                              }));
                            },
                          ),
                        ),
                      )
                    ]),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
