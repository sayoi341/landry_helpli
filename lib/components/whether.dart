//天気情報を載せる

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'package:landry_helpli/components/whether_icon.dart';
import 'package:landry_helpli/models/whether_model.dart';

import 'package:landry_helpli/apis/api.dart';

import 'package:http/http.dart' as http;

class Whether extends StatefulHookConsumerWidget {
  const Whether({super.key});

  @override
  WhetherState createState() => WhetherState();
}

class WhetherState extends ConsumerState<Whether> {
  @override
  void initState() {
    super.initState();
    getData();
  }

  Future<void> getData() async {
    try {
      var response = await http
          .get(Uri.https(dotenv.get('W_ENDPOINT'), '/v1/forecast.json', {
        'key': dotenv.get('W_KEY'),
        'q': 'Mito',
        'days': '1',
        'api': 'no',
        'alerts': 'no'
      }));
      var jsonResponse =
          responses(response)['forecast']['forecastday'][0]['hour'];

      ref.read(whetherStateProvider.notifier).state.clear();
      final l = jsonResponse.map((dynamic e) {
        String time = e['time'];
        double temp_c = e['temp_c'];
        Whethers condition =
            Whethers.values.byName(e['condition']['text'].replaceAll(" ", "_"));

        return WhetherData(time, temp_c, condition);
      }).cast<WhetherData>();

      ref.read(whetherStateProvider.notifier).state = [...l];

      print("fetch");
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    final w = ref.watch(whetherStateProvider);

    return Flexible(
      flex: 4,
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.all(16),
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Color.fromRGBO(255, 253, 215, 1),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Column(
              children: <Widget>[
                const Text(
                  "現在の天気",
                  style: TextStyle(fontSize: 16),
                ),
                WhetherIcon(whether: w[12].condition),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  "今後の天気",
                  style: TextStyle(fontSize: 16),
                ),
                Container(
                  margin: const EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          WhetherIcon(whether: w[6].condition),
                          const Text("6:00")
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          WhetherIcon(whether: w[12].condition),
                          const Text("12:00")
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          WhetherIcon(whether: w[18].condition),
                          const Text("18:00")
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          WhetherIcon(whether: w[23].condition),
                          const Text("24:00")
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
