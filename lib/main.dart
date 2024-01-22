import 'package:flutter/material.dart';
import "dart:math";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  int random(int numlength) {
    Random random = new Random();
    int random_Numder = random.nextInt(numlength);
    return random_Numder;
  }

  AppBar buildappBar() {
    var frist_lastName = 'Savichaya Banjit';
    return AppBar(
      title: Text(frist_lastName),
      centerTitle: true,
    );
  }

  Widget buildbody() {
    ///
    List<String> list_NameAnime = [
      'Haikyuu',
      'Jujutsu Kaisen',
      'Moriarty The Patriot',
      'My Hero Academia',
      'Tokyo Ghoul'
    ];

    ///
    List<String> list_ImagesAnime = [
      'assets/images/haikyuu.jpg',
      'assets/images/jujutasu.jpg',
      'assets/images/moriarty.jpg',
      'assets/images/myheroacademia.jpg',
      'assets/images/tokyoghoul.jpg',
    ];
    //
    int lenght_list = list_NameAnime.length;
    var random_Numder = random(lenght_list);
    String NameAnime = list_NameAnime[random_Numder];
    //
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          list_ImagesAnime[random_Numder],
          width: 300.0,
          fit: BoxFit.contain,
        ),
        Center(
          child: Text(
            NameAnime,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
              color: Colors.blueGrey,
            ),
          ),
        ),
      ],
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: buildappBar(),
        body: buildbody(),
      ),
    );
  }
}
