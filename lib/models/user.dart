import 'dart:convert';
class User {
  String? profilePics;
  String? FirstName;
  String? LastName;
  String? email;
  String? gender;
  User({
    this.profilePics,
    this.FirstName,
    this.LastName,
    this.email,
    this.gender,
  });

  User copyWith({
    String? profilePics,
    String? FirstName,
    String? LastName,
    String? email,
    String? gender,
  }) {
    return User(
      profilePics: profilePics ?? this.profilePics,
      FirstName: FirstName ?? this.FirstName,
      LastName: LastName ?? this.LastName,
      email: email ?? this.email,
      gender: gender ?? this.gender,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    if(profilePics != null){
      result.addAll({'profile_Pics': profilePics});
    }
    if(FirstName != null){
      result.addAll({'First_name': FirstName});
    }
    if(LastName != null){
      result.addAll({'Last_name': LastName});
    }
    if(email != null){
      result.addAll({'email': email});
    }
    if(gender != null){
      result.addAll({'gender': gender});
    }
  
    return result;
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      profilePics: map['profile_Pics'],
      FirstName: map['First_name'],
      LastName: map['Last_name'],
      email: map['email'],
      gender: map['gender'],
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));

  @override
  String toString() {
    return 'User(profilePics: $profilePics, FirstName: $FirstName, LastName: $LastName, email: $email, gender: $gender)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is User &&
      other.profilePics == profilePics &&
      other.FirstName == FirstName &&
      other.LastName == LastName &&
      other.email == email &&
      other.gender == gender;
  }

  @override
  int get hashCode {
    return profilePics.hashCode ^
      FirstName.hashCode ^
      LastName.hashCode ^
      email.hashCode ^
      gender.hashCode;
  }
}
