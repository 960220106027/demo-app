import 'package:flutter/material.dart';

class MovieDetail extends StatefulWidget {
  final String filmId;
  final  String title;
  final String director;
  final String poster;
   final String trailerLink;
  

  

  

  const MovieDetail({super.key,required this.filmId,required this.title,required this.director,required this.poster,required this.trailerLink,});

  @override
  State<MovieDetail> createState() => _MovieDetailState();
}

class _MovieDetailState extends State<MovieDetail> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
       

        child: Container(
        color: const Color.fromARGB(255, 172, 222, 174),
          
          child: Center(
            child: Column(
              children: [
                Text(widget.filmId),
               
                Image.network(widget.poster,height: 150,width: 140,),
                 Text("Movie Name:${widget.title}"),
                Text("Directed By: ${widget.director}"),
                Text("Link: ${widget.trailerLink}"),
                
               
              ],
            ),
          ),
        ),
      ),
    );
  }
}