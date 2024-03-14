// import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/constants/common_dio.dart';
import '../../data/data_sources/firebase/home_api_service.dart';
import '../../data/repository/home_repository_impl.dart';
import '../../domain/repository/home_repository.dart';
import '../../domain/usecases/add_member.dart';
import '../../domain/usecases/get_members.dart';
import 'member_state_notifier.dart';

part 'home_provider.g.dart';

@Riverpod(keepAlive: true)
HomeApiService homeApiService(HomeApiServiceRef ref) {
  return HomeApiService(CommonDio().getDio());
}

@Riverpod(keepAlive: true)
HomeRepository homeRepository(HomeRepositoryRef ref) {
  final homeApiService = ref.read(homeApiServiceProvider);
  return HomeRepositoryImpl(homeApiService);
}

@Riverpod(keepAlive: true)
GetMembers getMembers(GetMembersRef ref) {
  final repository = ref.read(homeRepositoryProvider);
  return GetMembers(repository);
}

@Riverpod(keepAlive: true)
AddMember addMember(AddMemberRef ref) {
  final  repository = ref.read(homeRepositoryProvider);
  return AddMember(repository);
}

// final getTripsProvider = Provider<GetTrips>((ref) {
//   final repository = ref.read(tripRepositoryProvider);
//   return GetTrips(repository);
// });