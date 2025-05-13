import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  List<Map<String, dynamic>> listOfSetting = [
    {"icon": Icons.edit_square, "settingName": "Edit Profile"},
    {"icon": Icons.queue_music_rounded, "settingName": "Add to Playlists"},
    {"icon": Icons.favorite_rounded, "settingName": "Favorite"},
    {"icon": Icons.file_download_outlined, "settingName": "Offline Dowloads"},
    {"icon": Icons.share_rounded, "settingName": "Share Your Profile"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(
          left: MediaQuery.of(context).size.width * 0.04862, //20
          right: MediaQuery.of(context).size.width * 0.04862, //20
          top: MediaQuery.of(context).size.height * 0.04, //20
        ),
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: [Color.fromRGBO(15, 8, 23, 1), Color.fromRGBO(78, 20, 132, 1)],
            radius: MediaQuery.of(context).size.width * 0.004862, //2
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //
            Container(
              height: MediaQuery.of(context).size.height * 0.35,
              width: double.infinity,
              decoration: BoxDecoration(
                // color: Colors.yellow,
                border: Border(bottom: BorderSide(color: Color.fromRGBO(141, 132, 133, 0.463), width: 5)),
              ),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //
                  Container(
                    height: MediaQuery.of(context).size.height * 0.18, //260
                    width: MediaQuery.of(context).size.height * 0.18, //260
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color.fromRGBO(141, 132, 133, 0.5),
                        width: 4,
                        strokeAlign: BorderSide.strokeAlignOutside,
                      ),
                      borderRadius: BorderRadius.circular(100), //12
                      image: DecorationImage(
                        image: AssetImage("assets/images/song-image/Closer.jpg"),
                        fit: BoxFit.fill,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(255, 0, 183, 0.625),
                          offset: Offset(0, 0),
                          blurRadius: 20, //20
                          spreadRadius: 4, //1
                          blurStyle: BlurStyle.solid,
                        ),
                      ],
                    ),
                  ),
                  //
                  //
                  Container(
                    height: MediaQuery.of(context).size.height * 0.097, //85
                    padding: EdgeInsets.all(0),
                    // color: Colors.lightBlue,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        //
                        Text(
                          "Harsh Jariwala",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: MediaQuery.of(context).size.height * 0.033, //33
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        //
                        Text(
                          "Surat",
                          style: TextStyle(
                            color: Color.fromRGBO(141, 132, 133, 1),
                            fontSize: MediaQuery.of(context).size.height * 0.029, //26
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //
            Container(
              height: MediaQuery.of(context).size.height * 0.33, //
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 10),
              // color: Colors.yellow,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(listOfSetting.length, (index) {
                  print(index);
                  var setting = listOfSetting[index];
                  return Row(
                    children: [
                      ShaderMask(
                        shaderCallback:
                            (bounds) => LinearGradient(
                              colors: [Color.fromRGBO(219, 40, 169, 1), Color.fromRGBO(146, 47, 245, 1)],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              stops: [0.2, 0.7],
                              tileMode: TileMode.mirror,
                            ).createShader(bounds),
                        child: Icon(setting["icon"], color: Colors.white, size: 35),
                      ),
                      //
                      SizedBox(width: 20),
                      //
                      Text(
                        setting["settingName"],
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: MediaQuery.of(context).size.height * 0.029, //33
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  );
                }),
              ),
            ),
            //
            Container(
              height: MediaQuery.of(context).size.height * 0.1, //
              // width: double.infinity,
              // color: Colors.yellow,
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.07,
                    width: MediaQuery.of(context).size.width * 0.45,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2.5, color: Colors.white),
                      borderRadius: BorderRadius.circular(40),
                      gradient: LinearGradient(
                        colors: [Color.fromRGBO(219, 40, 168, 0.7), Color.fromRGBO(146, 47, 245, 0.7)],
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        stops: [0.25, 0.75],
                        tileMode: TileMode.mirror,
                      ),
                    ),
                    child: Text(
                      "Logout",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1,
                      ),
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
