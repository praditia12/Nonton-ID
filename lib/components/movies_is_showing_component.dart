import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:nonton_id/model/movie_model.dart';
import 'package:nonton_id/router/router.dart';

import '../style/app_style.dart';

class MovieIsShowing extends StatelessWidget {
  const MovieIsShowing({
    super.key,
    required this.movies,
  });

  final List<MovieModel> movies;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Sedang Tayang',
              style: AppStyle.appFont.titleMediumStyleWhite,
            ),
            InkWell(
              onTap: () => context.go('${RoutePaths.home}${RoutePaths.movie}'),
              child: Row(
                children: [
                  Text(
                    'Lihat Semua',
                    style: AppStyle.appFont.bodySmallStyleWhite,
                  ),
                  Icon(
                    Icons.keyboard_arrow_right_outlined,
                    color: AppStyle.appColors.textGreyColor,
                  )
                ],
              ),
            ),
          ],
        ),
        AppStyle.appMargin.spaceNormalHeight,
        SizedBox(
          height: 264,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: movies.length > 5 ? 5 : movies.length,
            itemBuilder: (context, index) {
              MovieModel movie = movies[index];
              String releaseDate = movie.releaseDate!;
              DateTime date = DateTime.parse(releaseDate);
              DateFormat formatter = DateFormat.yMMMM();
              String formatReleaseDate = formatter.format(date);
              return Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SizedBox(
                    width: 148,
                    child: InkWell(
                      onTap: () => context.go(
                          '${RoutePaths.home}${RoutePaths.movieDetail.replaceFirst(':id', '${movie.title}')}'),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              movie.posterPath!,
                              height: 210,
                              width: 148,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            movie.originalTitle!,
                            style:
                                AppStyle.appFont.bodyLargeStyleWhite.copyWith(
                              fontWeight: FontWeight.w600,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Text(
                            formatReleaseDate,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
