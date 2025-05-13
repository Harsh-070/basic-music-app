// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recently_song_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RecentlySongEvent implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RecentlySongEvent'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecentlySongEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RecentlySongEvent()';
}


}

/// @nodoc
class $RecentlySongEventCopyWith<$Res>  {
$RecentlySongEventCopyWith(RecentlySongEvent _, $Res Function(RecentlySongEvent) __);
}


/// @nodoc


class _OnRecentlySongSelected with DiagnosticableTreeMixin implements RecentlySongEvent {
  const _OnRecentlySongSelected({required final  List<RecentlyPlayedDto> listOfRecentlyplayedDto}): _listOfRecentlyplayedDto = listOfRecentlyplayedDto;
  

 final  List<RecentlyPlayedDto> _listOfRecentlyplayedDto;
 List<RecentlyPlayedDto> get listOfRecentlyplayedDto {
  if (_listOfRecentlyplayedDto is EqualUnmodifiableListView) return _listOfRecentlyplayedDto;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_listOfRecentlyplayedDto);
}


/// Create a copy of RecentlySongEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OnRecentlySongSelectedCopyWith<_OnRecentlySongSelected> get copyWith => __$OnRecentlySongSelectedCopyWithImpl<_OnRecentlySongSelected>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RecentlySongEvent.onRecentlySongSelected'))
    ..add(DiagnosticsProperty('listOfRecentlyplayedDto', listOfRecentlyplayedDto));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnRecentlySongSelected&&const DeepCollectionEquality().equals(other._listOfRecentlyplayedDto, _listOfRecentlyplayedDto));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_listOfRecentlyplayedDto));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RecentlySongEvent.onRecentlySongSelected(listOfRecentlyplayedDto: $listOfRecentlyplayedDto)';
}


}

/// @nodoc
abstract mixin class _$OnRecentlySongSelectedCopyWith<$Res> implements $RecentlySongEventCopyWith<$Res> {
  factory _$OnRecentlySongSelectedCopyWith(_OnRecentlySongSelected value, $Res Function(_OnRecentlySongSelected) _then) = __$OnRecentlySongSelectedCopyWithImpl;
@useResult
$Res call({
 List<RecentlyPlayedDto> listOfRecentlyplayedDto
});




}
/// @nodoc
class __$OnRecentlySongSelectedCopyWithImpl<$Res>
    implements _$OnRecentlySongSelectedCopyWith<$Res> {
  __$OnRecentlySongSelectedCopyWithImpl(this._self, this._then);

  final _OnRecentlySongSelected _self;
  final $Res Function(_OnRecentlySongSelected) _then;

/// Create a copy of RecentlySongEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? listOfRecentlyplayedDto = null,}) {
  return _then(_OnRecentlySongSelected(
listOfRecentlyplayedDto: null == listOfRecentlyplayedDto ? _self._listOfRecentlyplayedDto : listOfRecentlyplayedDto // ignore: cast_nullable_to_non_nullable
as List<RecentlyPlayedDto>,
  ));
}


}

/// @nodoc


class _OnSongPlayed with DiagnosticableTreeMixin implements RecentlySongEvent {
  const _OnSongPlayed({required this.selectedSongIndex});
  

 final  int selectedSongIndex;

/// Create a copy of RecentlySongEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OnSongPlayedCopyWith<_OnSongPlayed> get copyWith => __$OnSongPlayedCopyWithImpl<_OnSongPlayed>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RecentlySongEvent.onSongPlayed'))
    ..add(DiagnosticsProperty('selectedSongIndex', selectedSongIndex));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnSongPlayed&&(identical(other.selectedSongIndex, selectedSongIndex) || other.selectedSongIndex == selectedSongIndex));
}


@override
int get hashCode => Object.hash(runtimeType,selectedSongIndex);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RecentlySongEvent.onSongPlayed(selectedSongIndex: $selectedSongIndex)';
}


}

