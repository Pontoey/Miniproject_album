import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

import 'course.dart';
import 'mycourse.dart';
// class MyPageController extends PageController {
//    @override
//    int get initialPage => 3;
// }

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  int _nwepage = 2;
  int next =2;
  PageController pageController = PageController(
    initialPage: 2,
  );
  
  void onTapped(int index) {
    setState(() {
      _nwepage = index;
    });
    pageController.animateToPage(index, duration: Duration(milliseconds: 100), curve: Curves.easeInOut);
  }

  List Courses = [
    {
      "name": "Flutter",
      "image": "img/img1.jpg",
    },
    {
      "name": "Flutter",
      "image": "img/001.jpg",
    },
    {
      "name": "Flutter",
      "image": "img/img1.jpg",
    },
    {
      "name": "Flutter",
      "image": "img/001.jpg",
    },
  ];
  List member = [
    {
      "name": "Ponkrit Inthong",
      "email": "pommmmmmm@gmail.com",
      "picture": "img/001.jpg",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 207, 231, 246),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 8, 104, 159),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('img/logo300x300.png', width: 40),
            // IconButton(
            //     onPressed: () {
            //       //Navigator.pop(context);
            //     },
            //     icon: Icon(
            //       Icons.menu,
            //       size: 35,
            //     )),
            Text(
              'PhoCourse',
              style:
                  GoogleFonts.kanit(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      body: PageView(
        onPageChanged: (int next){
          
          setState(() {
             
            _nwepage = next;
            
          });
       
        },
        controller: pageController,
        children: [
          Container(
            child: Mycourse(member: member, Courses: Courses),
          ),
          Container(
            child: Text('1'),
          ),
          Container(
             
          ),
          Container(
            child: Text('3'),
          ),
          Container(
            child: Text('4'),
          ),
          
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.school),
                label: 'My Corrse',
                backgroundColor: Color.fromARGB(255, 8, 104, 159)),
            BottomNavigationBarItem(
                icon: Icon(Icons.public),
                label: 'Explore',
                backgroundColor: Color.fromARGB(255, 8, 104, 159)),
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                backgroundColor: Color.fromARGB(255, 8, 104, 159)),
            BottomNavigationBarItem(
                icon: Icon(Icons.book),
                label: 'Recommend',
                backgroundColor: Color.fromARGB(255, 8, 104, 159)),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle),
                label: 'Profile',
                backgroundColor: Color.fromARGB(255, 8, 104, 159)),
          ],
          currentIndex: _nwepage,
          selectedItemColor: Color.fromARGB(255, 255, 255, 255),
          unselectedItemColor: Color.fromARGB(255, 207, 231, 246),
          onTap: onTapped
          ),
    );
  }
}


