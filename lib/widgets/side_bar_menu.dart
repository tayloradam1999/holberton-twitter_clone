import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:twitter/screens/signin_screen.dart';
// Stateful Widget SideBarMenu

class SideBarMenu extends StatefulWidget {
  const SideBarMenu({Key? key}) : super(key: key);

  // SideBarMenu's State
  @override
  State<SideBarMenu> createState() => SideBarMenuState();
}

class SideBarMenuState extends State<SideBarMenu> {
  @override
  void initState() {
    // init state
    super.initState();
    // set controllers
  }

  @override
  void dispose() {
    // dispose controllers
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Column(
              children: <Widget>[
                // Image of the user
                Row(
                  children: const <Widget>[
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgSmojUgwjIB87c4Q0hLCAyl__oiTySWGWJUZtUNHlHjBALLzTsu_vMHYMaEwLts4QEoo&usqp=CAU'),
                      backgroundColor: Colors.transparent,
                    ),
                  ],
                ),
                // Username text
                Container(
                  margin: const EdgeInsets.only(top: 15),
                  child: Row(
                    children: <Widget>[
                      Text(
                        'User Name',
                        style: TextStyle(
                          color: Colors.grey.shade400,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          fontFamily: GoogleFonts.mulish().fontFamily,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10), // psuedo spacing
                // Followers + Following
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    // followers
                    Text(
                      '0 Followers',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontFamily: GoogleFonts.mulish().fontFamily,
                      ),
                    ),
                    const SizedBox(width: 10), // psuedo spacing
                    // following
                    Text(
                      '0 Following',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontFamily: GoogleFonts.mulish().fontFamily,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
          ),
          // list of the menu items
          ListTile(
            // profile
            leading: const Icon(Icons.person),
            title: Text('Profile',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  fontFamily: GoogleFonts.mulish().fontFamily,
                )),
            onTap: () {
              // navigate to profile
            },
          ),
          ListTile(
            // lists
            leading: const Icon(Icons.list),
            title: Text('Lists',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  fontFamily: GoogleFonts.mulish().fontFamily,
                )),
            onTap: () {
              // navigate to lists
            },
          ),
          ListTile(
            // Bookmark
            leading: const Icon(Icons.bookmark),
            title: Text('Bookmark',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  fontFamily: GoogleFonts.mulish().fontFamily,
                )),
            onTap: () {
              // navigate to bookmark
            },
          ),
          ListTile(
            // Moments
            leading: const Icon(Icons.flash_on),
            title: Text(
              'Moments',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w600,
                fontFamily: GoogleFonts.mulish().fontFamily,
              ),
            ),
            onTap: () {
              // navigate to moments
            },
          ),
          const SizedBox(height: 10), // psuedo spacing
          ListTile(
            // Setings and privacy text
            title: Text('Settings and privacy',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    fontFamily: GoogleFonts.mulish().fontFamily)),
            onTap: () {
              // navigate to settings
            },
          ),
          ListTile(
            // Help Center
            title: Text('Help Center',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    fontFamily: GoogleFonts.mulish().fontFamily)),
            onTap: () {
              // navigate to help center
            },
          ),
          ListTile(
            // Logout
            title: Text('Logout',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    fontFamily: GoogleFonts.mulish().fontFamily)),
            onTap: () {
              // logout
            },
          ),
        ],
      ),
    );
  }
}