/// @nodoc
abstract mixin class _$OnSongPlayedCopyWith<$Res> implements $RecentlySongEventCopyWith<$Res> {
  factory _$OnSongPlayedCopyWith(_OnSongPlayed value, $Res Function(_OnSongPlayed) _then) = __$OnSongPlayedCopyWithImpl;
@useResult
$Res call({
 int selectedSongIndex
});




}
/// @nodoc
class __$OnSongPlayedCopyWithImpl<$Res>
    implements _$OnSongPlayedCopyWith<$Res> {
  __$OnSongPlayedCopyWithImpl(this._self, this._then);

  final _OnSongPlayed _self;
  final $Res Function(_OnSongPlayed) _then;

/// Create a copy of RecentlySongEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? selectedSongIndex = null,}) {
  return _then(_OnSongPlayed(
selectedSongIndex: null == selectedSongIndex ? _self.selectedSongIndex : selectedSongIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _UpdateDuration with DiagnosticableTreeMixin implements RecentlySongEvent {
  const _UpdateDuration(this.duration);
  

 final  Duration duration;

/// Create a copy of RecentlySongEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateDurationCopyWith<_UpdateDuration> get copyWith => __$UpdateDurationCopyWithImpl<_UpdateDuration>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RecentlySongEvent.updateDuration'))
    ..add(DiagnosticsProperty('duration', duration));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateDuration&&(identical(other.duration, duration) || other.duration == duration));
}


@override
int get hashCode => Object.hash(runtimeType,duration);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RecentlySongEvent.updateDuration(duration: $duration)';
}


}

/// @nodoc
abstract mixin class _$UpdateDurationCopyWith<$Res> implements $RecentlySongEventCopyWith<$Res> {
  factory _$UpdateDurationCopyWith(_UpdateDuration value, $Res Function(_UpdateDuration) _then) = __$UpdateDurationCopyWithImpl;
@useResult
$Res call({
 Duration duration
});




}
/// @nodoc
class __$UpdateDurationCopyWithImpl<$Res>
    implements _$UpdateDurationCopyWith<$Res> {
  __$UpdateDurationCopyWithImpl(this._self, this._then);

  final _UpdateDuration _self;
  final $Res Function(_UpdateDuration) _then;

/// Create a copy of RecentlySongEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? duration = null,}) {
  return _then(_UpdateDuration(
null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as Duration,
  ));
}


}

/// @nodoc


class _UpdatePosition with DiagnosticableTreeMixin implements RecentlySongEvent {
  const _UpdatePosition(this.position);
  

 final  Duration position;

/// Create a copy of RecentlySongEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdatePositionCopyWith<_UpdatePosition> get copyWith => __$UpdatePositionCopyWithImpl<_UpdatePosition>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RecentlySongEvent.updatePosition'))
    ..add(DiagnosticsProperty('position', position));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdatePosition&&(identical(other.position, position) || other.position == position));
}


@override
int get hashCode => Object.hash(runtimeType,position);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RecentlySongEvent.updatePosition(position: $position)';
}


}

/// @nodoc
abstract mixin class _$UpdatePositionCopyWith<$Res> implements $RecentlySongEventCopyWith<$Res> {
  factory _$UpdatePositionCopyWith(_UpdatePosition value, $Res Function(_UpdatePosition) _then) = __$UpdatePositionCopyWithImpl;
@useResult
$Res call({
 Duration position
});




}
/// @nodoc
class __$UpdatePositionCopyWithImpl<$Res>
    implements _$UpdatePositionCopyWith<$Res> {
  __$UpdatePositionCopyWithImpl(this._self, this._then);

  final _UpdatePosition _self;
  final $Res Function(_UpdatePosition) _then;

/// Create a copy of RecentlySongEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? position = null,}) {
  return _then(_UpdatePosition(
null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as Duration,
  ));
}


}

/// @nodoc


class _UpdatePlayerState with DiagnosticableTreeMixin implements RecentlySongEvent {
  const _UpdatePlayerState(this.isPlaying);
  

 final  bool isPlaying;

/// Create a copy of RecentlySongEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdatePlayerStateCopyWith<_UpdatePlayerState> get copyWith => __$UpdatePlayerStateCopyWithImpl<_UpdatePlayerState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RecentlySongEvent.updatePlayerState'))
    ..add(DiagnosticsProperty('isPlaying', isPlaying));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdatePlayerState&&(identical(other.isPlaying, isPlaying) || other.isPlaying == isPlaying));
}


@override
int get hashCode => Object.hash(runtimeType,isPlaying);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RecentlySongEvent.updatePlayerState(isPlaying: $isPlaying)';
}


}

