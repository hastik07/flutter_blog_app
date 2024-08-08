import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class FollowingPage extends StatelessWidget {
  const FollowingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GNav(
        tabBackgroundColor: Colors.grey.shade400,
        padding: const EdgeInsets.all(16),
        tabs: const [
          GButton(icon: Icons.home),
          GButton(icon: Icons.search),
          GButton(icon: Icons.add_circle),
          GButton(icon: Icons.notifications),
          GButton(icon: Icons.person),
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
                  const Text('Recents', style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.bold),),
                  const SizedBox(width: 70,),
                  Text('Following', style: TextStyle(fontFamily: 'Poppins',color: Colors.yellow[900],fontWeight: FontWeight.bold),),
                  const SizedBox(width: 70,),
                  const Text('Followers',style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.bold),),
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
                        child: Text('Hastik', style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w500, fontSize: 20),),
                      ),
                      Text('Username', style: TextStyle(fontFamily: 'Poppins'),)
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
                        child: Text('Hastik', style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w500, fontSize: 20),),
                      ),
                      Text('Username', style: TextStyle(fontFamily: 'Poppins'),)
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
                        child: Text('Hastik', style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w500, fontSize: 20),),
                      ),
                      Text('Username', style: TextStyle(fontFamily: 'Poppins'),)
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
                        child: Text('Hastik', style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w500, fontSize: 20),),
                      ),
                      Text('Username', style: TextStyle(fontFamily: 'Poppins'),)
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
                        child: Text('Hastik', style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w500, fontSize: 20),),
                      ),
                      Text('Username', style: TextStyle(fontFamily: 'Poppins'),)
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
                        child: Text('Hastik', style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w500, fontSize: 20),),
                      ),
                      Text('Username', style: TextStyle(fontFamily: 'Poppins'),)
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
                        child: Text('Hastik', style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w500, fontSize: 20),),
                      ),
                      Text('Username', style: TextStyle(fontFamily: 'Poppins'),)
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
                        child: Text('Hastik', style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w500, fontSize: 20),),
                      ),
                      Text('Username', style: TextStyle(fontFamily: 'Poppins'),)
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