import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/controllers/weatherController.dart';

class MySearchBar extends StatefulWidget {
  const MySearchBar({Key? key}) : super(key: key);

  @override
  State<MySearchBar> createState() => _MySearchBarState();
}

class _MySearchBarState extends State<MySearchBar> {
  final _searchController = TextEditingController();
  WeatherController weatherController =
  Get.put(WeatherController());

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
      child: Material(
        elevation: 2,
        borderRadius: BorderRadius.circular(16.0),
        color: Colors.white,
        child: TextFormField(

          style: TextStyle(color: Colors.black),
          maxLines: 1,
          controller: _searchController,
          validator: (val) {
            if (val!.trim().isEmpty) {
              return "Enter a proper location";
            }
            return null;
          },
          decoration: InputDecoration(
            hintText: 'Search Location',
            hintStyle: TextStyle(color: Colors.grey),
            // errorText: _validate ? null : null,
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            icon: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Icon(
                Icons.search,
                color: Colors.blue,
              ),
            ),
            contentPadding: EdgeInsets.only(
              top: _searchController.text.isEmpty ? 12.0 : 14.0,
              bottom: _searchController.text.isEmpty ? 12.0 : 0.0,
            ),
          ),
          onChanged: (value) => setState(() {}),

        ),
      ),
    );
  }
}
