import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Hello Flutter",
            style: TextStyle(
              fontSize: 28,
            ), // TextStyle 객체
          ),
        ),
        body: SingleChildScrollView(
          // widget으로 먼저 감싸고, widget 객체 네임?을 SingleChildScrollView로 수정함
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Image.network("https://i.ibb.co/nngK6j3/startup.png",
                      width: 81),
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: "이메일",
                  ),
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "비밀번호",
                  ),
                ),
                // container : 그냥 box 위젯
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 24),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("login"),
                  ),
                )
              ], // children : 배열
            ),
          ),
        ),
      ),
    );
  }
}

// home : 화면에 보이는 영역
// Scaffold : 자녀 영역에 원하는 위젯을 넣으면 만들어주는 역할
// 자녀 영역 : appBar (상단 바), body (화면 중앙에 가장 큰 면적), bottomNavigationBar (하단 바), floatingActionButton (하단 화면 최상위에 떠있는 버튼)
