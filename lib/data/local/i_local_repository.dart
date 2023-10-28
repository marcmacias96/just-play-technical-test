/// An abstract repository interface for local data storage operations.
///
/// This interface defines methods for caching and retrieving user-related data
/// locally on the device, such as user identifiers.
///
/// Example:
///
/// ```dart
/// final localRepository = LocalRepository();
///
/// // Cache the user ID locally.
/// await localRepository.cacheUserId('user123');
///
/// // Retrieve the cached user ID.
/// final cachedUserId = await localRepository.getCachedUser();
///
/// // Remove the cached user ID.
/// await localRepository.removeCachedUser();
/// ```
///
/// In the example above, an instance of a class implementing 
/// the [ILocalRepository]
/// interface is used to perform local data storage operations. This interface
/// can be used as a contract to define methods for caching and retrieving
/// user-related data locally on the device.
abstract class ILocalRepository {
  /// Cache the user identifier locally on the device.
  ///
  /// This method stores the [userId] locally on the device, allowing it to be
  /// retrieved later. It is typically used for storing user-related data.
  Future<void> cacheUserId(String userId);

  /// Retrieve the cached user identifier from local storage.
  ///
  /// This method retrieves the user identifier that was previously cached
  /// locally on the device. If no user identifier is cached, it returns an
  /// empty string.
  Future<String> getCachedUser();

  /// Remove the cached user identifier from local storage.
  ///
  /// This method removes any previously cached user identifier from local
  /// storage on the device. It can be used to clear cached user-related data.
  Future<void> removeCachedUser();
}
