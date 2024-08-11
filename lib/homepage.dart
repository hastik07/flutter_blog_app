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
  int myIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        onTap: (index) {
          setState(() {
            myIndex = index;
          });
        },
        currentIndex: myIndex,
        items: [
          BottomNavigationBarItem(
              icon: GestureDetector(onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
              }, child: const Icon(Icons.home)),
              label: 'Home',
              backgroundColor: Colors.orange
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const UploadPage()));
            }, child: const Icon(Icons.add_circle_outlined)),
            label: 'Upload',
            backgroundColor: Colors.red
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const SearchPage()));
            }, child: const Icon(Icons.search)),
            label: 'Search',
            backgroundColor: Colors.purpleAccent
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                Row(
                  children: [
                    const SizedBox(width: 20,),
                    GestureDetector(onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const NotificationPage()));
                    }, child: const Icon(Icons.notifications,)),
                    const SizedBox(width: 100,),
                    Image.asset('assets/images/Blog nest logo.png', width: 100, height: 100,),
                    const SizedBox(width: 75,),
                    GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ProfilePage()));
                        },
                        child: Image.asset('assets/images/Profile Picture.png')
                    )
                  ],
                ),
              const SizedBox(height: 10,),
              Row(
                children: [
                  const SizedBox(width: 40,),
                  Text('Recents', style: TextStyle( fontFamily: 'Poppins',color: Colors.yellow[900], fontWeight: FontWeight.bold),),
                  const SizedBox(width: 70,),
                  const Text('Following', style: TextStyle( fontFamily: 'Poppins',fontWeight: FontWeight.bold),),
                  const SizedBox(width: 70,),
                  const Text('Followers',style: TextStyle( fontFamily: 'Poppins',fontWeight: FontWeight.bold),),
                ],
              ),
              const Divider(thickness: 2.0,),
              SizedBox(
                width: 380,
                child: Image.asset('assets/images/Blog 1.png', fit: BoxFit.cover,),
              ),
              SizedBox(
                width: 380,
                child: Image.asset('assets/images/Blog 1.png', fit: BoxFit.cover,),
              ),
              SizedBox(
                width: 380,
                child: Image.asset('assets/images/Blog 1.png', fit: BoxFit.cover,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}