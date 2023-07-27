class Post {
  UserDetails userDetails;
  PostDetails postDetails;

  Post({required this.userDetails, required this.postDetails});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      userDetails: UserDetails.fromJson(json['user_details']),
      postDetails: PostDetails.fromJson(json['post_details']),
    );
  }
}

class UserDetails {
  String userName;
  String userImage;
  String height;
  String weight;
  String postTime;

  UserDetails({
    required this.userName,
    required this.userImage,
    required this.height,
    required this.weight,
    required this.postTime,
  });

  factory UserDetails.fromJson(Map<String, dynamic> json) {
    return UserDetails(
      userName: json['user_name'],
      userImage: json['user_image'],
      height: json['height'],
      weight: json['weight'],
      postTime: json['post_time'],
    );
  }
}

class PostDetails {
  String title;
  String description;
  List<String> tag;
  String image;
  int likesTotal;
  int messageTotal;
  List<Comment> comments;

  PostDetails({
    required this.title,
    required this.description,
    required this.tag,
    required this.image,
    required this.likesTotal,
    required this.messageTotal,
    required this.comments,
  });

  factory PostDetails.fromJson(Map<String, dynamic> json) {
    var commentList = json['comments'] as List;
    List<Comment> comments = commentList.map((item) => Comment.fromJson(item)).toList();

    return PostDetails(
      title: json['title'],
      description: json['description'],
      tag: List<String>.from(json['tag']),
      image: json['image'],
      likesTotal: json['likes_total'],
      messageTotal: json['message_total'],
      comments: comments,
    );
  }
}

class Comment {
  UserDetails userDetails;
  PostComment comment;
  List<Reply> replies;

  Comment({
    required this.userDetails,
    required this.comment,
    required this.replies,
  });

  factory Comment.fromJson(Map<String, dynamic> json) {
    var replyList = json['replies'] as List;
    List<Reply> replies = replyList.map((item) => Reply.fromJson(item)).toList();

    return Comment(
      userDetails: UserDetails.fromJson(json['user_details']),
      comment: PostComment.fromJson(json['comment']),
      replies: replies,
    );
  }
}

class PostComment {
  String message;
  int likesTotal;
  int messageTotal;

  PostComment({
    required this.message,
    required this.likesTotal,
    required this.messageTotal,
  });

  factory PostComment.fromJson(Map<String, dynamic> json) {
    return PostComment(
      message: json['message'],
      likesTotal: json['likes_total'],
      messageTotal: json['message_total'],
    );
  }
}

class Reply {
  UserDetails userDetails;
  ReplyMessage reply;

  Reply({
    required this.userDetails,
    required this.reply,
  });

  factory Reply.fromJson(Map<String, dynamic> json) {
    return Reply(
      userDetails: UserDetails.fromJson(json['user_details']),
      reply: ReplyMessage.fromJson(json['reply']),
    );
  }
}

class ReplyMessage {
  String message;
  int likesTotal;

  ReplyMessage({
    required this.message,
    required this.likesTotal,
  });

  factory ReplyMessage.fromJson(Map<String, dynamic> json) {
    return ReplyMessage(
      message: json['message'],
      likesTotal: json['likes_total'],
    );
  }
}
