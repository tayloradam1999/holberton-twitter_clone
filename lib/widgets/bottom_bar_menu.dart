import 'package:flutter/material.dart';
import 'package:twitter/screens/chats_screen.dart';
import 'package:twitter/screens/notifications_screen.dart';
import 'package:twitter/screens/search_screen.dart';
import '../screens/home_screen.dart';
import 'package:twitter/providers/app_state.dart';

class BottomMenuBar extends StatefulWidget {
  BottomMenuBar({Key? key}) : super(key: key);

  @override
  State<BottomMenuBar> createState() => _BottomMenuBarState();
}

class _BottomMenuBarState extends State<BottomMenuBar> {
  int _selectedIndex = 0;

  final List<IconData> _icons = [
    Icons.home,
    Icons.search,
    Icons.notifications,
    Icons.mail,
  ];

  final List<String> _titles = [
    'Home',
    'Search',
    'Notifications',
    'Messages',
  ];

  _buildIcon(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: SizedBox(
        height: 60.0,
        width: 60.0,
        child: Icon(
          _icons[index],
          size: 25.0,
          color: _selectedIndex == index
              ? Theme.of(context).primaryColor
              : const Color(0xFFB4C1C4),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.transparent,
      elevation: 0.0,
      child: SizedBox(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ),
                  );
                  AppState().setpageIndex = 0;
                },
                child: _buildIcon(0)),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SearchScreen(),
                    ),
                  );
                  AppState().setpageIndex = 1;
                },
                child: _buildIcon(1)),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NotificationsScreen(),
                    ),
                  );
                  AppState().setpageIndex = 2;
                },
                child: _buildIcon(2)),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ChatScreen(),
                    ),
                  );
                  AppState().setpageIndex = 3;
                },
                child: _buildIcon(3)),
          ],
        ),
      ),
    );
  }
}
