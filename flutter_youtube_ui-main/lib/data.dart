class User {
  final String username;
  final String profileImageUrl;
  final String subscribers;

  const User({
    required this.username,
    required this.profileImageUrl,
    required this.subscribers,
  });
}

const User currentUser = User(
  username: 'Marcus Ng',
  profileImageUrl:
      'profile.jpg',
  subscribers: '100K',
);

class Video {
  final String id;
  final User author;
  final String title;
  final String thumbnailUrl;
  final String videoUrl;
  final String duration;
  final DateTime timestamp;
  final String viewCount;
  final String likes;
  final String dislikes;

  const Video({
    required this.id,
    required this.author,
    required this.title,
    required this.thumbnailUrl,
    required this.videoUrl,
    required this.duration,
    required this.timestamp,
    required this.viewCount,
    required this.likes,
    required this.dislikes,
  });
}

final List<Video> videos = [
  Video(
    id: 'x606y4QWrxo',
    author: currentUser,
    title: 'Flutter Clubhouse Clone UI Tutorial | Apps From Scratch',
    thumbnailUrl: 'lung/v1.png',
    videoUrl: 'https://www.youtube.com/watch?v=umhl2hakkcY',
    duration: '8:20',
    timestamp: DateTime(2021, 3, 20),
    viewCount: '10K',
    likes: '958',
    dislikes: '4',
  ),
  Video(
    author: currentUser,
    id: 'vrPk6LB9bjo',
    title:
        'Build Flutter Apps Fast with Riverpod, Firebase, Hooks, and Freezed Architecture',
    thumbnailUrl: 'lung/v2.png',
    videoUrl: 'sth.mp4',
    duration: '22:06',
    timestamp: DateTime(2021, 2, 26),
    viewCount: '8K',
    likes: '485',
    dislikes: '8',
  ),
  Video(
    id: 'x606y4QWrxo',
    author: currentUser,
    title: 'Flutter Clubhouse Clone UI Tutorial | Apps From Scratch',
    thumbnailUrl: 'lung/v1.png',
    videoUrl: 'https://www.youtube.com/watch?v=umhl2hakkcY',
    duration: '8:20',
    timestamp: DateTime(2021, 3, 20),
    viewCount: '10K',
    likes: '958',
    dislikes: '4',
  ),
  Video(
    author: currentUser,
    id: 'vrPk6LB9bjo',
    title:
        'Build Flutter Apps Fast with Riverpod, Firebase, Hooks, and Freezed Architecture',
    thumbnailUrl: 'lung/v2.png',
    videoUrl: 'sth.mp4',
    duration: '22:06',
    timestamp: DateTime(2021, 2, 26),
    viewCount: '8K',
    likes: '485',
    dislikes: '8',
  ),Video(
    id: 'x606y4QWrxo',
    author: currentUser,
    title: 'Flutter Clubhouse Clone UI Tutorial | Apps From Scratch',
    thumbnailUrl: 'lung/v1.png',
    videoUrl: 'https://www.youtube.com/watch?v=umhl2hakkcY',
    duration: '8:20',
    timestamp: DateTime(2021, 3, 20),
    viewCount: '10K',
    likes: '958',
    dislikes: '4',
  ),
  Video(
    author: currentUser,
    id: 'vrPk6LB9bjo',
    title:
        'Build Flutter Apps Fast with Riverpod, Firebase, Hooks, and Freezed Architecture',
    thumbnailUrl: 'lung/v2.png',
    videoUrl: 'sth.mp4',
    duration: '22:06',
    timestamp: DateTime(2021, 2, 26),
    viewCount: '8K',
    likes: '485',
    dislikes: '8',
  ),
];



final List<Video> suggestedVideos = [
  Video(
    id: 'rJKN_880b-M',
    author: currentUser,
    title: 'Flutter Netflix Clone Responsive UI Tutorial | Web and Mobile',
    thumbnailUrl: 'temp1.jpg',
    videoUrl: 'sth.mp4',
    duration: '1:13:15',
    timestamp: DateTime(2020, 8, 22),
    viewCount: '32K',
    likes: '1.9k',
    dislikes: '7',
  ),
  Video(
    id: 'HvLb5gdUfDE',
    author: currentUser,
    title: 'Flutter Facebook Clone Responsive UI Tutorial | Web and Mobile',
    thumbnailUrl: 'temp1.jpg',
    videoUrl: 'sth.mp4',
    duration: '1:52:12',
    timestamp: DateTime(2020, 8, 7),
    viewCount: '190K',
    likes: '9.3K',
    dislikes: '45',
  ),
  Video(
    id: 'h-igXZCCrrc',
    author: currentUser,
    title: 'Flutter Chat UI Tutorial | Apps From Scratch',
    thumbnailUrl: 'temp1.jpg',
    videoUrl: 'sth.mp4',
    duration: '1:03:58',
    timestamp: DateTime(2019, 10, 17),
    viewCount: '358K',
    likes: '20k',
    dislikes: '85',
  ),
];

