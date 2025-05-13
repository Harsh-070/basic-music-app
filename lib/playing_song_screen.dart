import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music/recently_song_bloc/recently_song_bloc.dart';

class PlayingSongScreen extends StatelessWidget {
  const PlayingSongScreen({super.key});
  String formatTime(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    return "$minutes:$seconds";
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RecentlySongBloc, RecentlySongState>(
      listener: (context, state) {
        
      },
      builder: (context, state) {
        return Scaffold(
          body: Container(
            height: double.infinity,
            width: double.infinity,
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.04862, //20
              right: MediaQuery.of(context).size.width * 0.04862, //20
              top: MediaQuery.of(context).size.height * 0.07, //20
            ),
            decoration: BoxDecoration(
              gradient: RadialGradient(
                colors: [Color.fromRGBO(15, 8, 23, 1), Color.fromRGBO(78, 20, 132, 1)],
                radius: MediaQuery.of(context).size.width * 0.004862, //2
              ),
            ),
            child:
                state.currentPlayedSong != null
                    ? Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //
                        Container(
                          height: MediaQuery.of(context).size.height * 0.07, //80
                          width: double.infinity,
                          // color: Colors.yellow,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //
                              IconButton(
                                padding: EdgeInsets.all(0),
                                onPressed: () async {
                                  Navigator.of(context).pop();
                                },
                                icon: Icon(
                                  Icons.keyboard_arrow_down_sharp,
                                  size: MediaQuery.of(context).size.height * 0.061524, //45
                                  color: Colors.white,
                                ),
                              ),
                              //
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  //
                                  Text(
                                    "NOW PLAYING FROM",
                                    style: TextStyle(
                                      color: Color.fromRGBO(141, 132, 133, 1),
                                      fontSize: MediaQuery.of(context).size.height * 0.017, //20
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  //
                                  ShaderMask(
                                    shaderCallback:
                                        (bounds) => LinearGradient(
                                          colors: [Color.fromRGBO(219, 40, 169, 1), Color.fromRGBO(146, 47, 245, 1)],
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                        ).createShader(bounds),
                                    child: Text(
                                      "Indigo",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: MediaQuery.of(context).size.height * 0.03, //29
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              //
                              IconButton(
                                padding: EdgeInsets.all(0),
                                onPressed: () {},
                                icon: Icon(
                                  Icons.more_horiz_rounded,
                                  size: MediaQuery.of(context).size.height * 0.061534, //45
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        //
                        //
                        SizedBox(height: MediaQuery.of(context).size.height * 0.034179), //25
                        //
                        //
                        Container(
                          height: MediaQuery.of(context).size.height * 0.46, //360
                          width: double.infinity,
                          // color: Colors.lightGreen,- /-- 
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              //
                              Container(
                                height: MediaQuery.of(context).size.height * 0.35547, //260
                                width: MediaQuery.of(context).size.height * 0.35547, //260
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(MediaQuery.of(context).size.width * 0.02917), //12
                                  image: DecorationImage(
                                    image: AssetImage(state.currentPlayedSong!.songImage),
                                    fit: BoxFit.fill,
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromRGBO(252, 157, 192, 0.668),
                                      offset: Offset(0, 0),
                                      blurRadius: 11, //20
                                      spreadRadius: 1, //1
                                      blurStyle: BlurStyle.normal,
                                    ),
                                  ],
                                ),
                              ),
                              //
                              //
                              Container(
                                height: MediaQuery.of(context).size.height * 0.093, //85
                                padding: EdgeInsets.all(0),
                                // color: Colors.lightBlue,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    //
                                    Text(
                                      state.currentPlayedSong!.songName,
                                      style: TextStyle(
                                        color: Color.fromRGBO(255, 70, 138, 1),
                                        fontSize: MediaQuery.of(context).size.height * 0.03, //33
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    //
                                    Text(
                                      "Alan Walker",
                                      style: TextStyle(
                                        color: Color.fromRGBO(141, 132, 133, 1),
                                        fontSize: MediaQuery.of(context).size.height * 0.027, //26
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        //
                        SizedBox(height: MediaQuery.of(context).size.height * 0.034179), //25
                        //
                        Container(
                          height: MediaQuery.of(context).size.height * 0.3, //210
                          width: double.infinity,
                          // color: const Color.fromARGB(97, 255, 193, 7),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              //
                              //
                              Container(
                                height: MediaQuery.of(context).size.height * 0.047852, //35
                                // color: Colors.lightBlue,
                                child: Column(
                                  children: [
                                    //
                                    SliderTheme(
                                      data: SliderThemeData(
                                        activeTrackColor: Color(0xFFFF3780),
                                        inactiveTrackColor: Color(0xFFFFB1CD),
                                        thumbShape: RoundSliderThumbShape(
                                          enabledThumbRadius: MediaQuery.of(context).size.height * 0.0075,
                                        ), //6
                                        thumbColor: Color(0xFFFF3780),
                                      ),
                                      child: Slider(
                                        padding: EdgeInsets.all(0),
                                        min: 0,
                                        max: state.duration.inSeconds.toDouble(),
                                        value: state.position.inSeconds.clamp(0, state.duration.inSeconds).toDouble(),
                                        onChangeStart: (_) async {
                                          // state.wasPlayingBeforeSeek = isPlaying;
                                          BlocProvider.of<RecentlySongBloc>(
                                            context,
                                          ).add(RecentlySongEvent.updateWasPlayingBeforeSeek(state.isPlaying));
                                          await state.audioPlayer.pause();
                                        },
                                        onChanged: (value) {
                                          // setState(() => position = Duration(seconds: value.toInt()));
                                          BlocProvider.of<RecentlySongBloc>(
                                            context,
                                          ).add(RecentlySongEvent.updatePosition(Duration(seconds: value.toInt())));
                                        },
                                        onChangeEnd: (value) async {
                                          await state.audioPlayer.seek(Duration(seconds: value.toInt()));
                                          if (state.wasPlayingBeforeSeek) {
                                            await state.audioPlayer.resume();
                                          }
                                          //   ;
                                        },
                                      ),
                                    ),
                                    //
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        //
                                        Text(
                                          formatTime(state.position),
                                          style: TextStyle(
                                            color: Color.fromRGBO(255, 55, 128, 1),
                                            fontSize: MediaQuery.of(context).size.height * 0.01915, //14
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        //
                                        Text(
                                          formatTime(state.duration),
                                          style: TextStyle(
                                            color: Color.fromRGBO(255, 55, 128, 1),
                                            fontSize: MediaQuery.of(context).size.height * 0.01915, //14
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              //
                              //
                              Container(
                                height: MediaQuery.of(context).size.height * 0.109376, //80
                                width: double.infinity,
                                // color: Colors.orange,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    //
                                    IconButton(
                                      padding: EdgeInsets.all(0),
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.replay_10_rounded,
                                        size: MediaQuery.of(context).size.height * 0.045, //39
                                        color: Colors.white,
                                      ),
                                    ),
                                    //
                                    IconButton(
                                      padding: EdgeInsets.all(0),
                                      onPressed: () {
                                        //
                                        BlocProvider.of<RecentlySongBloc>(
                                          context,
                                        ).add(RecentlySongEvent.onPreviousButtonPressed(currentIndex: state.index));
                                      },
                                      icon: Icon(
                                        Icons.skip_previous_rounded,
                                        size: MediaQuery.of(context).size.height * 0.06, //50
                                        color: Colors.white,
                                      ),
                                    ),
                                    //
                                    Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        gradient: LinearGradient(
                                          colors: [Color.fromRGBO(219, 40, 169, 1), Color.fromRGBO(146, 47, 245, 1)],
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                        ),
                                      ),
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.transparent,
                                          shadowColor: Colors.transparent,
                                          shape: const CircleBorder(),
                                          padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.0065), //7
                                        ),
                                        onPressed: () async {
                                          if (state.isPlaying) {
                                            // await state.audioPlayer.pause();
                                            BlocProvider.of<RecentlySongBloc>(context).add(RecentlySongEvent.onPause());
                                          } else {
                                            BlocProvider.of<RecentlySongBloc>(
                                              context,
                                            ).add(RecentlySongEvent.onResume());
                                          }
                                        },
                                        child: Icon(
                                          state.isPlaying ? Icons.pause_rounded : Icons.play_arrow_rounded,
                                          size: MediaQuery.of(context).size.height * 0.07, //55
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),

                                    //
                                    IconButton(
                                      padding: EdgeInsets.all(0),
                                      onPressed: () {
                                        //
                                        BlocProvider.of<RecentlySongBloc>(
                                          context,
                                        ).add(RecentlySongEvent.onNextButtonPressed(currentIndex: state.index));
                                        // //
                                        // BlocProvider.of<RecentlySongBloc>(
                                        //   context,
                                        // ).add(RecentlySongEvent.onSongPlayed(selectedSongIndex: state.index + 1));
                                      },
                                      icon: Icon(
                                        Icons.skip_next_rounded,
                                        size: MediaQuery.of(context).size.height * 0.06, //50
                                        color: Colors.white,
                                      ),
                                    ),
                                    //
                                    IconButton(
                                      padding: EdgeInsets.all(0),
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.forward_10_rounded,
                                        size: MediaQuery.of(context).size.height * 0.045, //39
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              //
                              //
                              Container(
                                height: MediaQuery.of(context).size.height * 0.082032, //60
                                width: double.infinity,
                                // color: Colors.orange,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    //
                                    IconButton(
                                      padding: EdgeInsets.all(0),
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.favorite,
                                        size: MediaQuery.of(context).size.height * 0.042, //40,
                                        color: Colors.white,
                                      ),
                                    ),
                                    //
                                    IconButton(
                                      padding: EdgeInsets.all(0),
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.shuffle_rounded,
                                        size: MediaQuery.of(context).size.height * 0.042, //40,
                                        color: Colors.white,
                                      ),
                                    ),
                                    //
                                    IconButton(
                                      padding: EdgeInsets.all(0),
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.repeat_rounded,
                                        size: MediaQuery.of(context).size.height * 0.042, //40,
                                        color: Colors.white,
                                      ),
                                    ),
                                    //
                                    IconButton(
                                      padding: EdgeInsets.all(0),
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.queue_music_rounded,
                                        size: MediaQuery.of(context).size.height * 0.042, //40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                    : Center(child: CircularProgressIndicator(color: Colors.white)),
          ),
        );
      },
    );
  }
}
