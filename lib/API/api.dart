import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:homeapp/Model/MovieModel.dart';
import 'package:homeapp/Widget/Widgetscreen.dart';

import 'package:http/http.dart' as https;



class MovieProvider with ChangeNotifier {
  bool _isLoading = false;
  bool get islOading {
    return _isLoading;
  }

  final bool _loadingSpinner = false;
  bool get loadingSpinner {
    return _loadingSpinner;
  }

  bool _isSelect = false;

  bool get isSelect {
    return _isSelect;
  }

  final bool _isError = false;

  bool get isError {
    return _isError;
  }

  List<FilmDetails> _products = [];
  List<FilmDetails> get products {
    return [..._products];
  }

  Future getAllMovieData({required BuildContext context}) async {
    try {
      _isLoading = true;
      // var headers = {'Cookie': 'ci_session=c7lis868nec6nl8r1lb5el72q8n26upv'};
      var response = await https.get(
        Uri.parse(
           "http://campus.sicsglobal.co.in/Project/Local_Film_Festival/api/view_all_film.php",)
      );

      print(
          "http://campus.sicsglobal.co.in/Project/Local_Film_Festival/api/view_all_film.php");

      print(response.body);

      if (response.statusCode == 200) {
        _isLoading = false;
        _products = [];
        var extractedData = json.decode(response.body);
        //  print(json.decode(response.body) + 'printed extrated data');
        final List<dynamic> filmDetails = extractedData['filmDetails'];
        for (var i = 0; i < filmDetails.length; i++) {
          _products.add(
           FilmDetails(
               filmId: filmDetails[i]['film_id'].toString(),
                title: filmDetails[i]['title'].toString(),
                director: filmDetails[i]['director'].toString(),
                producer: filmDetails[i]['producer'].toString(),
                screenwriter: filmDetails[i]['screenwriter'].toString(),
                category: filmDetails[i]['category'].toString(),
                language: filmDetails[i]['language'].toString(),
                duration: filmDetails[i]['duration'].toString(),
                synopsis: filmDetails[i]['synopsis'].toString(), 
                trailerLink: filmDetails[i]['trailer_link'].toString(),
                releaseYear: filmDetails[i]['release_year'].toString(),
                countryOfOrigin: filmDetails[i]['country_of_origin'].toString(),
                cast: filmDetails[i]['cast'].toString(),
                productionCompany: filmDetails[i]['production_company'].toString(),
                poster: filmDetails[i]['poster'].toString(),

               
            
             
           

              
            ),
          );
        }
        ;

        print('product details' + _products.toString());
        _isLoading = false;
        print('products loading completed --->' + 'loading data');
        notifyListeners();
      } else {
        _isLoading = true;
        notifyListeners();
      }
    } on HttpException catch (e) {
      // ignore: prefer_interpolation_to_compose_strings
      print('error in product prod -->>' + e.toString());
      print('Product Data is one by one loaded the product' + e.toString());
      _isLoading = false;

      _isSelect = false;
      notifyListeners();
    }
  }
 
}