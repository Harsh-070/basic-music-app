import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music/dashboard_page.dart';
import 'package:music/home_screen_page.dart';
import 'package:music/recently_song_bloc/recently_song_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        //
        BlocProvider(
          create: (context) {
            print("Called bloc init");
            return RecentlySongBloc(RecentlySongState.initial());
          },
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Music',
        theme: ThemeData(
          bottomSheetTheme: BottomSheetThemeData(
            backgroundColor: Colors.transparent,
            // modalBackgroundColor: Colors.transparent
          )
        ),
        home: DashboardPage(),
      ),
    );
  }
}
