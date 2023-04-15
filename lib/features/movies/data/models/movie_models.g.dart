// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_models.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MovieCardAdapter extends TypeAdapter<MovieCardModel> {
  @override
  final int typeId = 1;

  @override
  MovieCardModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MovieCardModel(
      adult: fields[0] as bool,
      backdropPath: fields[1] as String,
      genreIds: (fields[2] as List).cast<int>(),
      id: fields[3] as int,
      originalLanguage: fields[4] as String,
      originalTitle: fields[5] as String,
      overview: fields[6] as String,
      popularity: fields[7] as double,
      posterPath: fields[8] as String,
      releaseDate: fields[9] as DateTime,
      title: fields[10] as String,
      video: fields[11] as bool,
      voteAverage: fields[12] as double,
      voteCount: fields[13] as int,
    );
  }

  @override
  void write(BinaryWriter writer, MovieCardModel obj) {
    writer.writeByte(0);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MovieCardAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
