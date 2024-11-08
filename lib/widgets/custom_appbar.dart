import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.numTasks});
  final int numTasks;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              Icon(
                Icons.playlist_add_check_outlined,
                size: 40,
                color: Colors.white,
              ),
              SizedBox(
                width: 30,
              ),
              Text(
                'To Do List',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 38,
                  fontWeight: FontWeight.w700,
                  shadows: [
                    Shadow(
                      color: Colors.black26,
                      blurRadius: 10,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Text(
            '$numTasks tasks',
            style: TextStyle(
              color: Colors.white70,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
