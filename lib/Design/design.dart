import 'package:flutter/material.dart';
import 'package:homeapp/API/api.dart';
import 'package:homeapp/Model/MovieModel.dart';
import 'package:homeapp/Widget/Widgetscreen.dart';

import 'package:provider/provider.dart';

class MovieScreen extends StatefulWidget {
  static const routeName = 'filmDetails';
  const MovieScreen({super.key});

  @override
  State<MovieScreen> createState() => _MovieScreenState();
}

class _MovieScreenState extends State<MovieScreen> {
  @override
  void initState() {
    Provider.of<MovieProvider>(context, listen: false)
        .getAllMovieData(context: context);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final farmer = Provider.of<MovieProvider>(context);
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 232, 147, 147),
      appBar: AppBar(
        toolbarHeight: 80,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: const Text(
          'Movie Details',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ),
      body: farmer.loadingSpinner
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('loading'),
                CircularProgressIndicator(
                  color: const Color.fromARGB(255, 40, 85, 167),
                ),
                const SizedBox(
                  width: 10,
                ),
              ],
            )
          : farmer.products.isEmpty
              ? Text('No products...')
              : SizedBox(
                  height: size.height * 0.9,
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        childAspectRatio: 0.7),
                    scrollDirection: Axis.vertical,
                    itemCount: farmer.products.length,
                    itemBuilder: (context, intex) {
                      return MovieDetail(
                        filmId: farmer.products[intex].filmId,
                        poster: farmer.products[intex]. poster,
                        director: farmer.products[intex].director,
                        trailerLink: farmer.products[intex].trailerLink,
                        title: farmer.products[intex].title,
                        
                      );
                    },
                  ),
                ),
    );
  }
}
