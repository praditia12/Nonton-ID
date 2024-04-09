class MovieModel {
  final int? id;
  final String? backdropPath;
  final List<String>? genres;
  final String? originalTitle;
  final String? overview;
  final String? posterPath;
  final String? releaseDate;
  final String? title;
  final String? contentType;
  const MovieModel({
    this.id,
    this.backdropPath,
    this.genres,
    this.originalTitle,
    this.overview,
    this.posterPath,
    this.releaseDate,
    this.title,
    this.contentType,
  });
  MovieModel copyWith({
    int? id,
    String? backdropPath,
    List<String>? genres,
    String? originalTitle,
    String? overview,
    String? posterPath,
    String? releaseDate,
    String? title,
    String? contentType,
  }) {
    return MovieModel(
      id: id ?? this.id,
      backdropPath: backdropPath ?? this.backdropPath,
      genres: genres ?? this.genres,
      originalTitle: originalTitle ?? this.originalTitle,
      overview: overview ?? this.overview,
      posterPath: posterPath ?? this.posterPath,
      releaseDate: releaseDate ?? this.releaseDate,
      title: title ?? this.title,
      contentType: contentType ?? this.contentType,
    );
  }

  Map<String, Object?> toJson() {
    return {
      '_id': id,
      'backdrop_path': backdropPath,
      'genres': genres,
      'original_title': originalTitle,
      'overview': overview,
      'poster_path': posterPath,
      'release_date': releaseDate,
      'title': title,
      'contentType': contentType
    };
  }

  static MovieModel fromJson(Map<String, Object?> json) {
    return MovieModel(
        id: json['_id'] == null ? null : json['_id'] as int,
        backdropPath: json['backdrop_path'] == null
            ? null
            : json['backdrop_path'] as String,
        genres: json['genres'] == null
            ? null
            : (json['genres'] as List<dynamic>)
                .map((e) => e.toString())
                .toList(),
        originalTitle: json['original_title'] == null
            ? null
            : json['original_title'] as String,
        overview: json['overview'] == null ? null : json['overview'] as String,
        posterPath:
            json['poster_path'] == null ? null : json['poster_path'] as String,
        releaseDate: json['release_date'] == null
            ? null
            : json['release_date'] as String,
        title: json['title'] == null ? null : json['title'] as String,
        contentType:
            json['contentType'] == null ? null : json['contentType'] as String);
  }

  @override
  String toString() {
    return '''MovieModel(
                id:$id,
                backdropPath:$backdropPath,
                genres:$genres,
                originalTitle:$originalTitle,
                overview:$overview,
                posterPath:$posterPath,
                releaseDate:$releaseDate,
                title:$title,
                contentType:$contentType
                    ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is MovieModel &&
        other.runtimeType == runtimeType &&
        other.id == id &&
        other.backdropPath == backdropPath &&
        other.genres == genres &&
        other.originalTitle == originalTitle &&
        other.overview == overview &&
        other.posterPath == posterPath &&
        other.releaseDate == releaseDate &&
        other.title == title &&
        other.contentType == contentType;
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType,
      id,
      backdropPath,
      genres,
      originalTitle,
      overview,
      posterPath,
      releaseDate,
      title,
      contentType,
    );
  }
}
