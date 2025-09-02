import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fruit_hub_dashboard/core/utils/app_colors.dart';
import 'package:image_picker/image_picker.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ImageField extends StatefulWidget {
  const ImageField({super.key, required this.onFileChanged});

  final ValueChanged<File?> onFileChanged;
  @override
  State<ImageField> createState() => _ImageFieldState();
}

class _ImageFieldState extends State<ImageField> {
  bool isLoading = false;
  File? imageFile;
  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      enabled: isLoading,
      child: GestureDetector(
        onTap: () async {
          setState(() {
            isLoading = true;
          });
          try {
            final ImagePicker picker = ImagePicker();
            final XFile? image = await picker.pickImage(
              source: ImageSource.gallery,
            );
            imageFile = File(image!.path);
            widget.onFileChanged(imageFile);
            debugPrint("image uploaded");
          } catch (e) {
            log("something wrong in photo");
          }
          setState(() {
            isLoading = false;
          });
        },
        child: Stack(
          children: [
            Container(
              // padding: EdgeInsets.symmetric(vertical: 12),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: AppColors.primaryColor, width: 2),
              ),
              child:
                  imageFile != null
                      ? ClipRRect(
                        borderRadius: BorderRadius.circular(14),
                        child: Image.file(imageFile!),
                      )
                      : Icon(
                        Icons.add_photo_alternate_outlined,
                        size: 120,
                        color: AppColors.primaryColor,
                      ),
            ),
            Visibility(
              visible: imageFile!=null,
              child: Positioned(
                bottom: 10,
                left: 10,
                child: Container(
                  decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(50)),
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        imageFile = null;
                        widget.onFileChanged(imageFile);
                      });

                    },
                    icon: Icon(Icons.delete_forever),
                    color: Colors.red,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
