import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/core/networking/api_constants.dart';
import 'package:flutter_application_1/core/networking/dio_helper.dart';
import 'package:flutter_application_1/features/gold/data/models/goldmodel.dart';
import 'package:flutter_application_1/features/gold/data/models/silvermodel.dart';

class SilverRepo {
Future<Either<String,SilverModel >> getSilver()async{
 try {
  final res = await DioHelper.getData(endpoint: ApiConstants.silverEndpoint);
  return Right (SilverModel.fromJson(res.data));
}  catch (e) {
  return Left(e.toString());
}
}
}