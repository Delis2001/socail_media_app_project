import 'dart:convert';

class Post {
 String? authorprofilepic;
 String? authorname;
 String? content;
 String? images;
  Post({
    this.authorprofilepic,
    this.authorname,
    this.content,
    this.images,
  });

  Post copyWith({
    String? authorprofilepic,
    String? authorname,
    String? content,
    String? images,
  }) {
    return Post(
      authorprofilepic: authorprofilepic ?? this.authorprofilepic,
      authorname: authorname ?? this.authorname,
      content: content ?? this.content,
      images: images ?? this.images,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    if(authorprofilepic != null){
      result.addAll({'author_profile_pic': authorprofilepic});
    }
    if(authorname != null){
      result.addAll({'author_name': authorname});
    }
    if(content != null){
      result.addAll({'content': content});
    }
    if(images != null){
      result.addAll({'images': images});
    }
  
    return result;
  }

  factory Post.fromMap(Map<String, dynamic> map) {
    return Post(
      authorprofilepic: map['author_profile_pic'],
      authorname: map['author_name'],
      content: map['content'],
      images: map['images'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Post.fromJson(String source) => Post.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Post(authorprofilepic: $authorprofilepic, authorname: $authorname, content: $content, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Post &&
      other.authorprofilepic == authorprofilepic &&
      other.authorname == authorname &&
      other.content == content &&
      other.images == images;
  }

  @override
  int get hashCode {
    return authorprofilepic.hashCode ^
      authorname.hashCode ^
      content.hashCode ^
      images.hashCode;
  }
}
