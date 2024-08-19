import 'package:blog_app/followingpage.dart';
import 'package:blog_app/homepage.dart';
import 'package:blog_app/notificationpage.dart';
import 'package:blog_app/profilepage.dart';
import 'package:blog_app/searchpage.dart';
import 'package:blog_app/uploadpage.dart';
import 'package:flutter/material.dart';

class FollowersPage extends StatefulWidget {
  const FollowersPage({super.key});

  @override
  State<FollowersPage> createState() => _FollowersPageState();
}

class _FollowersPageState extends State<FollowersPage> {
  int _currentIndex = 0;
  final PageController _pageController = PageController();

  void _onPageChanged(int index) {
  setState(() {
  _currentIndex = index;
  });
  }

  void _onTap(int index) {
  _pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: _onTap,
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.home, color: Colors.orange),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.add_circle_outlined, color: Colors.red),
            label: 'Upload',
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.search, color: Colors.purpleAccent),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.notifications, color: Colors.blue),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.person, color: Colors.green),
            label: 'Profile',
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween, // Space between widgets
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const NotificationPage()));
                      },
                      child: const Icon(Icons.notifications, color: Colors.orange),
                    ),
                    Image.asset('assets/images/Blog nest logo.png', width: 100, height: 100),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ProfilePage()));
                      },
                      child: Image.asset('assets/images/Profile Picture.png', width: 50, height: 50),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 3,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Evenly space text items
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
                    },
                    child: Text(
                      'Recents',
                      style: TextStyle(fontFamily: 'Poppins', color: Colors.yellow[900], fontWeight: FontWeight.bold),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
                    },
                    child: Text(
                      'Following',
                      style: const TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.bold),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const FollowersPage()));
                    },
                    child: Text(
                      'Followers',
                      style: const TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              const Divider(thickness: 2.0,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: SizedBox(
                      width: 60,
                      height: 60,
                      child: Image.asset('assets/images/Profile Picture.png'),
                    ),
                  ),
                  const Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4.0),
                        child: Text('Hastik', style: TextStyle( fontFamily: 'Poppins',fontWeight: FontWeight.w500, fontSize: 20),),
                      ),
                      Text('Username', style: TextStyle( fontFamily: 'Poppins'),)
                    ],
                  )
                ],
              ),
              const Divider(thickness: 2.0,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: SizedBox(
                      width: 60,
                      height: 60,
                      child: Image.asset('assets/images/Profile Picture.png'),
                    ),
                  ),
                  const Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4.0),
                        child: Text('Hastik', style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.w500, fontSize: 20),),
                      ),
                      Text('Username', style: TextStyle( fontFamily: 'Poppins'))
                    ],
                  )
                ],
              ),
              const Divider(thickness: 2.0,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: SizedBox(
                      width: 60,
                      height: 60,
                      child: Image.asset('assets/images/Profile Picture.png'),
                    ),
                  ),
                  const Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4.0),
                        child: Text('Hastik', style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.w500, fontSize: 20),),
                      ),
                      Text('Username', style: TextStyle( fontFamily: 'Poppins'))
                    ],
                  )
                ],
              ),
              const Divider(thickness: 2.0,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: SizedBox(
                      width: 60,
                      height: 60,
                      child: Image.asset('assets/images/Profile Picture.png'),
                    ),
                  ),
                  const Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4.0),
                        child: Text('Hastik', style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.w500, fontSize: 20),),
                      ),
                      Text('Username', style: TextStyle( fontFamily: 'Poppins'))
                    ],
                  )
                ],
              ),
              const Divider(thickness: 2.0,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: SizedBox(
                      width: 60,
                      height: 60,
                      child: Image.asset('assets/images/Profile Picture.png'),
                    ),
                  ),
                  const Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4.0),
                        child: Text('Hastik', style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.w500, fontSize: 20),),
                      ),
                      Text('Username', style: TextStyle( fontFamily: 'Poppins'))
                    ],
                  )
                ],
              ),
              const Divider(thickness: 2.0,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: SizedBox(
                      width: 60,
                      height: 60,
                      child: Image.asset('assets/images/Profile Picture.png'),
                    ),
                  ),
                  const Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4.0),
                        child: Text('Hastik', style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.w500, fontSize: 20),),
                      ),
                      Text('Username', style: TextStyle( fontFamily: 'Poppins'))
                    ],
                  )
                ],
              ),
              const Divider(thickness: 2.0,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: SizedBox(
                      width: 60,
                      height: 60,
                      child: Image.asset('assets/images/Profile Picture.png'),
                    ),
                  ),
                  const Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4.0),
                        child: Text('Hastik', style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.w500, fontSize: 20),),
                      ),
                      Text('Username', style: TextStyle( fontFamily: 'Poppins'))
                    ],
                  )
                ],
              ),
              const Divider(thickness: 2.0,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: SizedBox(
                      width: 60,
                      height: 60,
                      child: Image.asset('assets/images/Profile Picture.png'),
                    ),
                  ),
                  const Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4.0),
                        child: Text('Hastik', style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.w500, fontSize: 20),),
                      ),
                      Text('Username', style: TextStyle( fontFamily: 'Poppins'))
                    ],
                  )
                ],
              ),
              const Divider(thickness: 2.0,),
            ],
          ),
        ),
      ),
    );
  }
}

