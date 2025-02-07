part of 'storage_perm_cubit.dart';

@immutable
class StoragePermissionStates {}

class StoragePermissionInitialState extends StoragePermissionStates {}

class StoragePermissionLoadingState extends StoragePermissionStates {}

class StoragePermissionSuccessState extends StoragePermissionStates {}

class StoragePermissionFailureState extends StoragePermissionStates
{  
  StoragePermissionFailureState({required this.errorMessage});
  final String errorMessage;
}