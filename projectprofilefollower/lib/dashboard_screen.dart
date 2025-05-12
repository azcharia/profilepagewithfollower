import 'package:flutter/material.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'pages/home_page.dart';
import 'pages/message_page.dart';
import 'pages/profile_page.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _bottomNavIndex = 0; 

  final List<IconData> iconList = [
    Icons.home,
    Icons.message,
    Icons.person,
  ];

  final List<Widget> _pages = [
    const HomePage(),
    const MessagePage(),
    const ProfilePage(),
  ];

  final List<String> _pageTitles = [
    "Halaman",
    "Pesan",
    "Profil"
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pageTitles[_bottomNavIndex]), 
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      body: _pages[_bottomNavIndex], 
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: iconList,
        activeIndex: _bottomNavIndex,
        gapLocation: GapLocation.none, 
        notchSmoothness: NotchSmoothness.softEdge,
        leftCornerRadius: 20, 
        rightCornerRadius: 20, 
        activeColor: const Color.fromARGB(255, 0, 0, 0), 
        inactiveColor: Colors.grey, 
        backgroundColor: Colors.white, 
        onTap: (index) {
          setState(() {
            _bottomNavIndex = index;
          });
        },
      ),
    );
  }
}