part of 'recently_song_bloc.dart';

@freezed
abstract class RecentlySongState with _$RecentlySongState {
  const factory RecentlySongState({
    required List<RecentlyPlayedDto> listOfRecentlyplayedDto,
    required RecentlyPlayedDto? currentPlayedSong,
    required AudioPlayer audioPlayer,
    required int index,
    required Duration duration,
    required Duration position,
    required bool isPlaying,
    required bool isBottomActive,
    required bool wasPlayingBeforeSeek,
  }) = _RecentlySongState;

  factory RecentlySongState.initial() {
    return RecentlySongState(
      audioPlayer: AudioPlayer(),
      currentPlayedSong: null,
      listOfRecentlyplayedDto: [],
      index: 0,
      duration: Duration.zero,
      position: Duration.zero,
      isPlaying: false,
      wasPlayingBeforeSeek: false,
      isBottomActive: false
    );
  }
}
