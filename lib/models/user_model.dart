class UserModel {
  String name;
  String email;
  String phoneNumber;
  String uid;
  String createdAt;
  String profilePic;
  String age;
  String gender;
  UserModel(
      {required this.name,
      required this.gender,
      required this.email,
      required this.createdAt,
      required this.phoneNumber,
      required this.uid,
      required this.age,
      required this.profilePic});
  // From map
  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
        gender: map['gender'] ?? '',
        name: map['name'] ?? '',
        email: map['email'] ?? '',
        phoneNumber: map['phoneNumber'] ?? '',
        createdAt: map['createdAt'] ?? '',
        profilePic: map['profilePic'] ?? '',
        uid: map['uid'] ?? '',
        age: map['age'] ?? '');
  }
  // To map
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
      'phoneNumber': phoneNumber,
      'uid': uid,
      'gender': gender,
      'age': age,
      'profilepic': profilePic,
      'createdAt': createdAt
    };
  }
}
