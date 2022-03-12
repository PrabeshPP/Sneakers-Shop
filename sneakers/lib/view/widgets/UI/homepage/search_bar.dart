import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.06,
      width: size.width * 0.8,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32.0), color: Colors.yellow),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(left: size.width * 0.07),
            child: const Icon(Icons.search),
          ),
          Padding(
            padding: EdgeInsets.only(left: size.width * 0.2),
            child: Text(
              "Search",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: size.height * 0.02,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
