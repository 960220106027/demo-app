class FilmDetails {
  final String filmId;
  final String title;
  final String director;
  final String producer;
  final String screenwriter;
  final String category;
  final String language;
  final String duration;
  final String synopsis;
  final String trailerLink;
  final String releaseYear;
  final String countryOfOrigin;
  final String cast;
  final String productionCompany;
  final String poster;
  

  FilmDetails({
    required this.filmId,
    required this.title,
    required this.director,
    required this.producer,
    required this.screenwriter,
    required this.category,
    required this.language,
    required this.duration,
    required this.synopsis,
    required this.trailerLink,
    required this.releaseYear,
    required this.countryOfOrigin,
    required this.cast,
    required this.productionCompany,
    required this.poster,
    
  });

  factory FilmDetails.fromJson(Map<String, dynamic> json) {
    return FilmDetails(
      filmId: json['film_id'],
      title: json['title'],
      director: json['director'],
      producer: json['producer'],
      screenwriter: json['screenwriter'],
      category: json['category'],
      language: json['language'],
      duration: json['duration'],
      synopsis: json['synopsis'],
      trailerLink: json['trailer_link'],
      releaseYear: json['release_year'],
      countryOfOrigin: json['country_of_origin'],
      cast: json['cast'],
      productionCompany: json['production_company'],
      poster: json['poster'],
      
    );
  }
}
