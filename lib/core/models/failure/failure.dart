import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure.serverFailure(String message) = ServerFailure;
  const factory Failure.firebaAuthFailure(String message) = FirebaseAuthFailure;
  const factory Failure.unknownFailure(String message) = UnknownFailure;
  const factory Failure.connectionFailure(String message) = ConnectionFailure;
  const factory Failure.databaseFailure(String message) = DatabaseFailure;
  const factory Failure.keyValueStoreFailure(String message) =
      KeyValueStoreFailure;
  const factory Failure.permissionFailure(String message) = PermissionFailure;

  const factory Failure.requestCancelled(String message) =
      RequestCancelledFailure;

  factory Failure.requestCancelledWithDefault() {
    return const Failure.requestCancelled('Request was cancelled');
  }

  @override
  String get message;
}

extension FailureX on Failure {
  String get message => when(
        serverFailure: (message) => message,
        connectionFailure: (message) => message,
        databaseFailure: (message) => message,
        firebaAuthFailure: (message) => message,
        unknownFailure: (message) => message,
        keyValueStoreFailure: (message) => message,
        permissionFailure: (message) => message,
        requestCancelled: (message) => message,
      );
}
