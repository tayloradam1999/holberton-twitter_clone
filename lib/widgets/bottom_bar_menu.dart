import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:twitter/screens/chat_screen.dart';
import 'package:twitter/screens/notifications_screen.dart';
import 'package:twitter/screens/search_screen.dart';
import 'package:twitter/providers/app_state.dart';
import '../screens/home_screen.dart';

class BottomMenuBar extends StatefulWidget {
  const BottomMenuBar({Key? key}) : super(key: key);

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

  _buildIcon(int index) {
    return Consumer<AppState>(
      builder: (context, appState, child) {
        return GestureDetector(
          onTap: () {
            setState(() {
              _selectedIndex = index;
            });
            switch (_selectedIndex) {
              case 0:
                appState.setpageIndex = 0;
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
                break;
              case 1:
                appState.setpageIndex = 1;
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SearchScreen()));
                break;
              case 2:
                appState.setpageIndex = 2;
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NotificationsScreen()));
                break;
              case 3:
                appState.setpageIndex = 3;
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ChatScreen()));
                break;
            }
          },
          child: SizedBox(
            height: 60.0,
            width: 60.0,
            child: Icon(
              _icons[index],
              size: 25.0,
              color: appState.pageIndex == index
                  ? Theme.of(context).primaryColor
                  : Colors.grey,
            ),
          ),
        );
      },
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
            _buildIcon(0),
            _buildIcon(1),
            _buildIcon(2),
            _buildIcon(3),
          ],
        ),
      ),
    );
  }
}


//   _buildIcon(int index) {
//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           _selectedIndex = index;
//         });
//         switch (index) {
//           case 0:
//             Navigator.push(context,
//                 MaterialPageRoute(builder: (context) => const HomeScreen()));
//             break;
//           case 1:
//             Navigator.push(context,
//                 MaterialPageRoute(builder: (context) => const SearchScreen()));
//             break;
//           case 2:
//             Navigator.push(context,
//                 MaterialPageRoute(builder: (context) => NotificationsScreen()));
//             break;
//           case 3:
//             Navigator.push(
//                 context, MaterialPageRoute(builder: (context) => ChatScreen()));
//             break;
//         }
//       },
//       child: SizedBox(
//         height: 60.0,
//         width: 60.0,
//         child: Icon(
//           _icons[index],
//           size: 25.0,
//           color: _selectedIndex == index
//               ? Theme.of(context).primaryColor
//               : const Color(0xFFB4C1C4),
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return BottomAppBar(
//       color: Colors.transparent,
//       elevation: 0.0,
//       child: SizedBox(
//         height: 60,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: <Widget>[
//             _buildIcon(0),
//             _buildIcon(1),
//             _buildIcon(2),
//             _buildIcon(3),
//           ],
//         ),
//       ),
//     );
//   }
// }