import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'course.dart';
class Mycourse extends StatelessWidget {
  const Mycourse({
    Key? key,
    required this.member,
    required this.Courses,
  }) : super(key: key);

  final List member;
  final List Courses;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 550,
              ),
              Container(
                width: double.infinity,
                height: 350,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 8, 104, 159),
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(80)),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: ListView.builder(
                          itemExtent: 95.0,
                          itemCount: member.length,
                          itemBuilder: (context, index) {
                            return Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(40),
                              ),
                              margin:
                                  EdgeInsets.only(left: 15, right: 25),
                              //color: Colors.red,
                              child: ListTile(
                                visualDensity: VisualDensity(vertical: 4),
                                // leading: CircleAvatar(
                                //   backgroundImage: NetworkImage(
                                //     member[index]['picture'],scale: 100
                                //   ),
                                // ),

                                leading: ClipRRect(
                                    borderRadius:
                                        BorderRadius.circular(100),
                                    child: Container(
                                        width: 65,
                                        height: 65,
                                        child: Image.asset(
                                          member[index]['picture'],
                                          fit: BoxFit.cover,
                                        ))),
                                title: Padding(
                                  padding: const EdgeInsets.only(top: 6),
                                  child: Container(
                                    height: 38,
                                    //color: Color.fromARGB(255, 255, 0, 0),
                                    child: Text(
                                      member[index]['name'],
                                      style: GoogleFonts.kanit(
                                          fontSize: 30,
                                          color: Color.fromARGB(
                                              255, 0, 0, 0),
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                subtitle: Container(
                                  color: null,
                                  child: Text(
                                    member[index]['email'],
                                    style: GoogleFonts.kanit(
                                        fontSize: 17,
                                        color:
                                            Color.fromARGB(255, 0, 0, 0)),
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              ),
              Positioned(
                  child: Text(
                    'Continue your last course',
                    style: GoogleFonts.kanit(
                        fontSize: 25, color: Colors.white),
                  ),
                  top: 150,
                  left: 25,
                  right: 0),
              Positioned(
                top: 200,
                left: 30,
                right: 30,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    width: double.infinity,
                    height: 330,
                    color: Color.fromARGB(255, 255, 255, 255),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: double.infinity,
                          height: 250,
                          child: Image.asset(
                            'img/img1.jpg',
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Beginning for beginners',
                            style: GoogleFonts.kanit(
                                fontSize: 20,
                                color: Color.fromARGB(255, 0, 0, 0)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: double.infinity,
            height: 220,
            // color: Color.fromARGB(255, 18, 142, 57),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Your subscriptions ',
                    style: GoogleFonts.kanit(fontSize: 20),
                  ),
                ),
                Container(
                  child: Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: Courses.length,
                      itemBuilder: (context, index) {
                        return Course(
                            name: Courses[index]['name'],
                            image: Courses[index]['image']);
                      },
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}