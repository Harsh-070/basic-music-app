import 'dart:async';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music/dto_classes/new_release_song_dto.dart';
import 'package:music/dto_classes/recommanded_song_dto.dart';
import 'package:music/lists/song_lists.dart';
import 'package:music/playing_song_screen.dart';
import 'package:music/recently_song_bloc/recently_song_bloc.dart';
import 'custom_paint_modals.dart';
import 'dto_classes/recently_played_dto.dart';

class HomeScreenPage extends StatefulWidget {
  const HomeScreenPage({super.key});

  @override
  State<HomeScreenPage> createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenPage> {
  int selectedIndex = 0;
  List<RecentlyPlayedDto> listOfRecentlyplayedDto = [];
  List<RecommandedSongDto> listOfRecommandedSongDto = [];
  List<NewReleaseSongDto> listOfNewReleaseSongDto = [];
  @override
  void initState() {
    super.initState();
    //
    listOfRecentlyPlayed.forEach((element) {
      listOfRecentlyplayedDto.add(
        RecentlyPlayedDto(
          songName: element["songName"] as String,
          songImage: element["image"] as String,
          songAudio: element["songAudio"] as String,
        ),
      );
    });
    //
    listOfRecommandedSongs.forEach((element) {
      listOfRecommandedSongDto.add(
        RecommandedSongDto(
          songName: element["songName"] as String,
          artistsName: element["artistsName"] as String,
          songImage: element["image"] as String,
        ),
      );
    });
    //
    listOfNewReleaseSong.forEach((element) {
      listOfNewReleaseSongDto.add(
        NewReleaseSongDto(
          songName: element["songName"] as String,
          movieName: element["movieName"] as String,
          songImage: element["image"] as String,
        ),
      );
    });
  }

  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.tr,
      // extendBody: true,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(
          left: MediaQuery.of(context).size.width * 0.04862, //20
          right: MediaQuery.of(context).size.width * 0.04862, //20
        ),
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: [Color.fromRGBO(15, 8, 23, 1), Color.fromRGBO(78, 20, 132, 1)],
            radius: MediaQuery.of(context).size.width * 0.004862, //2
          ),
        ),
        child: ListView(
          children: [
            //
            GestureDetector(
              onTap: () {
                // setState(() {
                //   isBottomActive = !isBottomActive;
                // });
              },
              child: Text(
                "Explore",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.height * 0.035, //43
                ),
              ),
            ),
            //
            SizedBox(height: MediaQuery.of(context).size.height * 0.015), //15
            //--------------------------------
            //
            Text(
              "Recently played",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: MediaQuery.of(context).size.height * 0.025, //25
              ),
            ),
            //
            SizedBox(height: MediaQuery.of(context).size.height * 0.015), //15
            //
            Container(
              height: MediaQuery.of(context).size.height * 0.193, //165
              // color: Colors.yellow,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: listOfRecentlyplayedDto.length,
                itemBuilder: (context, index) {
                  RecentlyPlayedDto recentlyPlayedDto = listOfRecentlyplayedDto[index];
                  // print(recentlyPlayedDto.songImage);
                  return GestureDetector(
                    onTap: () {
                      //
                      if (BlocProvider.of<RecentlySongBloc>(context).state.listOfRecentlyplayedDto.isEmpty) {
                        BlocProvider.of<RecentlySongBloc>(context).add(
                          RecentlySongEvent.onRecentlySongSelected(listOfRecentlyplayedDto: listOfRecentlyplayedDto),
                        );
                      }
                      //
                      if (BlocProvider.of<RecentlySongBloc>(context).state.currentPlayedSong == null) {
                        BlocProvider.of<RecentlySongBloc>(
                          context,
                        ).add(RecentlySongEvent.onSongPlayed(selectedSongIndex: index));
                      }
                      //
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return PlayingSongScreen();
                          },
                        ),
                      );
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.height * 0.155, //130
                      margin: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.02431), //10
                      // color: Colors.orange,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //
                          Container(
                            height: MediaQuery.of(context).size.height * 0.155, //130
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: MediaQuery.of(context).size.height * 0.0005,
                                color: Colors.white,
                              ), //20
                              borderRadius: BorderRadius.circular(MediaQuery.of(context).size.height * 0.02),
                              image: DecorationImage(image: AssetImage(recentlyPlayedDto.songImage), fit: BoxFit.fill),
                            ),
                          ),
                          //
                          Text(
                            recentlyPlayedDto.songName,
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.height * 0.02, //20
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            //
            SizedBox(height: MediaQuery.of(context).size.height * 0.015), //15
            //
            //-----------------------------------------
            //
            Text(
              "Recommended for you",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: MediaQuery.of(context).size.height * 0.025, //25
              ),
            ),
            //
            SizedBox(height: MediaQuery.of(context).size.height * 0.015), //15
            //
            Container(
              height: MediaQuery.of(context).size.height * 0.22, //225
              // color: Colors.yellow,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: listOfRecommandedSongDto.length,
                itemBuilder: (context, index) {
                  RecommandedSongDto recommandedSongDto = listOfRecommandedSongDto[index];
                  return Container(
                    width: MediaQuery.of(context).size.height * 0.25,
                    // width: MediaQuery.of(context).size.width * 0.5, //200
                    margin: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.02431), //10
                    // color: Colors.orange,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //
                        Container(
                          height: MediaQuery.of(context).size.height * 0.155, //150
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: MediaQuery.of(context).size.height * 0.0005,
                              color: Colors.white,
                            ), //20
                            borderRadius: BorderRadius.circular(MediaQuery.of(context).size.height * 0.02), //12
                            image: DecorationImage(image: AssetImage(recommandedSongDto.songImage), fit: BoxFit.fill),
                          ),
                        ),
                        //
                        Text(
                          recommandedSongDto.songName,
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.height * 0.021, //20
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        //
                        Text(
                          recommandedSongDto.artistsName,
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.height * 0.02, //20
                            color: Color.fromRGBO(141, 132, 133, 1),
                            fontWeight: FontWeight.w600,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            //
            SizedBox(height: MediaQuery.of(context).size.height * 0.015), //15
            //
            //---------------------------------------
            //
            Text(
              "New Release",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: MediaQuery.of(context).size.height * 0.025, //25
              ),
            ),
            //
            SizedBox(height: MediaQuery.of(context).size.height * 0.015), //15
            //
            Container(
              height: MediaQuery.of(context).size.height * 0.21, //205
              // color: Colors.yellow,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: listOfRecommandedSongDto.length,
                itemBuilder: (context, index) {
                  NewReleaseSongDto newReleaseSongDto = listOfNewReleaseSongDto[index];
                  return Container(
                    width: MediaQuery.of(context).size.height * 0.28,
                    // width: MediaQuery.of(context).size.width * 0.57119, //235
                    margin: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.02431), //10
                    // color: Colors.orange,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //
                        Container(
                          height: MediaQuery.of(context).size.height * 0.15, //130
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: MediaQuery.of(context).size.height * 0.0005,
                              color: Colors.white,
                            ), //20
                            borderRadius: BorderRadius.circular(MediaQuery.of(context).size.height * 0.02),
                            image: DecorationImage(image: AssetImage(newReleaseSongDto.songImage), fit: BoxFit.fill),
                          ),
                        ),
                        //
                        Text(
                          newReleaseSongDto.songName,
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.height * 0.021, //20
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        //
                        Text(
                          newReleaseSongDto.movieName,
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.height * 0.02, //20
                            color: Color.fromRGBO(141, 132, 133, 1),
                            fontWeight: FontWeight.w600,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            //
            if (BlocProvider.of<RecentlySongBloc>(context).state.isBottomActive)
              SizedBox(height: MediaQuery.of(context).size.height * 0.143),
          ],
        ),
      ),
      //
      /*
      bottomSheet: BlocConsumer<RecentlySongBloc, RecentlySongState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          var height = MediaQuery.of(context).size.height * 0.1;
          print("check : ${height + (height * 0.4)}");
          if (state.currentPlayedSong != null) {
            return FutureBuilder<ui.Image>(
              future: loadImage(state.currentPlayedSong!.songImage),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  print(state.position.inSeconds.clamp(0, state.duration.inSeconds).toDouble());
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return PlayingSongScreen();
                          },
                        ),
                      );
                    },
                    child: CustomPaint(
                      size: Size(MediaQuery.of(context).size.width, height), //MediaQuery.of(context).size.height * 0.1
                      painter: ResponsivePlayerPainter(
                        image: snapshot.data!,
                        progress: (state.position.inSeconds / state.duration.inSeconds),
                      ),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.1,
                        width: MediaQuery.of(context).size.width * 0.9,
                        padding: EdgeInsets.only(
                          right: MediaQuery.of(context).size.width * 0.02431,
                        ), // Optional padding
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween, //
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              child: Row(
                                children: [
                                  //
                                  SizedBox(width: height + (height * 0.3)),
                                  //
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        state.currentPlayedSong!.songName,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: MediaQuery.of(context).size.height * 0.021, //22
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        "DJ Snake",
                                        style: TextStyle(
                                          color: ui.Color.fromARGB(255, 207, 203, 203),
                                          fontSize: MediaQuery.of(context).size.height * 0.02, //17
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            //
                            SizedBox(
                              width: height + (height * 0.3),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  //
                                  const Icon(Icons.favorite_border, color: Colors.white, size: 30),
                                  //
                                  //
                                  GestureDetector(
                                    onTap: () async {
                                      if (state.isPlaying) {
                                        // await state.audioPlayer.pause();
                                        BlocProvider.of<RecentlySongBloc>(context).add(RecentlySongEvent.onPause());
                                      } else {
                                        BlocProvider.of<RecentlySongBloc>(context).add(RecentlySongEvent.onResume());
                                      }
                                    },
                                    child: Icon(
                                      state.isPlaying ? Icons.pause_rounded : Icons.play_arrow_rounded,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                  ),
                                  //
                                  //
                                  GestureDetector(
                                    onTap: () async {
                                      //
                                      BlocProvider.of<RecentlySongBloc>(
                                        context,
                                      ).add(RecentlySongEvent.onNextButtonPressed(currentIndex: state.index));
                                    },
                                    child: Icon(Icons.skip_next, color: Colors.white, size: 30),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                } else {
                  return SizedBox();
                }
              },
            );
          } else {
            return SizedBox();
          }
        },
      ),*/

      //
      /*
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              width: MediaQuery.of(context).size.height * 0.004, //2
              color: Colors.grey,
            ),
          ),
          gradient: RadialGradient(
            colors: [Color.fromRGBO(15, 8, 23, 1), Color.fromRGBO(78, 20, 132, 1)],
            radius: MediaQuery.of(context).size.width * 0.012153, //5
            center: Alignment.center,
          ),
        ),
        height: MediaQuery.of(context).size.height * 0.11, //100
        child: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (value) {
            setState(() {
              selectedIndex = value;
            });
          },
          backgroundColor: Colors.transparent,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          iconSize: MediaQuery.of(context).size.height * 0.035, //35
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          selectedLabelStyle: TextStyle(
            fontSize: MediaQuery.of(context).size.height * 0.013, //13
            fontWeight: FontWeight.w900,
            foreground:
                Paint()
                  ..shader = ui.Gradient.linear(
                    Offset(0, 0),
                    Offset(
                      MediaQuery.of(context).size.width * 0.02431, //10
                      MediaQuery.of(context).size.width * 0.02431, //10
                    ),
                    [Color.fromRGBO(219, 40, 169, 1), Color.fromRGBO(146, 47, 245, 1)],
                  ),
          ),
          unselectedLabelStyle: TextStyle(
            fontSize: MediaQuery.of(context).size.height * 0.013, //13
            fontWeight: FontWeight.w900,
            color: Colors.white,
          ),
          items: [
            // 1 - EXPLORE
            BottomNavigationBarItem(icon: _buildNavIcon(Icons.music_note, 0), label: "EXPLORE"),
            // 2 - TRANDING
            BottomNavigationBarItem(icon: _buildNavIcon(Icons.local_fire_department_outlined, 1), label: "TRANDING"),
            // 3 - SEARCH
            BottomNavigationBarItem(icon: _buildNavIcon(Icons.search_rounded, 2), label: "SEARCH"),
            // 4 - LIBRARY
            BottomNavigationBarItem(icon: _buildNavIcon(Icons.library_music_outlined, 3), label: "LIBRARY"),
            // 5 - SETTINGS
            BottomNavigationBarItem(icon: _buildNavIcon(Icons.settings_outlined, 4), label: "SETTINGS"),
          ],
        ),
      ),*/
    );
  }

  Widget _buildNavIcon(IconData icon, int index) {
    bool isSelected = selectedIndex == index;
    return Container(
      margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.007), //3
      padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.005), //6
      decoration:
          isSelected
              ? BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white,
                  width: MediaQuery.of(context).size.height * 0.004, //2
                ),
                gradient: LinearGradient(colors: [Color.fromRGBO(219, 40, 169, 1), Color.fromRGBO(146, 47, 245, 1)]),
              )
              : BoxDecoration(shape: BoxShape.circle, color: Colors.transparent),
      child: Icon(icon),
    );
  }

  Future<ui.Image> loadImage(String assetPath) async {
    final ByteData data = await rootBundle.load(assetPath);
    final Completer<ui.Image> completer = Completer();
    ui.decodeImageFromList(data.buffer.asUint8List(), completer.complete);
    return completer.future;
  }

  String formatTime(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    return "$minutes:$seconds";
  }
}
