import 'package:audioplayers/audioplayers.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:music/dto_classes/recently_played_dto.dart';

part 'recently_song_event.dart';
part 'recently_song_state.dart';
part 'recently_song_bloc.freezed.dart';

class RecentlySongBloc extends Bloc<RecentlySongEvent, RecentlySongState> {
  RecentlySongBloc(super.initialState) {
    //
    on<_OnRecentlySongSelected>((event, emit) {
      emit(state.copyWith(listOfRecentlyplayedDto: event.listOfRecentlyplayedDto));
    });

    //
    on<_OnSongPlayed>((event, emit) async {
      final AudioPlayer audioPlayer = state.audioPlayer;
      final RecentlyPlayedDto selectedSong = state.listOfRecentlyplayedDto[event.selectedSongIndex];

      try {
        await audioPlayer.stop(); // Stop previous if playing
        await audioPlayer.setSource(AssetSource(selectedSong.songAudio));
        final duration = await audioPlayer.getDuration();
        // emit(state.copyWith(duration: duration ?? Duration.zero));
        await audioPlayer.resume();

        emit(
          state.copyWith(
            audioPlayer: audioPlayer,
            currentPlayedSong: selectedSong,
            index: event.selectedSongIndex,
            duration: duration ?? Duration.zero,
            isPlaying: true,
            isBottomActive: true,
          ),
        );

        // // Start listening to duration and position
        // audioPlayer.onDurationChanged.listen((newDuration) {
        //   print("Duration : ${newDuration}");
        //   // add(RecentlySongEvent.updateDuration(newDuration));
        // });
        audioPlayer.onDurationChanged.listen((event) {
          print("durationn: ${event}");
        });

        audioPlayer.onPositionChanged.listen((position) {
          add(RecentlySongEvent.updatePosition(position));
        });

        audioPlayer.onPlayerStateChanged.listen((playerState) {
          add(RecentlySongEvent.updatePlayerState(playerState == PlayerState.playing));
        });

        audioPlayer.onPlayerComplete.listen((event) {
          add(RecentlySongEvent.onNextButtonPressed(currentIndex: state.index));
        });
      } catch (e) {
        debugPrint("Audio Error: $e");
      }
    });

    on<_UpdateDuration>((event, emit) {
      print("Duration : ${event.duration}");
      emit(state.copyWith(duration: event.duration));
    });

    on<_UpdatePosition>((event, emit) {
      print("Position : ${event.position}");
      emit(state.copyWith(position: event.position));
    });

    on<_UpdatePlayerState>((event, emit) {
      emit(state.copyWith(isPlaying: event.isPlaying));
    });

    on<_UpdateWasPlayingBeforeSeek>((event, emit) {
      emit(state.copyWith(wasPlayingBeforeSeek: event.wasPlayingBeforeSeek));
    });

    on<_OnNextButtonPressed>((event, emit) async {
      int nextIndex = (event.currentIndex + 1);
      if (nextIndex < state.listOfRecentlyplayedDto.length) {
        await state.audioPlayer.stop();
        await state.audioPlayer.dispose();
        emit(
          state.copyWith(
            audioPlayer: AudioPlayer(),
            duration: Duration(seconds: 0),
            position: Duration(seconds: 0),
            isPlaying: false,
            wasPlayingBeforeSeek: false,
          ),
        );
        add(RecentlySongEvent.onSongPlayed(selectedSongIndex: nextIndex));
      }
    });

    on<_OnPreviousButtonPressed>((event, emit)async {
      int prevIndex = (event.currentIndex - 1);
      if (prevIndex >=0) {
        await state.audioPlayer.stop();
        await state.audioPlayer.dispose();
        emit(
          state.copyWith(
            audioPlayer: AudioPlayer(),
            duration: Duration(seconds: 0),
            position: Duration(seconds: 0),
            isPlaying: false,
            wasPlayingBeforeSeek: false,
          ),
        );
        add(RecentlySongEvent.onSongPlayed(selectedSongIndex: prevIndex));
      }
    });

    on<_OnPause>((event, emit) async {
      AudioPlayer audioPlayer = state.audioPlayer;
      await audioPlayer.pause();
      emit(state.copyWith(audioPlayer: audioPlayer));
    });

    on<_OnResume>((event, emit) async {
      AudioPlayer audioPlayer = state.audioPlayer;
      await audioPlayer.resume();
      emit(state.copyWith(audioPlayer: audioPlayer));
    });
  }
}
