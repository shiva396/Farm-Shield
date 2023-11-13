class AdminModel {
  String name;
  String email;
  String phoneNumber;
  String uid;
  String createdAt;
  String? profilePic;
  String bio;
  String password;
  // List<Coordinate> locations;
  AdminModel(
      {required this.name,
      required this.password,
      required this.email,
      required this.createdAt,
      required this.phoneNumber,
      required this.uid,
      // required this.locations,
      required this.bio,
      required this.profilePic});
  // From map
  factory AdminModel.fromMap(Map<String, dynamic> map) {
    return AdminModel(
        password: map['password'] ?? '',
        name: map['name'] ?? '',
        email: map['email'] ?? '',
        phoneNumber: map['phoneNumber'] ?? '',
        createdAt: map['createdAt'] ?? '',
        profilePic: map['profilePic'] ?? '',
        uid: map['uid'] ?? '',
        bio: map['bio'] ?? ''
        // locations: (map['locations'] ?? [])
        //     .map((location) => Coordinate(
        //         latitude: location['latitude'], longitude: location['longitude']))
        //     .toList(),
        );
  }
  // To map
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
      'phoneNumber': phoneNumber,
      'uid': uid,
      'password': password,
      // 'locations': locations
      //     .map((coordinate) => {
      //           'latitude': coordinate.latitude,
      //           'longitude': coordinate.longitude
      //         })
      //     .toList(),
      'bio': bio,
      'profilepic': profilePic,
      'createdAt': createdAt
    };
  }
}
