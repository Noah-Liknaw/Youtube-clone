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
  username: 'Abebe',
  profileImageUrl:
      'profile.jpg',
  subscribers: '100K',
);

class Video {
  final String id;
  final String catagory;
  final String title;
  final String thumbnailUrl;
  final String videoUrl;
  

  const Video({
    required this.id,
    required this.catagory,
    required this.title,
    required this.thumbnailUrl,
    required this.videoUrl,

  });
}

class Blog {
  final String id;
  final String author;
  final String catagory;
  final String title;
  final String thumbnailUrl;
  final String videoUrl;
  final String likes;
  final String dislikes;

  const Blog({
    required this.id,
    required this.author,
    required this.title,
    required this.catagory,
    required this.thumbnailUrl,
    required this.videoUrl,
    required this.likes,
    required this.dislikes,
  });
}

final List<Blog> blogs = [
  Blog(id: "sdafadssad", author: "Abebe", title: "title",catagory: "የሳንባ", thumbnailUrl: "lung-blog-2.jpg", videoUrl: "https://www.youtube.com/watch?v=j4HjWy_rZA4&ab_channel=SolyTube", likes: "likes", dislikes: "dislikes"),
  Blog(id: "sdafadssad", author: "Abebe", title: "title",catagory: "የሳንባ", thumbnailUrl: "lung-blog-1.jpg", videoUrl: "https://www.youtube.com/watch?v=j4HjWy_rZA4&ab_channel=SolyTube", likes: "likes", dislikes: "dislikes"),
  Blog(id: "sdafadssad", author: "Abebe", title: "title",catagory: "ኩላሊት", thumbnailUrl: "lung-blog-2.jpg", videoUrl: "https://www.youtube.com/watch?v=j4HjWy_rZA4&ab_channel=SolyTube", likes: "likes", dislikes: "dislikes"),
  Blog(id: "sdafadssad", author: "Abebe", title: "title",catagory: "ኩላሊት", thumbnailUrl: "lung-blog-1.jpg", videoUrl: "https://www.youtube.com/watch?v=j4HjWy_rZA4&ab_channel=SolyTube", likes: "likes", dislikes: "dislikes"),
];

final List<Video> videos = [
    Video(
    id: 'x606y4QWrxo',
    catagory: "ኩላሊት",
    title: 'የአንጀት በሽታ መንስኤው ምንድን ነው? ምን ምልክቶች አሉ?',
    thumbnailUrl: 'kidney/v1.png',
    videoUrl: 'https://www.youtube.com/watch?v=umhl2hakkcY',

  ),  Video(
    id: 'x606y4QWrxo',
    catagory: "ኩላሊት",
    title: 'የአንጀት በሽታ መንስኤው ምንድን ነው? ምን ምልክቶች አሉ?',
    thumbnailUrl: 'kidney/v2.png',
    videoUrl: 'https://www.youtube.com/watch?v=umhl2hakkcY',

  ),  Video(
    id: 'x606y4QWrxo',
    catagory: "ኩላሊት",
    title: 'የአንጀት በሽታ መንስኤው ምንድን ነው? ምን ምልክቶች አሉ?',
    thumbnailUrl: 'kidney/kidney-video1.png',
    videoUrl: 'https://www.youtube.com/watch?v=umhl2hakkcY',

  ),  Video(
    id: 'x606y4QWrxo',
    catagory: "ኩላሊት",
    title: 'የአንጀት በሽታ መንስኤው ምንድን ነው? ምን ምልክቶች አሉ?',
    thumbnailUrl: 'kidney/kidney-video2.jpg',
    videoUrl: 'https://www.youtube.com/watch?v=umhl2hakkcY',

  ),
  Video(
    id: 'x606y4QWrxo',
    catagory: "የጨጓራ ህመም",
    title: 'የአንጀት በሽታ መንስኤው ምንድን ነው? ምን ምልክቶች አሉ?',
    thumbnailUrl: 'gut/v1.png',
    videoUrl: 'https://www.youtube.com/watch?v=umhl2hakkcY',

  ),
  Video(
    catagory: "የጨጓራ ህመም",
    id: 'vrPk6LB9bjo',
    title:
        '5 ምግቦች ለአንጀት ጤንነት',
    thumbnailUrl: 'video1.jpg',
    videoUrl: 'sth.mp4',
  ),
  Video(
    id: 'x606y4QWrxo',
    catagory: "የጨጓራ ህመም",
    title: '5 ምግቦች ለአንጀት ጤንነት',
    thumbnailUrl: 'video2.jpeg',
    videoUrl: 'https://www.youtube.com/watch?v=umhl2hakkcY',

  ),
  
  Video(
    id: 'x606y4QWrxo',
    catagory: "የሳንባ",
    title: '5 ምግቦች ለአንጀት ጤንነት',
    thumbnailUrl: 'lung/v1.png',
    videoUrl: 'https://www.youtube.com/watch?v=j4HjWy_rZA4&ab_channel=SolyTube',

  ),
  Video(
    catagory: "የሳንባ",
    id: 'vcadaf21312',
    title:
        'Build Flutter Apps Fast with Riverpod, Firebase, Hooks, and Freezed Architecture',
    thumbnailUrl: 'lung/v2.png',
    videoUrl: 'https://www.youtube.com/watch?v=Y2WmaZQIzCg&ab_channel=NewsETSocial',

  ),

];
                        List<Video> filtered = [];   

int count=0;






final List<Video> shortsVideos = [
  Video(
    id: 'rJKN_880b-M',
    catagory: "ኩላሊት",
    title: 'Flutter Netflix Clone Responsive UI Tutorial | Web and Mobile',
    thumbnailUrl: 'kidney/kidney-video5.png',
    videoUrl: 'https://www.youtube.com/watch?v=umhl2hakkcY',

  ),
  Video(
    id: 'HvLb5gdUfDE',
    catagory: "ኩላሊት",
    title: 'Flutter Facebook Clone Responsive UI Tutorial | Web and Mobile',
    thumbnailUrl: 'kidney/kidney-video4.jpg',
    videoUrl: 'https://www.youtube.com/watch?v=umhl2hakkcY',

  ),
  Video(
    id: 'h-igXZCCrrc',
    catagory: "ኩላሊት",
    title: 'Flutter Chat UI Tutorial | Apps From Scratch',
    thumbnailUrl: 'short3.png',
    videoUrl: 'https://www.youtube.com/watch?v=umhl2hakkcY',

  ),
    Video(
    id: 'h-igXZCCrrc',
    catagory: "ኩላሊት",
    title: 'Flutter Chat UI Tutorial | Apps From Scratch',
    thumbnailUrl: 'short4.png',
    videoUrl: 'https://www.youtube.com/watch?v=umhl2hakkcY',

  ),
    Video(
    id: 'h-igXZCCrrc',
    catagory: "የሳንባ",
    title: 'Flutter Chat UI Tutorial | Apps From Scratch',
    thumbnailUrl: 'short5.png',
    videoUrl: 'https://www.youtube.com/watch?v=umhl2hakkcY',

  ),
    Video(
    id: 'h-igXZCCrrc',
    catagory: "የሳንባ",
    title: 'Flutter Chat UI Tutorial | Apps From Scratch',
    thumbnailUrl: 'short6.png',
    videoUrl: 'https://www.youtube.com/watch?v=umhl2hakkcY',

  ),
];

String selectedOrgan="";