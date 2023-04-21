import 'package:flutter/material.dart';

import './models/photo.dart';
import './widgets/parallax_widget.dart';

const Color darkBlue = Color.fromARGB(255, 255, 255, 255);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: darkBlue),
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        body: ParallaxScroll(),
      ),
    );
  }
}

class ParallaxScroll extends StatelessWidget {
  const ParallaxScroll({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: photos.length,
        itemBuilder: (context, index) {
          return ParallaxItem(
            imageUrl: photos[index].imageUrl,
          );
        },
      ),
    );
  }
}
