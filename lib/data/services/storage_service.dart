import 'package:shared_preferences/shared_preferences.dart';

class StorageService {
  static const String _keyUserId = 'user_id';
  static const String _keyUserName = 'user_name';
  static const String _keyUserEmail = 'user_email';
  static const String _keyLanguage = 'language';
  static const String _keyLocation = 'location';
  static const String _keyIsLoggedIn = 'is_logged_in';
  static const String _keyOnboardingCompleted = 'onboarding_completed';

  // Save User Data
  Future<bool> saveUserData({
    required String userId,
    required String userName,
    required String userEmail,
  }) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(_keyUserId, userId);
      await prefs.setString(_keyUserName, userName);
      await prefs.setString(_keyUserEmail, userEmail);
      await prefs.setBool(_keyIsLoggedIn, true);
      return true;
    } catch (e) {
      return false;
    }
  }

  // Get User ID
  Future<String?> getUserId() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return prefs.getString(_keyUserId);
    } catch (e) {
      return null;
    }
  }

  // Get User Name
  Future<String?> getUserName() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return prefs.getString(_keyUserName);
    } catch (e) {
      return null;
    }
  }

  // Get User Email
  Future<String?> getUserEmail() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return prefs.getString(_keyUserEmail);
    } catch (e) {
      return null;
    }
  }

  // Save Language
  Future<bool> saveLanguage(String language) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return await prefs.setString(_keyLanguage, language);
    } catch (e) {
      return false;
    }
  }

  // Get Language
  Future<String?> getLanguage() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return prefs.getString(_keyLanguage);
    } catch (e) {
      return null;
    }
  }

  // Save Location
  Future<bool> saveLocation(String location) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return await prefs.setString(_keyLocation, location);
    } catch (e) {
      return false;
    }
  }

  // Get Location
  Future<String?> getLocation() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return prefs.getString(_keyLocation);
    } catch (e) {
      return null;
    }
  }

  // Check if Logged In
  Future<bool> isLoggedIn() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return prefs.getBool(_keyIsLoggedIn) ?? false;
    } catch (e) {
      return false;
    }
  }

  // Save Onboarding Completed
  Future<bool> saveOnboardingCompleted() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return await prefs.setBool(_keyOnboardingCompleted, true);
    } catch (e) {
      return false;
    }
  }

  // Check if Onboarding Completed
  Future<bool> isOnboardingCompleted() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return prefs.getBool(_keyOnboardingCompleted) ?? false;
    } catch (e) {
      return false;
    }
  }

  // Clear All Data (Logout)
  Future<bool> clearAll() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return await prefs.clear();
    } catch (e) {
      return false;
    }
  }

  // Logout
  Future<bool> logout() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.remove(_keyUserId);
      await prefs.remove(_keyUserName);
      await prefs.remove(_keyUserEmail);
      await prefs.setBool(_keyIsLoggedIn, false);
      return true;
    } catch (e) {
      return false;
    }
  }
}