import 'package:bloc_clean_architecture/config/utils/app_colors.dart';
import 'package:bloc_clean_architecture/model/moviesModel/movies_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MovieListItem extends StatelessWidget {
  const MovieListItem(this.movieList, {super.key});

  final List<TvShows> movieList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: movieList.length,
      itemBuilder: (context, index) {
        /*{
"id": 35624,
"name": "The Flash",
"permalink": "the-flash",
"start_date": "2014-10-07",
"end_date": null,
"country": "US",
"network": "The CW",
"status": "Ended",
"image_thumbnail_path": "https://static.episodate.com/images/tv-show/thumbnail/35624.jpg"
}*/
        final item = movieList[index];
        if (movieList.isEmpty) {
          return const Center(
              child: Text(
            "No Movie Found",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ));
        }
        return Container(
          margin: const EdgeInsets.only(bottom: 10),
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
          decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.circular(
              10,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                item.image,
                height: 100,
                width: 70,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                width: 8,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.name,
                    style: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  Text("Start Date :${item.startDate} "),
                  Text("End Date :${item.endDate} ")
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
