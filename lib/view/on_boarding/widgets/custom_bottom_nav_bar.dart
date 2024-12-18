
import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 52, right: 32, left: 32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "skip",
            style: TextStyle(fontSize: 15),
          ),
          Container(
            width: 50,
            height: 50,
            child: ListView.separated(
              separatorBuilder: (context, index) =>
                  Padding(padding: EdgeInsets.symmetric(horizontal: 2.5)),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => CircleAvatar(
                radius: 5,
                backgroundColor: Colors.red,
              ),
              itemCount: 3,
            ),
          ),
          Text("next",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15))
        ],
      ),
    );
  }
}
