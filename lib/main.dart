import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ualikhan is Nemo',
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

// {
//     "id": "10",
//     "name": "Counter-Strike",
//     "description": "Play the worlds number 1 online action game. Engage in an incredibly realistic brand of terrorist warfare in this wildly popular team-based game. Ally with teammates to complete strategic missions. Take out enemy sites. Rescue hostages. Your role affects your teams success. Your teams success affects your role.",
//     "price": "9.99 $",
//     "image": "http://steam.meilisearch.dev/steam/apps/10/header.jpg?t=1447887426",
//     "releaseDate": "Nov 1 2000",
//     "recommendationCount": 68991,
//     "platforms": ["MacOS", "Linux", "Windows"],
//     "players": ["Multiplayer"],
//     "genres": ["Action"],
//     "misc": []
//   },