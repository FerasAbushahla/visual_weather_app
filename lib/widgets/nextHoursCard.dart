import 'package:flutter/material.dart';

class NextHoursCard extends StatefulWidget {
  final String? date;
  final String? temp;
  const NextHoursCard({Key? key,this.date,this.temp}) : super(key: key);

  @override
  State<NextHoursCard> createState() => _NextHoursCardState();
}

class _NextHoursCardState extends State<NextHoursCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 175,
      padding: const EdgeInsets.all(5.0),
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    widget.date!,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                  fontSize: 18,
                  fontStyle: FontStyle.normal,
                  color: Colors.black45,
                  fontFamily: 'AktivGrotesk'),
                  ),
                  Icon(Icons.ac_unit,size: 40,),
                  Container(
                    width: 80,
                    child: Text(
                     '${widget.temp!} °C',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 18,
                          fontStyle: FontStyle.normal,
                          color: Colors.black45,
                          fontFamily: 'AktivGrotesk'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
