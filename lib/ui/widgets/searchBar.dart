import 'package:flutter/material.dart';
import 'package:tastea_tea/ui/theme/constants.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        cursorColor: Colors.black,
        autocorrect: true,
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.search,
            color: Colors.grey,
          ),
          hintText: 'Search here',
          hintStyle: TextStyle(color: Colors.grey),
          filled: true,
          fillColor: kLightGrey,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            borderSide: BorderSide(
              color: kLightGrey,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            borderSide: BorderSide(
              color: kLightGrey,
            ),
          ),
        ),
      ),
    );
  }
}
