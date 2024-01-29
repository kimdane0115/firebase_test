

abstract class HomeRepository {
  Future<void> getTeam(String teamId);
  Future<void> getMember(String teamId);
  Future<void> patchMemberId(String teamId, String memberId, String request);
  Future<void> getUserData(String userId);
  Future<void> signInByEmail(String request);
}