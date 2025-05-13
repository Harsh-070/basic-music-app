part of 'recently_song_bloc.dart';

@freezed
abstract class RecentlySongEvent with _$RecentlySongEvent {
  const factory RecentlySongEvent.onRecentlySongSelected({required List<RecentlyPlayedDto> listOfRecentlyplayedDto}) =
      _OnRecentlySongSelected;

  const factory RecentlySongEvent.onSongPlayed({required int selectedSongIndex}) = _OnSongPlayed;

  const factory RecentlySongEvent.updateDuration(Duration duration) = _UpdateDuration;
  const factory RecentlySongEvent.updatePosition(Duration position) = _UpdatePosition;
  const factory RecentlySongEvent.updatePlayerState(bool isPlaying) = _UpdatePlayerState;
  const factory RecentlySongEvent.updateWasPlayingBeforeSeek(bool wasPlayingBeforeSeek) = _UpdateWasPlayingBeforeSeek;
  const factory RecentlySongEvent.onNextButtonPressed({required int currentIndex}) = _OnNextButtonPressed;
  const factory RecentlySongEvent.onPreviousButtonPressed({required int currentIndex}) = _OnPreviousButtonPressed;
  const factory RecentlySongEvent.onPause() = _OnPause;
  const factory RecentlySongEvent.onResume() = _OnResume;
}
