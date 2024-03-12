import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/constants/common_dio.dart';
import '../../data/data_sources/firebase/account_api_service.dart';
import '../../data/repository/account_repository_impl.dart';
import '../../domain/repository/account_repository.dart';
part 'account_provider.g.dart';


@Riverpod(keepAlive: true)
AccountApiService accountApiService (AccountApiServiceRef ref) {
  return AccountApiService(CommonDio().getDio());
}

@Riverpod(keepAlive: true)
AccountRepository accountRepository(AccountRepositoryRef ref) {
  final accountApiService = ref.read(accountApiServiceProvider);
  return AccountRepositoryImpl(accountApiService);
}