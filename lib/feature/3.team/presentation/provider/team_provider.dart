
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/constants/common_dio.dart';
import '../../data/data_sources/firebase/team_api_service.dart';
import '../../data/repository/team_repository_impl.dart';
import '../../domain/repository/team_repository.dart';

part 'team_provider.g.dart';

@Riverpod(keepAlive: true)
TeamApiService teamApiService(TeamApiServiceRef ref) {
  return TeamApiService(CommonDio().getDio());
}

@riverpod
TeamRepository teamRepository(TeamRepositoryRef ref) {
  final teamApiService = ref.read(teamApiServiceProvider);
  return TeamRepositoryImpl(teamApiService);
}