/// @nodoc
abstract mixin class _$UpdatePlayerStateCopyWith<$Res> implements $RecentlySongEventCopyWith<$Res> {
  factory _$UpdatePlayerStateCopyWith(_UpdatePlayerState value, $Res Function(_UpdatePlayerState) _then) = __$UpdatePlayerStateCopyWithImpl;
@useResult
$Res call({
 bool isPlaying
});




}
/// @nodoc
class __$UpdatePlayerStateCopyWithImpl<$Res>
    implements _$UpdatePlayerStateCopyWith<$Res> {
  __$UpdatePlayerStateCopyWithImpl(this._self, this._then);

  final _UpdatePlayerState _self;
  final $Res Function(_UpdatePlayerState) _then;

/// Create a copy of RecentlySongEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isPlaying = null,}) {
  return _then(_UpdatePlayerState(
null == isPlaying ? _self.isPlaying : isPlaying // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _UpdateWasPlayingBeforeSeek with DiagnosticableTreeMixin implements RecentlySongEvent {
  const _UpdateWasPlayingBeforeSeek(this.wasPlayingBeforeSeek);
  

 final  bool wasPlayingBeforeSeek;

/// Create a copy of RecentlySongEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateWasPlayingBeforeSeekCopyWith<_UpdateWasPlayingBeforeSeek> get copyWith => __$UpdateWasPlayingBeforeSeekCopyWithImpl<_UpdateWasPlayingBeforeSeek>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RecentlySongEvent.updateWasPlayingBeforeSeek'))
    ..add(DiagnosticsProperty('wasPlayingBeforeSeek', wasPlayingBeforeSeek));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateWasPlayingBeforeSeek&&(identical(other.wasPlayingBeforeSeek, wasPlayingBeforeSeek) || other.wasPlayingBeforeSeek == wasPlayingBeforeSeek));
}


@override
int get hashCode => Object.hash(runtimeType,wasPlayingBeforeSeek);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RecentlySongEvent.updateWasPlayingBeforeSeek(wasPlayingBeforeSeek: $wasPlayingBeforeSeek)';
}


}

/// @nodoc
abstract mixin class _$UpdateWasPlayingBeforeSeekCopyWith<$Res> implements $RecentlySongEventCopyWith<$Res> {
  factory _$UpdateWasPlayingBeforeSeekCopyWith(_UpdateWasPlayingBeforeSeek value, $Res Function(_UpdateWasPlayingBeforeSeek) _then) = __$UpdateWasPlayingBeforeSeekCopyWithImpl;
@useResult
$Res call({
 bool wasPlayingBeforeSeek
});




}
/// @nodoc
class __$UpdateWasPlayingBeforeSeekCopyWithImpl<$Res>
    implements _$UpdateWasPlayingBeforeSeekCopyWith<$Res> {
  __$UpdateWasPlayingBeforeSeekCopyWithImpl(this._self, this._then);

  final _UpdateWasPlayingBeforeSeek _self;
  final $Res Function(_UpdateWasPlayingBeforeSeek) _then;

/// Create a copy of RecentlySongEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? wasPlayingBeforeSeek = null,}) {
  return _then(_UpdateWasPlayingBeforeSeek(
null == wasPlayingBeforeSeek ? _self.wasPlayingBeforeSeek : wasPlayingBeforeSeek // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _OnNextButtonPressed with DiagnosticableTreeMixin implements RecentlySongEvent {
  const _OnNextButtonPressed({required this.currentIndex});
  

 final  int currentIndex;

/// Create a copy of RecentlySongEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OnNextButtonPressedCopyWith<_OnNextButtonPressed> get copyWith => __$OnNextButtonPressedCopyWithImpl<_OnNextButtonPressed>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RecentlySongEvent.onNextButtonPressed'))
    ..add(DiagnosticsProperty('currentIndex', currentIndex));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnNextButtonPressed&&(identical(other.currentIndex, currentIndex) || other.currentIndex == currentIndex));
}


@override
int get hashCode => Object.hash(runtimeType,currentIndex);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RecentlySongEvent.onNextButtonPressed(currentIndex: $currentIndex)';
}


}

