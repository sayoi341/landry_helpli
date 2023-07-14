import 'package:hooks_riverpod/hooks_riverpod.dart';

enum Whethers { Sunny, Partly_cloudy, Cloudy, Overcast, Mist, 
Patchy_rain_possible, Patchy_snow_possible, Patchy_sleet_possible, 
Patchy_freezing_drizzle_possible, Thundery_outbreaks_possible, 
Blowing_snow, Blizzard, Fog, Freezing_fog, Patchy_light_drizzle,
Light_drizzle, Freezing_drizzle, Heavy_freezing_drizzle, 
Patchy_light_rain, Light_rain, Moderate_rain_at_times, Moderate_rain, 
Heavy_rain_at_times, Heavy_rain, Light_freezing_rain, 
Moderate_or_heavy_freezing_rain, Light_sleet, Moderate_or_heavy_sleet, 
Patchy_light_snow, Light_snow, Patchy_moderate_snow, Moderate_snow, 
Patchy_heavy_snow, Heavy_snow, Ice_pellets, Light_rain_shower, 
Moderate_or_heavy_rain_shower, Torrential_rain_shower, 
Light_sleet_showers, Moderate_or_heavy_sleet_showers, Light_snow_showers, 
Moderate_or_heavy_snow_showers, Light_showers_of_ice_pellets, 
Moderate_or_heavy_showers_of_ice_pellets, Patchy_light_rain_with_thunder,
Moderate_or_heavy_rain_with_thunder, Patchy_light_snow_with_thunder,
Moderate_or_heavy_snow_with_thunder, Clear}

class WhetherData {
  String time;
  double temp_c;
  Whethers condition;

  WhetherData(this.time, this.temp_c, this.condition);
}

final whetherStateProvider = StateProvider<List<WhetherData>>((ref) => [
      WhetherData("14:00", 20, Whethers.Sunny),
      WhetherData("15:00", 20, Whethers.Sunny),
      WhetherData("16:00", 20, Whethers.Sunny),
      WhetherData("17:00", 20, Whethers.Sunny),
      WhetherData("17:00", 20, Whethers.Sunny),
      WhetherData("17:00", 20, Whethers.Sunny),
      WhetherData("17:00", 20, Whethers.Sunny),
      WhetherData("17:00", 20, Whethers.Sunny),
      WhetherData("17:00", 20, Whethers.Sunny),
      WhetherData("17:00", 20, Whethers.Sunny),
      WhetherData("17:00", 20, Whethers.Sunny),
      WhetherData("17:00", 20, Whethers.Sunny),
      WhetherData("17:00", 20, Whethers.Sunny),
      WhetherData("17:00", 20, Whethers.Sunny),
      WhetherData("17:00", 20, Whethers.Sunny),
      WhetherData("17:00", 20, Whethers.Sunny),
      WhetherData("17:00", 20, Whethers.Sunny),
      WhetherData("17:00", 20, Whethers.Sunny),
      WhetherData("17:00", 20, Whethers.Sunny),
      WhetherData("17:00", 20, Whethers.Sunny),
      WhetherData("17:00", 20, Whethers.Sunny),
      WhetherData("17:00", 20, Whethers.Sunny),
      WhetherData("17:00", 20, Whethers.Sunny),
      WhetherData("17:00", 20, Whethers.Sunny),
      WhetherData("17:00", 20, Whethers.Sunny),
    ]);
