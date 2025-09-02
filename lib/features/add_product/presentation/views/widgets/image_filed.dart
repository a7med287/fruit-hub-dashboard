import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:fruit_hub_dashboard/core/utils/app_colors.dart';
import 'package:image_picker/image_picker.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ImageField extends StatefulWidget {
  const ImageField({super.key});

  @override
  State<ImageField> createState() => _ImageFieldState();
}

class _ImageFieldState extends State<ImageField> {

  bool isLoading = false ;
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
            debugPrint("image uploaded");
          } catch (e) {
            log("something wrong in photo");
          }
          setState(() {
            isLoading = false;
          });
        },
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 12),
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: AppColors.primaryColor, width: 2),
          ),
          child: Icon(
            Icons.add_photo_alternate_outlined,
            size: 120,
            color: AppColors.primaryColor,
          ),
        ),
      ),
    );
  }
}