/// @nodoc
abstract mixin class _$OnNextButtonPressedCopyWith<$Res> implements $RecentlySongEventCopyWith<$Res> {
  factory _$OnNextButtonPressedCopyWith(_OnNextButtonPressed value, $Res Function(_OnNextButtonPressed) _then) = __$OnNextButtonPressedCopyWithImpl;
@useResult
$Res call({
 int currentIndex
});




}
/// @nodoc
class __$OnNextButtonPressedCopyWithImpl<$Res>
    implements _$OnNextButtonPressedCopyWith<$Res> {
  __$OnNextButtonPressedCopyWithImpl(this._self, this._then);

  final _OnNextButtonPressed _self;
  final $Res Function(_OnNextButtonPressed) _then;

/// Create a copy of RecentlySongEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? currentIndex = null,}) {
  return _then(_OnNextButtonPressed(
currentIndex: null == currentIndex ? _self.currentIndex : currentIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _OnPreviousButtonPressed with DiagnosticableTreeMixin implements RecentlySongEvent {
  const _OnPreviousButtonPressed({required this.currentIndex});
  

 final  int currentIndex;

/// Create a copy of RecentlySongEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OnPreviousButtonPressedCopyWith<_OnPreviousButtonPressed> get copyWith => __$OnPreviousButtonPressedCopyWithImpl<_OnPreviousButtonPressed>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RecentlySongEvent.onPreviousButtonPressed'))
    ..add(DiagnosticsProperty('currentIndex', currentIndex));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnPreviousButtonPressed&&(identical(other.currentIndex, currentIndex) || other.currentIndex == currentIndex));
}


@override
int get hashCode => Object.hash(runtimeType,currentIndex);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RecentlySongEvent.onPreviousButtonPressed(currentIndex: $currentIndex)';
}


}

/// @nodoc
abstract mixin class _$OnPreviousButtonPressedCopyWith<$Res> implements $RecentlySongEventCopyWith<$Res> {
  factory _$OnPreviousButtonPressedCopyWith(_OnPreviousButtonPressed value, $Res Function(_OnPreviousButtonPressed) _then) = __$OnPreviousButtonPressedCopyWithImpl;
@useResult
$Res call({
 int currentIndex
});




}
/// @nodoc
class __$OnPreviousButtonPressedCopyWithImpl<$Res>
    implements _$OnPreviousButtonPressedCopyWith<$Res> {
  __$OnPreviousButtonPressedCopyWithImpl(this._self, this._then);

  final _OnPreviousButtonPressed _self;
  final $Res Function(_OnPreviousButtonPressed) _then;

/// Create a copy of RecentlySongEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? currentIndex = null,}) {
  return _then(_OnPreviousButtonPressed(
currentIndex: null == currentIndex ? _self.currentIndex : currentIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _OnPause with DiagnosticableTreeMixin implements RecentlySongEvent {
  const _OnPause();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RecentlySongEvent.onPause'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnPause);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RecentlySongEvent.onPause()';
}


}




/// @nodoc


class _OnResume with DiagnosticableTreeMixin implements RecentlySongEvent {
  const _OnResume();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RecentlySongEvent.onResume'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnResume);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RecentlySongEvent.onResume()';
}


}




/// @nodoc
mixin _$RecentlySongState implements DiagnosticableTreeMixin {

 List<RecentlyPlayedDto> get listOfRecentlyplayedDto; RecentlyPlayedDto? get currentPlayedSong; AudioPlayer get audioPlayer; int get index; Duration get duration; Duration get position; bool get isPlaying; bool get isBottomActive; bool get wasPlayingBeforeSeek;
/// Create a copy of RecentlySongState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecentlySongStateCopyWith<RecentlySongState> get copyWith => _$RecentlySongStateCopyWithImpl<RecentlySongState>(this as RecentlySongState, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RecentlySongState'))
    ..add(DiagnosticsProperty('listOfRecentlyplayedDto', listOfRecentlyplayedDto))..add(DiagnosticsProperty('currentPlayedSong', currentPlayedSong))..add(DiagnosticsProperty('audioPlayer', audioPlayer))..add(DiagnosticsProperty('index', index))..add(DiagnosticsProperty('duration', duration))..add(DiagnosticsProperty('position', position))..add(DiagnosticsProperty('isPlaying', isPlaying))..add(DiagnosticsProperty('isBottomActive', isBottomActive))..add(DiagnosticsProperty('wasPlayingBeforeSeek', wasPlayingBeforeSeek));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecentlySongState&&const DeepCollectionEquality().equals(other.listOfRecentlyplayedDto, listOfRecentlyplayedDto)&&(identical(other.currentPlayedSong, currentPlayedSong) || other.currentPlayedSong == currentPlayedSong)&&(identical(other.audioPlayer, audioPlayer) || other.audioPlayer == audioPlayer)&&(identical(other.index, index) || other.index == index)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.position, position) || other.position == position)&&(identical(other.isPlaying, isPlaying) || other.isPlaying == isPlaying)&&(identical(other.isBottomActive, isBottomActive) || other.isBottomActive == isBottomActive)&&(identical(other.wasPlayingBeforeSeek, wasPlayingBeforeSeek) || other.wasPlayingBeforeSeek == wasPlayingBeforeSeek));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(listOfRecentlyplayedDto),currentPlayedSong,audioPlayer,index,duration,position,isPlaying,isBottomActive,wasPlayingBeforeSeek);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RecentlySongState(listOfRecentlyplayedDto: $listOfRecentlyplayedDto, currentPlayedSong: $currentPlayedSong, audioPlayer: $audioPlayer, index: $index, duration: $duration, position: $position, isPlaying: $isPlaying, isBottomActive: $isBottomActive, wasPlayingBeforeSeek: $wasPlayingBeforeSeek)';
}


}

