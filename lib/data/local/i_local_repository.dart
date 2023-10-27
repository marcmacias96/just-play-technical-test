abstract class ILocalRepository {
  Future<void> cacheUserId(String userId);
  Future<String> getCachedUser();
  Future<void> removeCachedUser();
}
