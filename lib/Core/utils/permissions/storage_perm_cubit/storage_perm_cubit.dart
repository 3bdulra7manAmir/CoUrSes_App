import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:permission_handler/permission_handler.dart';

part 'storage_perm_state.dart';

class StoragePermissionsCubit extends Cubit<StoragePermissionStates>
{
  StoragePermissionsCubit() : super(StoragePermissionInitialState());

  Future<void> requestStoragePermission() async
  {
    try
    {
      emit(StoragePermissionInitialState());
      // For Android 13+
      if (await Permission.photos.request().isGranted || await Permission.videos.request().isGranted)
      {
        print("✅ Media Permission Granted!");
        emit(StoragePermissionSuccessState());
      }

      // For Android versions 12 and below
      else if (await Permission.storage.request().isGranted)
      {
        print("✅ Storage Permission Granted!");
        emit(StoragePermissionSuccessState());
      }

      else if (await Permission.storage.isPermanentlyDenied)
      {
        print("❌ Storage Permission Permanently Denied! Please enable it in settings.");
        emit(StoragePermissionFailureState(errorMessage: "❌ Storage Permission Permanently Denied! Please enable it in settings."));
        openAppSettings(); // Open app settings for the user to grant permission manually
      }

      else
      {
        print("⚠️ Storage Permission Denied!");
        emit(StoragePermissionFailureState(errorMessage: "⚠️ Storage Permission Denied!"));
      }
    }
    
    catch (e)
    {
      print("⚠️ An error occurred while requesting permission: $e");
      emit(StoragePermissionFailureState(errorMessage: "⚠️ An error occurred while requesting permission: $e"));
    }
  }

}

