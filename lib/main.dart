import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:twitter/screens/signin_screen.dart';
import 'package:twitter/providers/app_state.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider<AppState>(create: (_) => AppState()),
        ],
        child: MaterialApp(
          title: 'Twitter Clone',
          theme: ThemeData(
            primaryColor: Colors.blue,
            primaryColorDark: Colors.blue.shade800,
          ),
          home: const SignIn(),
        ));
  }
}
