import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:fruit_hub_dashboard/core/repos/image_repo/image_repo.dart';
import 'package:fruit_hub_dashboard/core/services/storage_services.dart';
import 'package:fruit_hub_dashboard/core/utils/backend_endpoints.dart';

import '../../errors/failures.dart';

class ImageRepoImpl extends ImageRepo {
  final StorageServices storageServices;

  ImageRepoImpl(this.storageServices);
  @override
  Future<Either<Failure, String>> upLoadImage(File image) async {
    try {
      var res = await storageServices.uploadImage(
        image,
        BackEndEndPoints.images,
      );
      return Right(res);
    } catch (e) {
      return Left(
        ServerFailure(message: "error in upload image ${e.toString()}"),
      );
    }
  }
}
