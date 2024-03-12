import '../../domain/repository/account_repository.dart';
import '../data_sources/firebase/account_api_service.dart';

class AccountRepositoryImpl implements AccountRepository {
  final AccountApiService _accountApiService;

  AccountRepositoryImpl(this._accountApiService);
  
  @override
  Future<void> findPassword(String request) {
    _accountApiService.findPassword(request);
    throw UnimplementedError();
  }
}