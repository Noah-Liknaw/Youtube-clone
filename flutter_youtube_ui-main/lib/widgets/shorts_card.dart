import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_youtube_ui/data.dart';
import 'package:flutter_youtube_ui/screens/nav_screen.dart';
import 'package:miniplayer/miniplayer.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:url_launcher/url_launcher.dart';

class shortsCard extends StatelessWidget {
  final Video video;
  final bool hasPadding;
  final  onTap;

   shortsCard({
    Key? key,
    required this.video,
    this.hasPadding = false,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _launchURL(video.videoUrl);
      },
      child: Column(
        children: [
          Stack(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: hasPadding ? 12.0 : 40.0,
                ),
                child: Image.asset(
                  video.thumbnailUrl,
                  height: 330.0,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                const SizedBox(width: 8.0),
                const SizedBox(width: 8.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Flexible(
                        child: Text(
                          video.title,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(fontSize: 15.0),
                        ),
                      ),
                      Flexible(
                        child: Text(
                          '${video.author.username} • ${video.viewCount} views • ${timeago.format(video.timestamp)}',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context)
                              .textTheme
                              .caption!
                              .copyWith(fontSize: 14.0),
                        ),
                      ),
                    ],
                  ),
                ),
                
              ],
            ),
          )
        ],
      ),
    );
  }

  _launchURL(String video) async {
    final url = video;
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }
}

