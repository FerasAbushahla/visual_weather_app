import 'package:flutter/material.dart';
import 'package:weather_app/widgets/searchBar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          MySearchBar(),
          Text('City Name',style: TextStyle(
              fontSize: 20,
              fontStyle: FontStyle.normal,
              color: Colors.black45,
              fontFamily: 'AktivGrotesk'),),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.ac_unit),
              Text('15 °C',style: TextStyle(
                  fontSize: 30,
                  fontStyle: FontStyle.normal,
                  color: Colors.black,
                  fontFamily: 'AktivGrotesk'),),

            ],
          )


        ],),


      ),
    );
  }
}
