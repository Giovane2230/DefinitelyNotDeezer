//                                                              //
// Scrobblenaut - A deadly simple Last.FM API Wrapper for Dart. //
//                  Copyright (c) 2020 Nebulino                 //
//                                                              //

part of '../lastfm.dart';

/// This object represents the user stats of a determined LastFM object.
@JsonSerializable(includeIfNull: false)
class Stats {
  /// The number of listeners of a user.
  @JsonKey(name: 'listeners', fromJson: LastFMValueNormalizer.numberToInt)
  int? listeners; // Last.FM treats this as String

  /// The number of plays of a user.
  @JsonKey(name: 'playcount', fromJson: LastFMValueNormalizer.numberToInt)
  int? playCount; // Last.FM treats this as String

  /// The number of plays from a user.
  @JsonKey(name: 'userplaycount', fromJson: LastFMValueNormalizer.numberToInt)
  int? userPlayCount; // Last.FM treats this as String

  Stats({
    this.listeners,
    this.playCount,
    this.userPlayCount,
  });

  factory Stats.fromJson(Map<String, dynamic> json) => _$StatsFromJson(json);

  Map<String, dynamic> toJson() => _$StatsToJson(this);
}
