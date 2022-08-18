import 'dart:convert';

import 'package:flutter/foundation.dart';

class User {
  final String email;
  final String uid;
  final String photoUrl;
  final String username;
  final String bio;
  final List likedPlaces;
  final List placesVisited;
  User({
    required this.email,
    required this.uid,
    required this.photoUrl,
    required this.username,
    required this.bio,
    required this.likedPlaces,
    required this.placesVisited,
  });

  User copyWith({
    String? email,
    String? uid,
    String? photoUrl,
    String? username,
    String? bio,
    List? likedPlaces,
    List? placesVisited,
  }) {
    return User(
      email: email ?? this.email,
      uid: uid ?? this.uid,
      photoUrl: photoUrl ?? this.photoUrl,
      username: username ?? this.username,
      bio: bio ?? this.bio,
      likedPlaces: likedPlaces ?? this.likedPlaces,
      placesVisited: placesVisited ?? this.placesVisited,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'uid': uid,
      'photoUrl': photoUrl,
      'username': username,
      'bio': bio,
      'likedPlaces': likedPlaces,
      'placesVisited': placesVisited,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
        email: map['email'] as String,
        uid: map['uid'] as String,
        photoUrl: map['photoUrl'] as String,
        username: map['username'] as String,
        bio: map['bio'] as String,
        likedPlaces: List.from(map['likedPlaces'] as List),
        placesVisited: List.from(
          (map['placesVisited'] as List),
        ));
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) =>
      User.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'User(email: $email, uid: $uid, photoUrl: $photoUrl, username: $username, bio: $bio, likedPlaces: $likedPlaces, placesVisited: $placesVisited)';
  }

  @override
  bool operator ==(covariant User other) {
    if (identical(this, other)) return true;

    return other.email == email &&
        other.uid == uid &&
        other.photoUrl == photoUrl &&
        other.username == username &&
        other.bio == bio &&
        listEquals(other.likedPlaces, likedPlaces) &&
        listEquals(other.placesVisited, placesVisited);
  }

  @override
  int get hashCode {
    return email.hashCode ^
        uid.hashCode ^
        photoUrl.hashCode ^
        username.hashCode ^
        bio.hashCode ^
        likedPlaces.hashCode ^
        placesVisited.hashCode;
  }
}


 // static User fromsnap(DocumentSnapshot snap) {
  //   var data = snap.data() as Map<String, dynamic>;
  //   return User(
  //       email: data['email'],
  //       uid: data['uid'],
  //       photoUrl: data['photoUrl'],
  //       username: data['username'],
  //       bio: data['bio'],
  //       follower: data['follower'],
  //       following: data['following']);
  // }