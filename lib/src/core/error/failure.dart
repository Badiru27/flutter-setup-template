import 'package:equatable/equatable.dart';

// General failures
abstract class Failure extends Equatable {
  const Failure(this.message);
  final String message;
  @override
  List<Object> get props => [];
}

class ServerFailure extends Failure {
  const ServerFailure({
    String? message,
  }) : super(message ?? 'Something Went Wrong');
}

class CachedFailure extends Failure {
  const CachedFailure({
    String? message,
  }) : super(message ?? 'Something Went Wrong');
}
