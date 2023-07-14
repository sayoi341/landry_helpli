//ホームページの中身を記述する
//ホームページは、ロボットの情報、天気の情報、選択のおすすめ度、ロボ稼働ボタンを表示する
//順次Textを変更していく

import 'package:flutter/material.dart';
import 'package:landry_helpli/components/button.dart';
import 'package:landry_helpli/components/recommendation.dart';
import 'package:landry_helpli/components/robot_status.dart';

import 'package:landry_helpli/components/whether.dart';

import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Future<void> getData() async {
    try {
      var response =
          await http.get(Uri.https('api.weatherapi.com', '/v1/forecast.json', {
        'key': 'd18ca1360171448ba1663104233006',
        'q': 'Mito',
        'days': '1',
        'api': 'no',
        'alerts': 'no'
      }));
      var jsonResponse = _response(response);
      print(jsonResponse['forecast']['forecastday'][0]['hour']);
    } catch (_) {
      debugPrint("era-");
    }
  }

  dynamic _response(http.Response response) {
    switch (response.statusCode) {
      case 200:
        var responseJson = jsonDecode(response.body);
        return responseJson;
      case 400:
        throw Exception('一般的なクライアントエラーです');
      case 401:
        throw Exception('アクセス権限がない、または認証に失敗しました');
      case 403:
        throw Exception('閲覧権限がないファイルやフォルダです');
      case 500:
        throw Exception('何らかのサーバー内で起きたエラーです');
      default:
        throw Exception('何かしらの問題が発生しています');
    }
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        padding: const EdgeInsets.all(16),
        child: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RobotStatus(),
              Whether(),
              Flexible(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Recommendation(),
                    Button(title: "a"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
