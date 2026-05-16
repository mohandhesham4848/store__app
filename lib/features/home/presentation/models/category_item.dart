import 'package:flutter/material.dart';

class categoryItem extends StatelessWidget {
  
  const categoryItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: Column(
        children: [
          Container(
            width: 65,
            height: 65,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(42)),
            child: Center(
              child: Image.asset(
                'assets/images/Running.png',
                width: 40,
              ),
            ),
          ),
          Text('Sports', style: TextStyle(color: Colors.white))
        ],
      ),
    );
  }
}
