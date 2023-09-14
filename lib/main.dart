import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  final listImage = [
    "https://image.kemenpora.go.id/images/content/2022/08/03/2373/2689Menang-Telak-Atas-Kamboja-9-2--Tim-Sepakbola-CP-Indonesia-Siap-Bertarung-Lawan-Thailand-di-Final.jpeg",
    "https://akcdn.detik.net.id/community/media/visual/2020/02/25/3833496a-a1b8-428f-9202-79f8671928b7_169.jpeg?w=700&q=90",
    "https://img.antaranews.com/cache/1200x800/2023/05/17/antarafoto-timnas-indonesia-raih_medali-emas-sea-games-160523-adm-8.jpg.webp",
  ];
  final listTitle = ["Debat sengit diadakan di seluruh negeri tentang mengapa Inggris selalu kalah dari Jerman dalam adu pinalti", " Sepakbola merupakan olahraga paling populer di muka bumi. Penggemar olahraga yang satu ini diperkirakan mencapai 4 miliar orang di seluruh dunia"
, "Kenapa Bola Sepak Identik dengan Warna Hitam Putih? Begini Penjelasannya"];

  // This widget is the root of your application.
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("MyApp"),
          backgroundColor: Color.fromARGB(199, 10, 80, 165),
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CupertinoButton(
                    child: const Text('BERITA TERBARU'),
                    onPressed: () {},
                  ),
                  CupertinoButton(
                      child: const Text('PERTANDINGAN HARI INI'),
                      onPressed: () {}),
                ],
                
              ),
              
              Image.network(
               'https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/blt50bbbed57868ca33/643da6c51ba2cece8633666c/GOAL_-_Blank_WEB_-_Facebook_(48).jpg?auto=webp&format=pjpg&width=3840&quality=60',
                width: 500, // Sesuaikan lebar gambar sesuai kebutuhan Anda
                height: 180, // Sesuaikan tinggi gambar sesuai kebutuhan Anda
                
                
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Text(
                  'Menang Telak Atas Kamboja 9-2, Tim Sepakbola CP Indonesia Siap Bertarung Lawan Thailand di Final',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center, // Menengahkan teks
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                color: Color.fromARGB(199, 200, 20, 152),
                alignment: Alignment.bottomCenter,
                child: Text("Transfer",
                    style: TextStyle(fontSize: 30, color: Colors.white)),
              ),
              Column(
                children: List.generate(listImage.length, (i) => List1(
                  title: listTitle[i],
                  img: listImage[i],
                ),),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class List1 extends StatelessWidget {
  const List1({
    super.key,
    required this.img,
    required this.title,
  });

  final String title;
  final String img;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.network(
          img,
          width: 150, // Sesuaikan lebar gambar sesuai kebutuhan Anda
          height:
              150, // Sesuaikan tinggi gambar sesuai kebutuhan Anda
        ),
        SizedBox(width: 10), // Spasi antara gambar dan teks
        Text(
          title,
          style: TextStyle(
              fontSize:
                  10), // Sesuaikan gaya teks sesuai kebutuhan Anda
        ),
      ],
    );
  }
}