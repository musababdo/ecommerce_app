import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String icon;
  final String name;
  CustomButton({required this.icon, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20),
        ),
      ),
      margin: const EdgeInsets.only(right: 12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 70,
            padding: const EdgeInsets.fromLTRB(8, 1, 8, 1),
            decoration: BoxDecoration(
              color: Colors.white10,
              borderRadius: BorderRadius.circular(12),
            ),
            child:ClipOval(
              child: Material(
                color: Colors.deepOrange,
                child: Padding(
                  padding: const EdgeInsets.only(right: 10,left: 10,top: 13,bottom: 13),
                  child: Image.asset(icon, height: 25),
                ),
              ),
            ),
          ),
          const SizedBox(height: 5),
          Text(
            name,
            style: TextStyle(
            fontSize: 12,
              color: Colors.black
          ),
          ),
        ],
      ),
    );
  }
}