/// @nodoc
abstract mixin class $RecentlySongStateCopyWith<$Res>  {
  factory $RecentlySongStateCopyWith(RecentlySongState value, $Res Function(RecentlySongState) _then) = _$RecentlySongStateCopyWithImpl;
@useResult
$Res call({
 List<RecentlyPlayedDto> listOfRecentlyplayedDto, RecentlyPlayedDto? currentPlayedSong, AudioPlayer audioPlayer, int index, Duration duration, Duration position, bool isPlaying, bool isBottomActive, bool wasPlayingBeforeSeek
});




}
/// @nodoc
class _$RecentlySongStateCopyWithImpl<$Res>
    implements $RecentlySongStateCopyWith<$Res> {
  _$RecentlySongStateCopyWithImpl(this._self, this._then);

  final RecentlySongState _self;
  final $Res Function(RecentlySongState) _then;

/// Create a copy of RecentlySongState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? listOfRecentlyplayedDto = null,Object? currentPlayedSong = freezed,Object? audioPlayer = null,Object? index = null,Object? duration = null,Object? position = null,Object? isPlaying = null,Object? isBottomActive = null,Object? wasPlayingBeforeSeek = null,}) {
  return _then(_self.copyWith(
listOfRecentlyplayedDto: null == listOfRecentlyplayedDto ? _self.listOfRecentlyplayedDto : listOfRecentlyplayedDto // ignore: cast_nullable_to_non_nullable
as List<RecentlyPlayedDto>,currentPlayedSong: freezed == currentPlayedSong ? _self.currentPlayedSong : currentPlayedSong // ignore: cast_nullable_to_non_nullable
as RecentlyPlayedDto?,audioPlayer: null == audioPlayer ? _self.audioPlayer : audioPlayer // ignore: cast_nullable_to_non_nullable
as AudioPlayer,index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as Duration,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as Duration,isPlaying: null == isPlaying ? _self.isPlaying : isPlaying // ignore: cast_nullable_to_non_nullable
as bool,isBottomActive: null == isBottomActive ? _self.isBottomActive : isBottomActive // ignore: cast_nullable_to_non_nullable
as bool,wasPlayingBeforeSeek: null == wasPlayingBeforeSeek ? _self.wasPlayingBeforeSeek : wasPlayingBeforeSeek // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc


class _RecentlySongState with DiagnosticableTreeMixin implements RecentlySongState {
  const _RecentlySongState({required final  List<RecentlyPlayedDto> listOfRecentlyplayedDto, required this.currentPlayedSong, required this.audioPlayer, required this.index, required this.duration, required this.position, required this.isPlaying, required this.isBottomActive, required this.wasPlayingBeforeSeek}): _listOfRecentlyplayedDto = listOfRecentlyplayedDto;
  

 final  List<RecentlyPlayedDto> _listOfRecentlyplayedDto;
@override List<RecentlyPlayedDto> get listOfRecentlyplayedDto {
  if (_listOfRecentlyplayedDto is EqualUnmodifiableListView) return _listOfRecentlyplayedDto;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_listOfRecentlyplayedDto);
}

@override final  RecentlyPlayedDto? currentPlayedSong;
@override final  AudioPlayer audioPlayer;
@override final  int index;
@override final  Duration duration;
@override final  Duration position;
@override final  bool isPlaying;
@override final  bool isBottomActive;
@override final  bool wasPlayingBeforeSeek;

/// Create a copy of RecentlySongState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecentlySongStateCopyWith<_RecentlySongState> get copyWith => __$RecentlySongStateCopyWithImpl<_RecentlySongState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RecentlySongState'))
    ..add(DiagnosticsProperty('listOfRecentlyplayedDto', listOfRecentlyplayedDto))..add(DiagnosticsProperty('currentPlayedSong', currentPlayedSong))..add(DiagnosticsProperty('audioPlayer', audioPlayer))..add(DiagnosticsProperty('index', index))..add(DiagnosticsProperty('duration', duration))..add(DiagnosticsProperty('position', position))..add(DiagnosticsProperty('isPlaying', isPlaying))..add(DiagnosticsProperty('isBottomActive', isBottomActive))..add(DiagnosticsProperty('wasPlayingBeforeSeek', wasPlayingBeforeSeek));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecentlySongState&&const DeepCollectionEquality().equals(other._listOfRecentlyplayedDto, _listOfRecentlyplayedDto)&&(identical(other.currentPlayedSong, currentPlayedSong) || other.currentPlayedSong == currentPlayedSong)&&(identical(other.audioPlayer, audioPlayer) || other.audioPlayer == audioPlayer)&&(identical(other.index, index) || other.index == index)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.position, position) || other.position == position)&&(identical(other.isPlaying, isPlaying) || other.isPlaying == isPlaying)&&(identical(other.isBottomActive, isBottomActive) || other.isBottomActive == isBottomActive)&&(identical(other.wasPlayingBeforeSeek, wasPlayingBeforeSeek) || other.wasPlayingBeforeSeek == wasPlayingBeforeSeek));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_listOfRecentlyplayedDto),currentPlayedSong,audioPlayer,index,duration,position,isPlaying,isBottomActive,wasPlayingBeforeSeek);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RecentlySongState(listOfRecentlyplayedDto: $listOfRecentlyplayedDto, currentPlayedSong: $currentPlayedSong, audioPlayer: $audioPlayer, index: $index, duration: $duration, position: $position, isPlaying: $isPlaying, isBottomActive: $isBottomActive, wasPlayingBeforeSeek: $wasPlayingBeforeSeek)';
}


}

