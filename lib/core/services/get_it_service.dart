
import 'package:fruit_hub_dashboard/core/services/storage_services.dart';
import 'package:fruit_hub_dashboard/core/services/supabase_services.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  getIt.registerSingleton<StorageServices>(SupaBaseServices());

}
