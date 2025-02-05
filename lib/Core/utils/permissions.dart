import 'package:permission_handler/permission_handler.dart';

Future<void> requestStoragePermission() async
{
  try {
    // For Android 13+
    if (await Permission.photos.request().isGranted || await Permission.videos.request().isGranted)
    {
      print("✅ Media Permission Granted!");
    }

    // For Android versions 12 and below
    else if (await Permission.storage.request().isGranted)
    {
      print("✅ Storage Permission Granted!");
    }

    else if (await Permission.storage.isPermanentlyDenied)
    {
      print("❌ Storage Permission Permanently Denied! Please enable it in settings.");
      openAppSettings(); // Open app settings for the user to grant permission manually
    }

    else
    {
      print("⚠️ Storage Permission Denied!");
    }
  }
  catch (e)
  {
    print("⚠️ An error occurred while requesting permission: $e");
  }
}
