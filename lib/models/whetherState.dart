import 'package:hooks_riverpod/hooks_riverpod.dart';

enum Whethers { sunny, cloudy, rainy, snowy, moon }

class WhetherData {
  String time;
  double temp_c;
  Whethers condition;

  WhetherData(this.time, this.temp_c, this.condition);
}

final whetherStateProvider = StateProvider<List<WhetherData>>((ref) => [
      WhetherData("14:00", 20, Whethers.cloudy),
      WhetherData("15:00", 20, Whethers.cloudy),
      WhetherData("16:00", 20, Whethers.cloudy),
      WhetherData("17:00", 20, Whethers.cloudy),
      WhetherData("17:00", 20, Whethers.cloudy),
      WhetherData("17:00", 20, Whethers.cloudy),
      WhetherData("17:00", 20, Whethers.cloudy),
      WhetherData("17:00", 20, Whethers.cloudy),
      WhetherData("17:00", 20, Whethers.cloudy),
      WhetherData("17:00", 20, Whethers.cloudy),
      WhetherData("17:00", 20, Whethers.cloudy),
      WhetherData("17:00", 20, Whethers.cloudy),
      WhetherData("17:00", 20, Whethers.cloudy),
      WhetherData("17:00", 20, Whethers.cloudy),
      WhetherData("17:00", 20, Whethers.cloudy),
      WhetherData("17:00", 20, Whethers.cloudy),
      WhetherData("17:00", 20, Whethers.cloudy),
      WhetherData("17:00", 20, Whethers.cloudy),
      WhetherData("17:00", 20, Whethers.cloudy),
      WhetherData("17:00", 20, Whethers.cloudy),
      WhetherData("17:00", 20, Whethers.cloudy),
      WhetherData("17:00", 20, Whethers.cloudy),
      WhetherData("17:00", 20, Whethers.cloudy),
      WhetherData("17:00", 20, Whethers.cloudy),
      WhetherData("17:00", 20, Whethers.cloudy),
    ]);
