import 'package:flutter/material.dart';
import 'package:nonton_id/pages/account_page.dart';
import 'package:nonton_id/pages/bioskop_page.dart';
import 'package:nonton_id/pages/home_pages.dart';
import 'package:nonton_id/pages/ticket_page.dart';
import 'package:nonton_id/style/app_style.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int seletedIndex = 0;

  List<Widget> bodyWidgets = [
    HomePage(),
    BioskopPage(),
    TicketPage(),
    AccountPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.appColors.backgroundColor,
      body: bodyWidgets[seletedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: seletedIndex,
        onTap: (index) {
          setState(() {
            seletedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.airplane_ticket),
            label: 'Tiket',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.movie),
            label: 'Bioskop',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          )
        ],
      ),
    );
  }
}
