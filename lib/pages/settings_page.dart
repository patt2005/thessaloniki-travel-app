import 'dart:io';
import 'package:path/path.dart' as path;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';
import 'package:thessaloniki_travel_app/components/primary_button.dart';
import 'package:thessaloniki_travel_app/utils/app_state_manager.dart';
import 'package:thessaloniki_travel_app/utils/utils.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  File? _imageFile;

  @override
  void initState() {
    super.initState();
    _init();
  }

  void _init() async {
    final provider = Provider.of<AppStateManager>(context, listen: false);
    if (provider.imageFilePath.isNotEmpty) {
      _imageFile = File(provider.imageFilePath);
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.07,
              width: double.infinity,
            ),
            _imageFile == null
                ? Image.asset(
                    "images/profile.png",
                    width: size.height * 0.2,
                    height: size.height * 0.2,
                    fit: BoxFit.contain,
                  )
                : ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.file(
                      _imageFile!,
                      width: size.width,
                      fit: BoxFit.cover,
                      height: size.height * 0.2,
                    ),
                  ),
            SizedBox(
              height: size.height * 0.04,
              width: double.infinity,
            ),
            Consumer<AppStateManager>(
              builder: (context, value, child) => PrimaryButton(
                onPressed: () async {
                  final textController = TextEditingController();
                  showCupertinoDialog(
                    context: context,
                    builder: (context) => CupertinoAlertDialog(
                      title: const Text("Enter Nickname"),
                      content: Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: CupertinoTextField(
                          controller: textController,
                          placeholder: "Type here...",
                          padding: const EdgeInsets.symmetric(
                              vertical: 12, horizontal: 16),
                        ),
                      ),
                      actions: [
                        CupertinoDialogAction(
                          child: const Text("Cancel"),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                        CupertinoDialogAction(
                          child: const Text("Submit"),
                          onPressed: () {
                            value.setNickname(textController.text);
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    ),
                  );
                },
                text: value.nickname.isEmpty ? "Nickname" : value.nickname,
              ),
            ),
            SizedBox(
              height: size.height * 0.01,
              width: double.infinity,
            ),
            PrimaryButton(
              onPressed: () async {
                final imagePicker = ImagePicker();
                final image =
                    await imagePicker.pickImage(source: ImageSource.gallery);
                if (image != null) {
                  final cacheDir = await getTemporaryDirectory();
                  final filePath =
                      path.join(cacheDir.path, 'profile_picture.png');
                  final savedImage = await File(image.path).copy(filePath);
                  setState(() {
                    _imageFile = savedImage;
                  });
                  Provider.of<AppStateManager>(context)
                      .setImageFilePath(filePath);
                }
              },
              text: "Set profile image",
            ),
            SizedBox(
              height: size.height * 0.04,
              width: double.infinity,
            ),
            Image.asset(
              "images/settings.png",
              width: size.height * 0.4,
              height: size.height * 0.4,
              fit: BoxFit.contain,
            ),
          ],
        ),
      ),
    );
  }
}
