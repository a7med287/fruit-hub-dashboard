import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:fruit_hub_dashboard/core/errors/failures.dart';

abstract class ImageRepo {
  Future<Either<Failure, String>> upLoadImage(File image);
}