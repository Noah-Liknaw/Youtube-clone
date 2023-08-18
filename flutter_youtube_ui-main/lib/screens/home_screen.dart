import 'package:flutter/material.dart';
import 'package:flutter_youtube_ui/data.dart';
import 'package:flutter_youtube_ui/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ቪዲዎች ገጽ'),
      ),
      body: Column(
        children: [
          // Add your image widget here
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: CustomScrollView(
              slivers: [
                SliverPadding(
                  padding: const EdgeInsets.only(bottom: 60.0),
                  sliver: SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) { 
                                   
                        final video = filtered[index];
                        print(count);
                        // print(selectedOrgan);
                        // print(video.catagory);
                        return VideoCard(video: video);
                      },
                      childCount: filtered.length,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

