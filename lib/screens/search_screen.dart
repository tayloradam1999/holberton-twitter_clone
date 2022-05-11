import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:twitter/widgets/bottom_bar_menu.dart';
import 'package:twitter/widgets/users_search_results_widget.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  // SearchController
  final _searchController = TextEditingController();

  @override
  void initState() {
    // init state
    super.initState();
    // set controllers
    _searchController.addListener(() {
      // set state
      setState(() {});
    });
  }

  @override
  void dispose() {
    // dispose controllers
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        leading: Container(
          padding: const EdgeInsets.all(7.5),
          child: const CircleAvatar(
            backgroundImage: NetworkImage(
                'https://www.woolha.com/media/2020/03/flutter-circleavatar-minradius-maxradius.jpg'),
          ),
        ),
        title: SizedBox(
          child: TextField(
            controller: _searchController,
            style: TextStyle(
              fontFamily: GoogleFonts.mulish().fontFamily,
            ),
            decoration: InputDecoration(
              hintText: 'Search...',
              filled: true,
              fillColor: const Color.fromARGB(255, 238, 236, 236),
              isDense: true,
              contentPadding: const EdgeInsets.all(10),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.settings),
            color: Theme.of(context).primaryColor,
            onPressed: () {
              // set state
              setState(() {});
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return const UsersSearchResultsWidget(
            name: 'Adam Taylor',
            username: '@adamtaylor',
            imgUrl:
                'https://www.woolha.com/media/2020/03/flutter-circleavatar-minradius-maxradius.jpg',
          );
        },
        itemCount: 10,
      ),
      bottomNavigationBar: BottomMenuBar(),
    );
  }
}
