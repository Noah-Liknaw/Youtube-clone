import 'package:flutter/material.dart';
import 'package:flutter_youtube_ui/data.dart';
import 'package:flutter_youtube_ui/widgets/blogCard.dart';
import 'package:flutter_youtube_ui/widgets/shorts_card.dart';
import 'package:flutter_youtube_ui/widgets/widgets.dart';

class blogsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ሾርትስ ገጽ'),
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
                        final blog = blogs[index];
                        
                        return BlogCard(blog: blog);
                      },
                      childCount: blogs.length,
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

