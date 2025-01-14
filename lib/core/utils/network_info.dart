import 'package:dartz/dartz.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import '../failures/failure.dart';

abstract class NetworkInfo {
  Future<bool> get isConnected;
  Future<Either<Failure, T>> safeNetworkRequest<T>({
    required Future<Either<Failure, T>> Function() result,
  });
}

class NetworkInfoImpl implements NetworkInfo {
  final InternetConnectionChecker _internetConnectionChecker;

  NetworkInfoImpl({
    required InternetConnectionChecker internetConnectionChecker,
  }) : _internetConnectionChecker = internetConnectionChecker;

  @override
  Future<bool> get isConnected => _internetConnectionChecker.hasConnection;

  @override
  Future<Either<Failure, T>> safeNetworkRequest<T>(
      {required Future<Either<Failure, T>> Function() result}) async {
    if (await isConnected) {
      return await result();
    } else {
      return Left(OfflineFailure());
    }
  }
}

