import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:twitter/screens/home_screen.dart';

import '../widgets/bottom_bar_menu.dart';

class ChatScreen extends StatefulWidget {
  ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        leading: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const HomeScreen()));
          },
          child: Container(
            padding: const EdgeInsets.all(7.5),
            child: const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://www.woolha.com/media/2020/03/flutter-circleavatar-minradius-maxradius.jpg'),
            ),
          ),
        ),
        title: Text('Chat',
            style: TextStyle(
              fontFamily: GoogleFonts.mulish().fontFamily,
              color: Colors.grey.shade800,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {},
            color: Theme.of(context).primaryColor,
          )
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        color: Colors.grey.shade200,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(
            height: 100,
            width: 350,
            child: Column(
              children: [
                Text('No Chats available',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                      fontFamily: GoogleFonts.mulish().fontFamily,
                      fontWeight: FontWeight.bold,
                    )),
                const SizedBox(height: 15),
                Text(
                  'When new chats are found, they will be displayed here.',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey.shade600,
                    fontFamily: GoogleFonts.mulish().fontFamily,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          )
        ]),
      ),
      bottomNavigationBar: const BottomMenuBar(),
    );
  }
}
