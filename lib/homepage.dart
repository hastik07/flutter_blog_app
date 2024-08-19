import 'package:blog_app/followerspage.dart';
import 'package:blog_app/followingpage.dart';
import 'package:blog_app/notificationpage.dart';
import 'package:blog_app/profilepage.dart';
import 'package:blog_app/searchpage.dart';
import 'package:blog_app/uploadpage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      body: PageView(
        controller: _pageController,
        onPageChanged: _onPageChanged,
        children: [
          const HomeScreen(),
          const UploadPage(),
          const SearchPage(),
          const NotificationPage(),
          const ProfilePage(),
        ],
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Align children to the start
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
            const SizedBox(height: 3),
            const _TabBar(),
            const Divider(thickness: 2.0),
            SizedBox(width: double.infinity, child: Image.asset('assets/images/Blog 1.png', fit: BoxFit.cover)),
            SizedBox(width: double.infinity, child: Image.asset('assets/images/Blog 1.png', fit: BoxFit.cover)),
            SizedBox(width: double.infinity, child: Image.asset('assets/images/Blog 1.png', fit: BoxFit.cover)),
          ],
        ),
      ),
    );
  }
}

class _TabBar extends StatefulWidget {
  const _TabBar({super.key});

  @override
  State<_TabBar> createState() => __TabBarState();
}

class __TabBarState extends State<_TabBar> {
  int _selectedTabIndex = 0;


  void _onTabSelected(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Evenly space text items
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
          child: Text(
            'Recents',
            style: TextStyle(
              fontFamily: 'Poppins',
              color: _selectedTabIndex == 0 ? Colors.yellow[900] : Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FollowingPage()),
            );
          },
          child: Text(
            'Following',
            style: TextStyle(
              fontFamily: 'Poppins',
              color: _selectedTabIndex == 1 ? Colors.yellow[900] : Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FollowersPage()),
            );
          },
          child: Text(
            'Followers',
            style: TextStyle(
              fontFamily: 'Poppins',
              color: _selectedTabIndex == 2 ? Colors.yellow[900] : Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
