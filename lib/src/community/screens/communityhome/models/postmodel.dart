


class PostModel {
  PostModel ({
    required this.username,
    required this.isVerified,
    required this.date,
    required this.profileimg,
    required this.content,
    required this.postimage,
    required this.likesCount,
    required this.commentcount,
  });
    String username;
    bool isVerified;
    String date;
    String profileimg;
    String content;
    String postimage;
    int likesCount;
    int commentcount;
}


List<PostModel> userposts = [
  PostModel(
    username: "Yasini_joshua",
    isVerified: true,
    date: "12 May,2024",
    profileimg: "https://i.pinimg.com/236x/c1/ee/20/c1ee20874ed91d1c7ee0e8c59263eea9.jpg",
    content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ut metus eget lacus vestibulum consequat eu commodo diam. ",
    postimage: "https://i.pinimg.com/236x/20/9b/7f/209b7f5754978bf75cf73eeb41fcf51d.jpg",
    likesCount: 124,
    commentcount: 20,
  ),
  PostModel(
    username: "Myles",
    isVerified: false,
    date: "11 April,2024",
    profileimg: "https://i.pinimg.com/236x/41/77/e6/4177e635b4bf9e7ee8ac4116f3693503.jpg",
    content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ut metus eget lacus vestibulum  ",
    postimage: "",
    likesCount: 14,
    commentcount: 3,
  ),
  PostModel(
    username: "ms_spaghetti",
    isVerified: true,
    date: "12 May,2024",
    profileimg: "https://i.pinimg.com/236x/61/b6/ad/61b6ad07d5001ec2b689bb18ea6d7aa5.jpg",
    content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ut metus eget lacus vestibulum consequat eu commodo diam. ",
    postimage: "https://i.pinimg.com/236x/50/be/23/50be2319b5cb2271f00fd352e68cca61.jpg",
    likesCount: 124,
    commentcount: 20,
  ),
  PostModel(
    username: "Anthonymashal123",
    isVerified: false,
    date: "12 May,2024",
    profileimg: "https://i.pinimg.com/236x/af/72/cd/af72cd11bd30f2c81ce78aecffa6c030.jpg",
    content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ut metus eget lacus vestibulum consequat eu commodo diam. ",
    postimage: "https://i.pinimg.com/236x/d2/9a/de/d29ade49aa989c4bf3fb5cc71289c936.jpg",
    likesCount: 124,
    commentcount: 20,
  ),
  PostModel(
    username: "Yasini_joshua",
    isVerified: true,
    date: "12 May,2024",
    profileimg: "https://i.pinimg.com/236x/96/92/bb/9692bbd6026bd17d5e1522936b8dd675.jpg",
    content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ut metus eget lacus vestibulum consequat eu commodo diam. ",
    postimage: "https://i.pinimg.com/236x/76/99/81/7699810bceb09e8de9a6819bbd53b331.jpg",
    likesCount: 124,
    commentcount: 20,
  ),
];