import 'package:farmshield/provider/firebase_collections.dart';
import 'package:farmshield/settings/edit_item.dart';
import 'package:farmshield/utils/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:provider/provider.dart';

class ShowProfile extends StatefulWidget {
  const ShowProfile({super.key});

  @override
  State<ShowProfile> createState() => _ShowProfileState();
}

class _ShowProfileState extends State<ShowProfile> {
  @override
  Widget build(BuildContext context) {
    final ap = Provider.of<AuthProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Ionicons.chevron_back_outline),
        ),
        leadingWidth: 80,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text(
              "Profile",
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 40),
            EditItem(
              title: "Photo",
              widget: Column(children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(ap.userModel.profilePic),
                  radius: 50,
                ),
              ]),
            ),
            SizedBox(
              height: 20,
            ),
            EditItem(
              title: "Name",
              widget: TextField(
                readOnly: true,
                decoration: InputDecoration(labelText: ap.userModel.name),
              ),
            ),
            const SizedBox(height: 40),
            EditItem(
              title: "Gender",
              widget: TextField(
                readOnly: true,
                decoration: InputDecoration(labelText: ap.userModel.gender),
              ),
            ),
            const SizedBox(height: 40),
            EditItem(
              widget: TextField(
                readOnly: true,
                decoration: InputDecoration(labelText: ap.userModel.age),
              ),
              title: "Age",
            ),
            const SizedBox(height: 40),
            EditItem(
              widget: TextField(
                readOnly: true,
                decoration: InputDecoration(labelText: ap.userModel.email),
              ),
              title: "Email",
            ),
            const SizedBox(height: 40),
            EditItem(
              widget: TextField(
                decoration:
                    InputDecoration(labelText: ap.userModel.phoneNumber),
                readOnly: true,
              ),
              title: "Phone Number",
            ),
            const SizedBox(height: 40),
            CustomButton(
                text: "Sign out",
                onPressed: () {
                  ap.userSignOut();
                })
          ]),
        ),
      ),
    );
  }
}
