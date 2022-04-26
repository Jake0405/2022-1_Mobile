import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Youtube"),
        actions: <Widget> [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.alarm),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: SizedBox (
          width: 300,
          child: ListView (
            scrollDirection: Axis.vertical,
            children: [
              SizedBox(
                height: 300,
                child: ListView (
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      width: 300,
                      height: 300,
                      child: Image.network("https://bit.ly/3vH3vAq"),
                    ),
                    Container(
                      width: 300,
                      height: 300,
                      child: Image.network("https://bit.ly/37Jvesb"),
                    ),
                    Container(
                      width: 300,
                      height: 300,
                      child: Image.network("https://bit.ly/3xXoKAN"),
                    ),
                    Container(
                      width: 300,
                      height: 300,
                      child: Image.network("https://bit.ly/3EIfyBz"),
                    ),
                  ],
                ),
              ),
              Container(
                width: 300,
                height: 200,
                child: Image.network("https://bit.ly/3Lfozo9"),
              ),
              Text('여자친구가 생겼는데 아무도 믿지를 않네..'),
              Container(
                width: 300,
                height: 200,
                child: Image.network("https://bit.ly/3EIiYnP"),
              ),
              Text('한국 치킨을 처음 먹어본 영국 고등학생들의 반응!'),
              Container(
                width: 300,
                height: 250,
                child: Image.network("https://bit.ly/3KcpX9J"),
              ),
              Text('이영자가 극찬한 홍진경 \'소라미역국\' 레시피 [공부왕찐천재]'),
              Container(
                width: 300,
                height: 200,
                child: Image.network("https://bit.ly/3xSd3ev"),
              ),
              Text('[DJ티비씨] 태연-기억을 걷는 시간 #비긴어게인3 #DJ티비씨')
            ],
          ),
        ),
      ),
    );
  }
}

class ColorContainer extends StatelessWidget {
  final Color itsColor;
  const ColorContainer({
    required this.itsColor, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      color: itsColor,
      height: 100,
      width: 100,
    );
  }
}
