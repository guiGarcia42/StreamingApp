import 'package:flutter/material.dart';
import 'package:streamingapp/utils/constants.dart';
import 'package:streamingapp/screens/explore/explore_all.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondaryColor,
      body: AnimatedSwitcher(
        duration: Duration(milliseconds: 250),
        child: ExploreAll(),
      ),
    );
  }
}
