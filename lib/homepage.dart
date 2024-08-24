import 'package:blog_app/newssummary.dart';
import 'package:flutter/material.dart';
import 'package:blog_app/followerspage.dart';
import 'package:blog_app/followingpage.dart';
import 'package:blog_app/notificationpage.dart';
import 'package:blog_app/profilepage.dart';
import 'package:blog_app/searchpage.dart';
import 'package:blog_app/uploadpage.dart';

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
            icon: _currentIndex == 0
                ? _buildHighlightedIcon(Icons.home, Colors.orange)
                : const Icon(Icons.home, color: Colors.grey),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: _currentIndex == 1
                ? _buildHighlightedIcon(Icons.search, Colors.orange)
                : const Icon(Icons.search, color: Colors.grey),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: _currentIndex == 2
                ? _buildHighlightedIcon(Icons.add_circle_outlined, Colors.orange)
                : const Icon(Icons.add_circle_outlined, color: Colors.grey),
            label: 'Upload',
          ),
          BottomNavigationBarItem(
            icon: _currentIndex == 3
                ? _buildHighlightedIcon(Icons.notifications, Colors.orange)
                : const Icon(Icons.notifications, color: Colors.grey),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: _currentIndex == 4
                ? _buildHighlightedIcon(Icons.person, Colors.orange)
                : const Icon(Icons.person, color: Colors.grey),
            label: 'Profile',
          ),
        ],
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: _onPageChanged,
        children: [
          const HomeScreen(),
          const SearchPage(),
          const UploadPage(),
          const NotificationPage(),
          const ProfilePage(),
        ],
      ),
    );
  }

  Widget _buildHighlightedIcon(IconData icon, Color color) {
    return Container(
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color.withOpacity(0.2),
      ),
      child: Icon(
        icon,
        color: color,
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 20.0, vertical: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context, MaterialPageRoute(
                          builder: (context) => const NotificationPage()));
                    },
                    child: const Icon(
                        Icons.notifications, color: Colors.orange),
                  ),
                  Image.asset(
                    'assets/images/Blog nest logo.png',
                    width: 100,
                    height: 100,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => const ProfilePage()));
                    },
                    child: Image.asset(
                      'assets/images/Profile Picture.png',
                      width: 50,
                      height: 50,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 3,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
                  },
                  child: const Text(
                    'Recents',
                    style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.bold, color: Colors.orange),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const FollowingPage()));
                  },
                  child: const Text(
                    'Following',
                    style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.bold),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const FollowersPage()));
                  },
                  child: const Text(
                    'Followers',
                    style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Divider(thickness: 1.0),
            ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.all(8),
              children: [
                _buildNewsCard(
                  headline: 'TCS Launches New AI Service',
                  postedDate: 'August 20, 2024',
                  profile: 'John Doe',
                  authorName: 'Technology Analyst',
                  context: context,
                  newsId: 1, // Unique ID for each news item
                ),
                _buildNewsCard(
                  headline: 'TCS Q2 Results Announced',
                  postedDate: 'August 18, 2024',
                  profile: 'Jane Smith',
                  authorName: 'Finance Editor',
                  context: context,
                  newsId: 2,
                ),
                _buildNewsCard(
                  headline: 'TCS Partners with Global Bank',
                  postedDate: 'August 15, 2024',
                  profile: 'Rahul Patel',
                  authorName: 'Business Correspondent',
                  context: context,
                  newsId: 2,
                ),
                _buildNewsCard(
                  headline: 'TCS Expands in Europe',
                  postedDate: 'August 10, 2024',
                  profile: 'Emily Davis',
                  authorName: 'International Reporter',
                  context: context,
                  newsId: 2,
                ),
                _buildNewsCard(
                  headline: 'TCS to Hire 10,000 Engineers',
                  postedDate: 'August 5, 2024',
                  profile: 'Michael Brown',
                  authorName: 'HR Specialist',
                  context: context,
                  newsId: 2,
                ),
                _buildNewsCard(
                  headline: 'TCS Q2 Results Announced',
                  postedDate: 'August 18, 2024',
                  profile: 'Jane Smith',
                  authorName: 'Finance Editor',
                  context: context,
                  newsId: 2,
                ),
                _buildNewsCard(
                  headline: 'TCS Q2 Results Announced',
                  postedDate: 'August 18, 2024',
                  profile: 'Jane Smith',
                  authorName: 'Finance Editor',
                  context: context,
                  newsId: 2,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
  Widget _buildNewsCard({
    required String headline,
    required String postedDate,
    required String profile,
    required String authorName,
    required BuildContext context, // Pass the context to this method
    required int newsId, // Use an ID to identify each news item
  }) {
    return GestureDetector(
      onTap: () {
        switch (newsId) {
          case 1:
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SummaryPage(),
              ),
            );
            break;
          case 2:
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SummaryPage(),
              ),
            );
            break;
        // Add more cases for other news pages
          default:
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SummaryPage(),
              ),
            );
        }
      },
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 10.0),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                headline,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                '$postedDate - by $authorName',
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}
