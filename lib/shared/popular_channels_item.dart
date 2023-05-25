import 'package:flutter/material.dart';

class PopularChannelItem extends StatelessWidget {
  final String imageUrl;
  final String name;
  final bool variation;
  const PopularChannelItem(
      {super.key,
      required this.imageUrl,
      required this.name,
      required this.variation});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: variation ? 140 : 100,
      decoration: BoxDecoration(
        color: variation ? Colors.grey[800] : Colors.transparent,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imageUrl),
                fit: BoxFit.cover,
              ),
              shape: BoxShape.circle,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            name,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
