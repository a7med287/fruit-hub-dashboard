import 'dart:io';

import 'package:fruit_hub_dashboard/constants.dart';
import 'package:fruit_hub_dashboard/core/services/storage_services.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SupaBaseServices implements StorageServices{


  static late Supabase _supabase;

  static initSupa() async {

   _supabase =  await Supabase.initialize(
      url: kSupaUrl,
      anonKey: kSupaKey,
    );
  }
  @override
  Future<String> uploadImage(File file, String path) {
    // TODO: implement uploadImage
    throw UnimplementedError();
  }
}