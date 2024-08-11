import 'package:blog_app/homepage.dart';
import 'package:blog_app/searchpage.dart';
import 'package:blog_app/uploadpage.dart';
import 'package:flutter/material.dart';

class FollowersPage extends StatefulWidget {
  const FollowersPage({super.key});

  @override
  State<FollowersPage> createState() => _FollowersPageState();
}

class _FollowersPageState extends State<FollowersPage> {
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
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset('assets/images/icon.png', width: 50, height: 50,),
                  const SizedBox(width: 100,),
                  Image.asset('assets/images/Blog nest logo.png', width: 100, height: 100,),
                  const SizedBox(width: 75,),
                  Image.asset('assets/images/Profile Picture.png')
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                children: [
                  const SizedBox(width: 40,),
                  const Text('Recents', style: TextStyle( fontFamily: 'Poppins',fontWeight: FontWeight.bold),),
                  const SizedBox(width: 70,),
                  const Text('Following', style: TextStyle( fontFamily: 'Poppins',fontWeight: FontWeight.bold),),
                  const SizedBox(width: 70,),
                  Text('Followers',style: TextStyle( fontFamily: 'Poppins',color: Colors.yellow[900],fontWeight: FontWeight.bold),),
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