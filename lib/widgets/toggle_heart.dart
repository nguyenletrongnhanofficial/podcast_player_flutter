import 'package:flutter/material.dart';
import 'package:podcast_player_flutter/values/app_color.dart';

class ToggleHeart extends StatefulWidget {
  const ToggleHeart({super.key});

  @override
  State<ToggleHeart> createState() => _ToggleHeartState();
}

bool like = false;

class _ToggleHeartState extends State<ToggleHeart> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: like == false
          ? const Icon(
              Icons.favorite_border,
              color: Colors.white,
            )
          : const Icon(
              Icons.favorite,
              color: AppColor.bottomNaviColor,
            ),
      onPressed: () {
        setState(() {
          like = !like;
        });
      },
    );
  }
}
