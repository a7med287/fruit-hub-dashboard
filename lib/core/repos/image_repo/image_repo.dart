import 'dart:io';

abstract class ImageRepo {
  Future<String> upLoadImage(File image);
}