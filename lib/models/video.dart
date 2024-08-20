import 'dart:ui';

class VideoModel{
  final VoidCallback avatarOnpressed;
  final String avatarimage;
  final String name;
  final String time;
  final String space;
  final VoidCallback moreOnPressed;
  final VoidCallback cutOnPressed;
  final String videoTitle;
  final String videoId;
  final VoidCallback likeOnPressed;
  final VoidCallback commentOnPressed;
  final VoidCallback sendOnPressed;
  final VoidCallback shareOnPressed;
  final String like;
  final String comments;
  final String share;
  final String views;

  VideoModel({
    required this.avatarOnpressed,
    required this.avatarimage,
    required this.name,
    required this.time,
    required this.space,
    required this.moreOnPressed,
    required this.cutOnPressed,
    required this.videoTitle,
    required this.videoId,
    required this.likeOnPressed,
    required this.commentOnPressed,
    required this.sendOnPressed,
    required this.shareOnPressed,
    required this.like,
    required this.comments,
    required this.share,
    required this.views,
  });
}

List<VideoModel> videodata = [
  VideoModel(
      avatarOnpressed: () {
        print('Avatar on pressed!');
      },
      avatarimage: 'assets/images/rich_girl.jpg',
      name: 'Mandeep',
      time: '2h',
      space: '.',
      moreOnPressed: () {
        print('More on pressed!');
      },
      cutOnPressed: () {
        print('Cut on pressed!');
      },
      videoTitle: 'Hot Shit | Arjan Dhillon | Aveera Singh | Chobar | Brown Studios',
      videoId: 'q1eNnYacKX0',
      likeOnPressed: () {
        print('Like on pressed!');
      },
      commentOnPressed: () {
        print('Comment on pressed!');
      },
      sendOnPressed: () {
        print('Send on pressed!');
      },
      shareOnPressed: () {
        print('Share on pressed!');
      },
      like: '1.2k',
      comments: '1k',
      share: '1.5k',
      views: '1.3k',
  ),
  VideoModel(
    avatarOnpressed: () {
      print('Avatar on pressed!');
    },
    avatarimage: 'assets/images/rich_girl.jpg',
    name: 'Mandeep',
    time: '2h',
    space: '.',
    moreOnPressed: () {
      print('More on pressed!');
    },
    cutOnPressed: () {
      print('Cut on pressed!');
    },
    videoTitle: 'Poonian - Official Video | Himmat Sandhu | Ikky | Latest Punjabi Songs 2024',
    videoId: 'VlbHKhNRR4U',
    likeOnPressed: () {
      print('Like on pressed!');
    },
    commentOnPressed: () {
      print('Comment on pressed!');
    },
    sendOnPressed: () {
      print('Send on pressed!');
    },
    shareOnPressed: () {
      print('Share on pressed!');
    },
    like: '1.2k',
    comments: '1k',
    share: '1.5k',
    views: '1.3k',
  ),
  VideoModel(
    avatarOnpressed: () {
      print('Avatar on pressed!');
    },
    avatarimage: 'assets/images/rich_girl.jpg',
    name: 'Mandeep',
    time: '2h',
    space: '.',
    moreOnPressed: () {
      print('More on pressed!');
    },
    cutOnPressed: () {
      print('Cut on pressed!');
    },
    videoTitle: 'Desi Touch (Full Video) Harf Cheema | Sargi Maan | Pooja Singh Rajput | New Punjabi Songs 2024',
    videoId: 'EqzNOWjDf1o',
    likeOnPressed: () {
      print('Like on pressed!');
    },
    commentOnPressed: () {
      print('Comment on pressed!');
    },
    sendOnPressed: () {
      print('Send on pressed!');
    },
    shareOnPressed: () {
      print('Share on pressed!');
    },
    like: '1.2k',
    comments: '1k',
    share: '1.5k',
    views: '1.3k',
  ),
  VideoModel(
    avatarOnpressed: () {
      print('Avatar on pressed!');
    },
    avatarimage: 'assets/images/rich_girl.jpg',
    name: 'Mandeep',
    time: '2h',
    space: '.',
    moreOnPressed: () {
      print('More on pressed!');
    },
    cutOnPressed: () {
      print('Cut on pressed!');
    },
    videoTitle: 'Hot Shit | Arjan Dhillon | Aveera Singh | Chobar | Brown Studios',
    videoId: '',
    likeOnPressed: () {
      print('Like on pressed!');
    },
    commentOnPressed: () {
      print('Comment on pressed!');
    },
    sendOnPressed: () {
      print('Send on pressed!');
    },
    shareOnPressed: () {
      print('Share on pressed!');
    },
    like: '1.2k',
    comments: '1k',
    share: '1.5k',
    views: '1.3k',
  ),
  VideoModel(
    avatarOnpressed: () {
      print('Avatar on pressed!');
    },
    avatarimage: 'assets/images/rich_girl.jpg',
    name: 'Mandeep',
    time: '2h',
    space: '.',
    moreOnPressed: () {
      print('More on pressed!');
    },
    cutOnPressed: () {
      print('Cut on pressed!');
    },
    videoTitle: 'Hot Shit | Arjan Dhillon | Aveera Singh | Chobar | Brown Studios',
    videoId: 'q1eNnYacKX0',
    likeOnPressed: () {
      print('Like on pressed!');
    },
    commentOnPressed: () {
      print('Comment on pressed!');
    },
    sendOnPressed: () {
      print('Send on pressed!');
    },
    shareOnPressed: () {
      print('Share on pressed!');
    },
    like: '1.2k',
    comments: '1k',
    share: '1.5k',
    views: '1.3k',
  ),
  VideoModel(
    avatarOnpressed: () {
      print('Avatar on pressed!');
    },
    avatarimage: 'assets/images/rich_girl.jpg',
    name: 'Mandeep',
    time: '2h',
    space: '.',
    moreOnPressed: () {
      print('More on pressed!');
    },
    cutOnPressed: () {
      print('Cut on pressed!');
    },
    videoTitle: 'Hot Shit | Arjan Dhillon | Aveera Singh | Chobar | Brown Studios',
    videoId: 'q1eNnYacKX0',
    likeOnPressed: () {
      print('Like on pressed!');
    },
    commentOnPressed: () {
      print('Comment on pressed!');
    },
    sendOnPressed: () {
      print('Send on pressed!');
    },
    shareOnPressed: () {
      print('Share on pressed!');
    },
    like: '1.2k',
    comments: '1k',
    share: '1.5k',
    views: '1.3k',
  ),
  VideoModel(
    avatarOnpressed: () {
      print('Avatar on pressed!');
    },
    avatarimage: 'assets/images/rich_girl.jpg',
    name: 'Mandeep',
    time: '2h',
    space: '.',
    moreOnPressed: () {
      print('More on pressed!');
    },
    cutOnPressed: () {
      print('Cut on pressed!');
    },
    videoTitle: 'Hot Shit | Arjan Dhillon | Aveera Singh | Chobar | Brown Studios',
    videoId: 'q1eNnYacKX0',
    likeOnPressed: () {
      print('Like on pressed!');
    },
    commentOnPressed: () {
      print('Comment on pressed!');
    },
    sendOnPressed: () {
      print('Send on pressed!');
    },
    shareOnPressed: () {
      print('Share on pressed!');
    },
    like: '1.2k',
    comments: '1k',
    share: '1.5k',
    views: '1.3k',
  ),
  VideoModel(
    avatarOnpressed: () {
      print('Avatar on pressed!');
    },
    avatarimage: 'assets/images/rich_girl.jpg',
    name: 'Mandeep',
    time: '2h',
    space: '.',
    moreOnPressed: () {
      print('More on pressed!');
    },
    cutOnPressed: () {
      print('Cut on pressed!');
    },
    videoTitle: 'Hot Shit | Arjan Dhillon | Aveera Singh | Chobar | Brown Studios',
    videoId: 'q1eNnYacKX0',
    likeOnPressed: () {
      print('Like on pressed!');
    },
    commentOnPressed: () {
      print('Comment on pressed!');
    },
    sendOnPressed: () {
      print('Send on pressed!');
    },
    shareOnPressed: () {
      print('Share on pressed!');
    },
    like: '1.2k',
    comments: '1k',
    share: '1.5k',
    views: '1.3k',
  ),
  VideoModel(
    avatarOnpressed: () {
      print('Avatar on pressed!');
    },
    avatarimage: 'assets/images/rich_girl.jpg',
    name: 'Mandeep',
    time: '2h',
    space: '.',
    moreOnPressed: () {
      print('More on pressed!');
    },
    cutOnPressed: () {
      print('Cut on pressed!');
    },
    videoTitle: 'Hot Shit | Arjan Dhillon | Aveera Singh | Chobar | Brown Studios',
    videoId: 'q1eNnYacKX0',
    likeOnPressed: () {
      print('Like on pressed!');
    },
    commentOnPressed: () {
      print('Comment on pressed!');
    },
    sendOnPressed: () {
      print('Send on pressed!');
    },
    shareOnPressed: () {
      print('Share on pressed!');
    },
    like: '1.2k',
    comments: '1k',
    share: '1.5k',
    views: '1.3k',
  ),
  VideoModel(
    avatarOnpressed: () {
      print('Avatar on pressed!');
    },
    avatarimage: 'assets/images/rich_girl.jpg',
    name: 'Mandeep',
    time: '2h',
    space: '.',
    moreOnPressed: () {
      print('More on pressed!');
    },
    cutOnPressed: () {
      print('Cut on pressed!');
    },
    videoTitle: 'Hot Shit | Arjan Dhillon | Aveera Singh | Chobar | Brown Studios',
    videoId: 'q1eNnYacKX0',
    likeOnPressed: () {
      print('Like on pressed!');
    },
    commentOnPressed: () {
      print('Comment on pressed!');
    },
    sendOnPressed: () {
      print('Send on pressed!');
    },
    shareOnPressed: () {
      print('Share on pressed!');
    },
    like: '1.2k',
    comments: '1k',
    share: '1.5k',
    views: '1.3k',
  ),
  VideoModel(
    avatarOnpressed: () {
      print('Avatar on pressed!');
    },
    avatarimage: 'assets/images/rich_girl.jpg',
    name: 'Mandeep',
    time: '2h',
    space: '.',
    moreOnPressed: () {
      print('More on pressed!');
    },
    cutOnPressed: () {
      print('Cut on pressed!');
    },
    videoTitle: 'Hot Shit | Arjan Dhillon | Aveera Singh | Chobar | Brown Studios',
    videoId: 'q1eNnYacKX0',
    likeOnPressed: () {
      print('Like on pressed!');
    },
    commentOnPressed: () {
      print('Comment on pressed!');
    },
    sendOnPressed: () {
      print('Send on pressed!');
    },
    shareOnPressed: () {
      print('Share on pressed!');
    },
    like: '1.2k',
    comments: '1k',
    share: '1.5k',
    views: '1.3k',
  ),
  VideoModel(
    avatarOnpressed: () {
      print('Avatar on pressed!');
    },
    avatarimage: 'assets/images/rich_girl.jpg',
    name: 'Mandeep',
    time: '2h',
    space: '.',
    moreOnPressed: () {
      print('More on pressed!');
    },
    cutOnPressed: () {
      print('Cut on pressed!');
    },
    videoTitle: 'Hot Shit | Arjan Dhillon | Aveera Singh | Chobar | Brown Studios',
    videoId: 'q1eNnYacKX0',
    likeOnPressed: () {
      print('Like on pressed!');
    },
    commentOnPressed: () {
      print('Comment on pressed!');
    },
    sendOnPressed: () {
      print('Send on pressed!');
    },
    shareOnPressed: () {
      print('Share on pressed!');
    },
    like: '1.2k',
    comments: '1k',
    share: '1.5k',
    views: '1.3k',
  ),
  VideoModel(
    avatarOnpressed: () {
      print('Avatar on pressed!');
    },
    avatarimage: 'assets/images/rich_girl.jpg',
    name: 'Mandeep',
    time: '2h',
    space: '.',
    moreOnPressed: () {
      print('More on pressed!');
    },
    cutOnPressed: () {
      print('Cut on pressed!');
    },
    videoTitle: 'Hot Shit | Arjan Dhillon | Aveera Singh | Chobar | Brown Studios',
    videoId: 'q1eNnYacKX0',
    likeOnPressed: () {
      print('Like on pressed!');
    },
    commentOnPressed: () {
      print('Comment on pressed!');
    },
    sendOnPressed: () {
      print('Send on pressed!');
    },
    shareOnPressed: () {
      print('Share on pressed!');
    },
    like: '1.2k',
    comments: '1k',
    share: '1.5k',
    views: '1.3k',
  ),
  VideoModel(
    avatarOnpressed: () {
      print('Avatar on pressed!');
    },
    avatarimage: 'assets/images/rich_girl.jpg',
    name: 'Mandeep',
    time: '2h',
    space: '.',
    moreOnPressed: () {
      print('More on pressed!');
    },
    cutOnPressed: () {
      print('Cut on pressed!');
    },
    videoTitle: 'Hot Shit | Arjan Dhillon | Aveera Singh | Chobar | Brown Studios',
    videoId: 'q1eNnYacKX0',
    likeOnPressed: () {
      print('Like on pressed!');
    },
    commentOnPressed: () {
      print('Comment on pressed!');
    },
    sendOnPressed: () {
      print('Send on pressed!');
    },
    shareOnPressed: () {
      print('Share on pressed!');
    },
    like: '1.2k',
    comments: '1k',
    share: '1.5k',
    views: '1.3k',
  ),
  VideoModel(
    avatarOnpressed: () {
      print('Avatar on pressed!');
    },
    avatarimage: 'assets/images/rich_girl.jpg',
    name: 'Mandeep',
    time: '2h',
    space: '.',
    moreOnPressed: () {
      print('More on pressed!');
    },
    cutOnPressed: () {
      print('Cut on pressed!');
    },
    videoTitle: 'Hot Shit | Arjan Dhillon | Aveera Singh | Chobar | Brown Studios',
    videoId: 'q1eNnYacKX0',
    likeOnPressed: () {
      print('Like on pressed!');
    },
    commentOnPressed: () {
      print('Comment on pressed!');
    },
    sendOnPressed: () {
      print('Send on pressed!');
    },
    shareOnPressed: () {
      print('Share on pressed!');
    },
    like: '1.2k',
    comments: '1k',
    share: '1.5k',
    views: '1.3k',
  ),
];
