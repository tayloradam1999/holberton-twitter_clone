import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://www.woolha.com/media/2020/03/flutter-circleavatar-minradius-maxradius.jpg'),
                  ),
                  const SizedBox(width: 15),
                  Text(
                    'Adam Taylor',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      fontFamily: GoogleFonts.mulish().fontFamily,
                    ),
                  ),
                  const SizedBox(width: 5),
                  Text(
                    '@adamtaylor',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey.shade500,
                      fontFamily: GoogleFonts.mulish().fontFamily,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    ' · ',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey.shade500,
                      fontFamily: GoogleFonts.mulish().fontFamily,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    '2h',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey.shade500,
                      fontFamily: GoogleFonts.mulish().fontFamily,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              IconButton(
                icon: const Icon(Icons.more_vert),
                onPressed: () {},
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
              style: TextStyle(
                fontSize: 18,
                fontFamily: GoogleFonts.mulish().fontFamily,
                fontWeight: FontWeight.w600,
                color: Colors.grey.shade800,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Row(
                  children: [
                    Icon(Icons.chat_bubble_outline,
                        color: Colors.grey.shade500),
                    const SizedBox(width: 5),
                    Text(
                      '0',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey.shade500,
                        fontFamily: GoogleFonts.mulish().fontFamily,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Icon(Icons.repeat, color: Colors.grey.shade500),
                    const SizedBox(width: 5),
                    Text(
                      '0',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey.shade500,
                        fontFamily: GoogleFonts.mulish().fontFamily,
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Icon(Icons.favorite_border, color: Colors.red),
                    const SizedBox(width: 5),
                    Text(
                      '0',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey.shade500,
                        fontFamily: GoogleFonts.mulish().fontFamily,
                      ),
                    ),
                  ],
                ),
              ),
              IconButton(
                icon: const Icon(Icons.share),
                onPressed: () {},
                color: Colors.grey.shade500,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