/// @nodoc
abstract mixin class _$RecentlySongStateCopyWith<$Res> implements $RecentlySongStateCopyWith<$Res> {
  factory _$RecentlySongStateCopyWith(_RecentlySongState value, $Res Function(_RecentlySongState) _then) = __$RecentlySongStateCopyWithImpl;
@override @useResult
$Res call({
 List<RecentlyPlayedDto> listOfRecentlyplayedDto, RecentlyPlayedDto? currentPlayedSong, AudioPlayer audioPlayer, int index, Duration duration, Duration position, bool isPlaying, bool isBottomActive, bool wasPlayingBeforeSeek
});




}
/// @nodoc
class __$RecentlySongStateCopyWithImpl<$Res>
    implements _$RecentlySongStateCopyWith<$Res> {
  __$RecentlySongStateCopyWithImpl(this._self, this._then);

  final _RecentlySongState _self;
  final $Res Function(_RecentlySongState) _then;

/// Create a copy of RecentlySongState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? listOfRecentlyplayedDto = null,Object? currentPlayedSong = freezed,Object? audioPlayer = null,Object? index = null,Object? duration = null,Object? position = null,Object? isPlaying = null,Object? isBottomActive = null,Object? wasPlayingBeforeSeek = null,}) {
  return _then(_RecentlySongState(
listOfRecentlyplayedDto: null == listOfRecentlyplayedDto ? _self._listOfRecentlyplayedDto : listOfRecentlyplayedDto // ignore: cast_nullable_to_non_nullable
as List<RecentlyPlayedDto>,currentPlayedSong: freezed == currentPlayedSong ? _self.currentPlayedSong : currentPlayedSong // ignore: cast_nullable_to_non_nullable
as RecentlyPlayedDto?,audioPlayer: null == audioPlayer ? _self.audioPlayer : audioPlayer // ignore: cast_nullable_to_non_nullable
as AudioPlayer,index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as Duration,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as Duration,isPlaying: null == isPlaying ? _self.isPlaying : isPlaying // ignore: cast_nullable_to_non_nullable
as bool,isBottomActive: null == isBottomActive ? _self.isBottomActive : isBottomActive // ignore: cast_nullable_to_non_nullable
as bool,wasPlayingBeforeSeek: null == wasPlayingBeforeSeek ? _self.wasPlayingBeforeSeek : wasPlayingBeforeSeek // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
