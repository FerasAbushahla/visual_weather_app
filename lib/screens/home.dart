import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/controllers/dailyWeatherController.dart';
import 'package:weather_app/controllers/weatherController.dart';
import 'package:weather_app/widgets/nextHoursCard.dart';
import 'package:weather_app/widgets/searchBar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  WeatherController weatherController = Get.put(WeatherController());

  DailyWeatherController dailyWeatherController =
  Get.put(DailyWeatherController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              MySearchBar(),
          SizedBox(
            height: 200,
            child: Obx((() {
              if (WeatherController.isLoading.value) {
                return CircularProgressIndicator();
              } else {
                return Column(
                  children: [
                    Text(
                      weatherController
                          .currentWeather!.data!.first!.cityName!,
                      style: TextStyle(
                          fontSize: 20,
                          fontStyle: FontStyle.normal,
                          color: Colors.black45,
                          fontFamily: 'AktivGrotesk'),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.ac_unit,
                          size: 40,
                        ),
                        Text(
                          '${weatherController.currentWeather!.data!.first!
                              .appTemp!} °C',
                          style: TextStyle(
                              fontSize: 40,
                              fontStyle: FontStyle.normal,
                              color: Colors.black,
                              fontFamily: 'AktivGrotesk'),
                        ),
                      ],
                    ),
                  ],
                );
              }
            })),
          ),
          SizedBox(height: 40),
          Obx((() {
            if (DailyWeatherController.isLoading.value) {
              return Column(
                children: [
                  SizedBox(
                      child: CircularProgressIndicator(

                      )),
                ],
              );
            } else if (dailyWeatherController.dailyWeatherList.isEmpty) {
              return Icon(
                Icons.error_outline_rounded,
                size: 40);
            }
            else {
              return
                SizedBox(
                  height: 200,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  child: ListView.builder(
                      physics: BouncingScrollPhysics(
                          parent: AlwaysScrollableScrollPhysics()),
                      itemCount: dailyWeatherController.dailyWeatherList.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: index == 0
                              ? EdgeInsets.fromLTRB(16, 20, 10, 20)
                              : EdgeInsets.fromLTRB(0, 20, 10, 20),
                          child: NextHoursCard(date: dailyWeatherController.dailyWeatherList[index].validDate!.toString(),temp: dailyWeatherController.dailyWeatherList[index].temp!.toString()),
                        );
                      }),
                );
            }
          })),

      ],
    ),)
    ,
    );
  }
}
