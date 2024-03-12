import '../../data/models/common_request.dart';
import '../../data/models/member_model.dart';
import '../repository/home_repository.dart';

class AddMember {
  final HomeRepository repository;

  AddMember(this.repository);

  Future<void> call(String teamId, String memberId, CommonRequest<MemberModel> request) {
    return repository.patchMemberIdCommon(teamId, memberId, request);
  }  
}