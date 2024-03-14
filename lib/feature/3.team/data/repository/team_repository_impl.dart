
import 'package:firebase_test/feature/3.team/data/data_sources/firebase/team_api_service.dart';
import 'package:firebase_test/feature/3.team/domain/repository/team_repository.dart';

class TeamRepositoryImpl implements TeamRepository {
  final TeamApiService _teamApiService;
  TeamRepositoryImpl(this._teamApiService);

  @override
  Future<void> getTeam(String teamId) async {
    var res = await _teamApiService.getTeam(teamId);
  }

}
