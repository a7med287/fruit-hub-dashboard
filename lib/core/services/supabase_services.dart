import 'dart:io';

import 'package:fruit_hub_dashboard/constants.dart';
import 'package:fruit_hub_dashboard/core/services/storage_services.dart';
import 'package:path/path.dart' as p;
import 'package:supabase_flutter/supabase_flutter.dart';

class SupaBaseServices implements StorageServices {
  static late Supabase _supabase;

  static initSupa() async {
    _supabase = await Supabase.initialize(url: kSupaUrl, anonKey: kSupaKey);
  }

  @override
  Future<String> uploadImage(File file, String path) async {
    var imageName = p.basename(file.path);
    var imageExtension = p.extension(file.path);

    var result = await _supabase.client.storage
        .from("fruits_hib_bucket")
        .upload("$path/$imageName.$imageExtension", file);
    return result;
  }
}
