// 天気のアイコン

import 'package:flutter/material.dart';
import 'package:landry_helpli/models/whether_model.dart';

class WhetherIcon extends StatelessWidget {
  const WhetherIcon({Key? key, required this.whether}) : super(key: key);
  final Whethers whether;

  @override
  Widget build(BuildContext context) {
    if (whether == Whethers.Sunny || whether == Whethers.Clear) {
      return const Image(
          image: AssetImage("images/113.png"), width: 50, height: 50);
    } else if (whether == Whethers.Partly_cloudy) {
      return const Image(
          image: AssetImage("images/116.png"), width: 50, height: 50);
    } else if (whether == Whethers.Cloudy) {
      return const Image(
          image: AssetImage("images/119.png"), width: 50, height: 50);
    } else if (whether == Whethers.Overcast) {
      return const Image(
          image: AssetImage("images/122.png"), width: 50, height: 50);
    } else if (whether == Whethers.Mist) {
      return const Image(
          image: AssetImage("images/143.png"), width: 50, height: 50);
    } else if (whether == Whethers.Patchy_rain_possible) {
      return const Image(
          image: AssetImage("images/176.png"), width: 50, height: 50);
    } else if (whether == Whethers.Patchy_snow_possible) {
      return const Image(
          image: AssetImage("images/179.png"), width: 50, height: 50);
    } else if (whether == Whethers.Patchy_sleet_possible) {
      return const Image(
          image: AssetImage("images/182.png"), width: 50, height: 50);
    } else if (whether == Whethers.Patchy_freezing_drizzle_possible) {
      return const Image(
          image: AssetImage("images/185.png"), width: 50, height: 50);
    } else if (whether == Whethers.Thundery_outbreaks_possible) {
      return const Image(
          image: AssetImage("images/200.png"), width: 50, height: 50);
    } else if (whether == Whethers.Blowing_snow) {
      return const Image(
          image: AssetImage("images/227.png"), width: 50, height: 50);
    } else if (whether == Whethers.Blizzard) {
      return const Image(
          image: AssetImage("images/230.png"), width: 50, height: 50);
    } else if (whether == Whethers.Fog) {
      return const Image(
          image: AssetImage("images/248.png"), width: 50, height: 50);
    } else if (whether == Whethers.Freezing_fog) {
      return const Image(
          image: AssetImage("images/260.png"), width: 50, height: 50);
    } else if (whether == Whethers.Patchy_light_drizzle) {
      return const Image(
          image: AssetImage("images/263.png"), width: 50, height: 50);
    } else if (whether == Whethers.Light_drizzle) {
      return const Image(
          image: AssetImage("images/266.png"), width: 50, height: 50);
    } else if (whether == Whethers.Freezing_drizzle) {
      return const Image(
          image: AssetImage("images/281.png"), width: 50, height: 50);
    } else if (whether == Whethers.Heavy_freezing_drizzle) {
      return const Image(
          image: AssetImage("images/284.png"), width: 50, height: 50);
    } else if (whether == Whethers.Patchy_light_rain) {
      return const Image(
          image: AssetImage("images/293.png"), width: 50, height: 50);
    } else if (whether == Whethers.Light_rain) {
      return const Image(
          image: AssetImage("images/296.png"), width: 50, height: 50);
    } else if (whether == Whethers.Moderate_rain_at_times) {
      return const Image(
          image: AssetImage("images/299.png"), width: 50, height: 50);
    } else if (whether == Whethers.Moderate_rain) {
      return const Image(
          image: AssetImage("images/302.png"), width: 50, height: 50);
    } else if (whether == Whethers.Heavy_rain_at_times) {
      return const Image(
          image: AssetImage("images/305.png"), width: 50, height: 50);
    } else if (whether == Whethers.Heavy_rain) {
      return const Image(
          image: AssetImage("images/308.png"), width: 50, height: 50);
    } else if (whether == Whethers.Light_freezing_rain) {
      return const Image(
          image: AssetImage("images/311.png"), width: 50, height: 50);
    } else if (whether == Whethers.Moderate_or_heavy_freezing_rain) {
      return const Image(
          image: AssetImage("images/314.png"), width: 50, height: 50);
    } else if (whether == Whethers.Light_sleet) {
      return const Image(
          image: AssetImage("images/317.png"), width: 50, height: 50);
    } else if (whether == Whethers.Moderate_or_heavy_sleet) {
      return const Image(
          image: AssetImage("images/320.png"), width: 50, height: 50);
    } else if (whether == Whethers.Patchy_light_snow) {
      return const Image(
          image: AssetImage("images/323.png"), width: 50, height: 50);
    } else if (whether == Whethers.Light_snow) {
      return const Image(
          image: AssetImage("images/326.png"), width: 50, height: 50);
    } else if (whether == Whethers.Patchy_moderate_snow) {
      return const Image(
          image: AssetImage("images/329.png"), width: 50, height: 50);
    } else if (whether == Whethers.Moderate_snow) {
      return const Image(
          image: AssetImage("images/332.png"), width: 50, height: 50);
    } else if (whether == Whethers.Patchy_heavy_snow) {
      return const Image(
          image: AssetImage("images/335.png"), width: 50, height: 50);
    } else if (whether == Whethers.Heavy_snow) {
      return const Image(
          image: AssetImage("images/338.png"), width: 50, height: 50);
    } else if (whether == Whethers.Ice_pellets) {
      return const Image(
          image: AssetImage("images/350.png"), width: 50, height: 50);
    } else if (whether == Whethers.Light_rain_shower) {
      return const Image(
          image: AssetImage("images/353.png"), width: 50, height: 50);
    } else if (whether == Whethers.Moderate_or_heavy_rain_shower) {
      return const Image(
          image: AssetImage("images/356.png"), width: 50, height: 50);
    } else if (whether == Whethers.Torrential_rain_shower) {
      return const Image(
          image: AssetImage("images/359.png"), width: 50, height: 50);
    } else if (whether == Whethers.Light_sleet_showers) {
      return const Image(
          image: AssetImage("images/362.png"), width: 50, height: 50);
    } else if (whether == Whethers.Moderate_or_heavy_sleet_showers) {
      return const Image(
          image: AssetImage("images/365.png"), width: 50, height: 50);
    } else if (whether == Whethers.Light_snow_showers) {
      return const Image(
          image: AssetImage("images/368.png"), width: 50, height: 50);
    } else if (whether == Whethers.Moderate_or_heavy_snow_showers) {
      return const Image(
          image: AssetImage("images/371.png"), width: 50, height: 50);
    } else if (whether == Whethers.Light_showers_of_ice_pellets) {
      return const Image(
          image: AssetImage("images/374.png"), width: 50, height: 50);
    } else if (whether == Whethers.Moderate_or_heavy_showers_of_ice_pellets) {
      return const Image(
          image: AssetImage("images/377.png"), width: 50, height: 50);
    } else if (whether == Whethers.Patchy_light_rain_with_thunder) {
      return const Image(
          image: AssetImage("images/386.png"), width: 50, height: 50);
    } else if (whether == Whethers.Moderate_or_heavy_rain_with_thunder) {
      return const Image(
          image: AssetImage("images/389.png"), width: 50, height: 50);
    } else if (whether == Whethers.Patchy_light_snow_with_thunder) {
      return const Image(
          image: AssetImage("images/392.png"), width: 50, height: 50);
    } else if (whether == Whethers.Moderate_or_heavy_snow_with_thunder) {
      return const Image(
          image: AssetImage("images/395.png"), width: 50, height: 50);
    } else {
      return const Icon(
        color: Color.fromARGB(255, 0, 0, 0),
        size: 50,
        Icons.question_mark,
      );
    }
  }
}
