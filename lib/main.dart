import 'package:chat_app/screens/auth_screen.dart';
import 'package:chat_app/screens/chat_screen.dart';
import 'package:chat_app/screens/friends_screen.dart';
import 'package:chat_app/screens/full_image_screen.dart';
import 'package:chat_app/screens/map_screen.dart';
import 'package:chat_app/screens/profile_screen.dart';
import 'package:chat_app/screens/settings.dart';
import 'package:chat_app/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(HomeApp());

class HomeApp extends StatefulWidget {
  @override
  _HomeAppState createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ChatApp',
      initialRoute: SplashScreen.routeName,
      routes: {
        ProfileScreen.routeName: (ctx) => ProfileScreen(),
        SplashScreen.routeName: (ctx) => SplashScreen(),
        ChatScreen.routeName: (ctx) => ChatScreen(),
        AuthScreen.routeName: (ctx) => AuthScreen(),
        FriendsScreen.routeName: (ctx) => FriendsScreen(),
        SettingsScreen.routeName: (ctx) => SettingsScreen(),
        MapScreen.routeName: (ctx) => MapScreen(),
        FullImagePreviewScreen.routeName: (ctx) => FullImagePreviewScreen(),
      },
      /*home: StreamBuilder(
        stream: FirebaseAuth.instance.onAuthStateChanged,
        builder: (ctx, userSnapChat) {
          if (userSnapChat.hasData) {
            return ChatScreen();
          }
          return AuthScreen();
        },
      ),*/
      theme: ThemeData(
          primarySwatch: Colors.teal,
          accentColor: Colors.amber,
          canvasColor: Color.fromRGBO(225, 225, 225, 1),
          fontFamily: 'Quicksand',
          textTheme: ThemeData.light().textTheme.copyWith(
              body1: TextStyle(color: Color.fromRGBO(21, 21, 21, 1)),
              body2: TextStyle(color: Color.fromRGBO(21, 21, 21, 1)),
              title: TextStyle(
                  fontSize: 20,
                  fontFamily: 'OpenSans',
                  fontWeight: FontWeight.bold))),
    );
  }
}
