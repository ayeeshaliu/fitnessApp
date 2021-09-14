

import 'package:dartz/dartz.dart';
import 'package:fitness_app/core/error/failures.dart';
import 'package:fitness_app/core/usecases/usecase.dart';
import 'package:fitness_app/features/authentication/data/model/user_model.dart';

class LoginUseCase implements UseCase<UserModel>{
  @override
  Future<Either<Failure, UserModel>> call({email, password}) {
    // TODO: implement call
    throw UnimplementedError();
  }

}