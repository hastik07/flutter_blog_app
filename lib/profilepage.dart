import 'package:blog_app/editprofile.dart';
import 'package:blog_app/followerspage.dart';
import 'package:blog_app/followingpage.dart';
import 'package:blog_app/homepage.dart';
import 'package:blog_app/loginpage.dart';
import 'package:blog_app/newssummary.dart';
import 'package:blog_app/settingpage.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final List<String> _blogs = [
    'TCS Launches New AI Service',
    'TCS Q2 Results Announced',
    'TCS Partners with Global Bank',
    'TCS Expands in Europe',
    'TCS to Hire 10,000 Engineers',
    'TCS Launches New AI Service',
    'TCS Q2 Results Announced',
    'TCS Partners with Global Bank',
    'TCS Expands in Europe',
    'TCS to Hire 10,000 Engineers',
    // Add more blog titles as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Profile',
          style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w700),
        ),
        backgroundColor: Colors.yellow.shade800,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomePage()),
            );
          },
        ),
      ),
      endDrawer: Drawer(
        elevation: 3.0,
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: const Text('Mohanapriya'),
              accountEmail: const Text('Mohanapriya@gmail.com477s@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: ClipOval(
                  child: Image.asset('assets/images/Profile Picture.png', fit: BoxFit.cover),
                ),
              ),
            ),
            ListTile(
              title: const Text('Settings'),
              leading: const Icon(Icons.settings),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SettingsPage()),
                );
              },
            ),
            const Divider(height: 0.1),
            ListTile(
              title: const Text('Privacy Policy'),
              leading: const Icon(Icons.privacy_tip_rounded),
            ),
            const Divider(height: 0.1),
            ListTile(
              title: const Text('Logout'),
              leading: const Icon(Icons.logout_rounded),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                );
              },
            ),
            const Divider(height: 0.1),
            ListTile(
              leading: const Icon(Icons.person_add),
              title: const Text('Invite Friends'),
              onTap: () {
                // Handle invite friends functionality
              },
            ),
            const Divider(height: 0.1),
            ListTile(
              leading: const Icon(Icons.link),
              title: const Text('Create WhatsApp Link'),
              onTap: () {
                // Handle invite friends functionality
              },
            ),
            const Divider(height: 0.1),
            ListTile(
              leading: const Icon(Icons.link),
              title: const Text('Create Telegram Link'),
              onTap: () {
                // Handle invite friends functionality
              },
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            // Profile Header
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.black,
                    backgroundImage: AssetImage('assets/images/Profile Picture.png'),
                  ),
                  const SizedBox(width: 10),
                  const Divider(thickness: 1.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Mohanapriya',
                        style: TextStyle(fontFamily: 'Poppins', fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8, width: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _buildStatColumn('Posts', '1'),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const FollowersPage()),
                              );
                            },
                            child: _buildStatColumn('Followers', '1'),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const FollowingPage()),
                              );
                            },
                            child: _buildStatColumn('Following', '1'),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12, width: 8),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const EditProfile()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.yellow.shade800,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: const Text(
                          'Edit Profile',
                          style: TextStyle(fontFamily: 'Poppins', fontSize: 18,color:Colors.black),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // Blog List
            Expanded(
              child: ListView.builder(
                itemCount: _blogs.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 14.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.grey.shade300),
                    ),
                    child: ListTile(
                      contentPadding: const EdgeInsets.all(16.0),
                      title: Text(
                        _blogs[index],
                        style: const TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      trailing: IconButton(
                        icon: const Icon(Icons.share),
                        onPressed: () {
                          // Handle share functionality
                        },
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SummaryPage()),
                        ); // Handle blog item tap
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatColumn(String title, String value) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.bold, fontSize: 18),
        ),
        Text(
          title,
          style: const TextStyle(fontFamily: 'Poppins', fontSize: 16),
        ),
      ],
    );
  }
}
