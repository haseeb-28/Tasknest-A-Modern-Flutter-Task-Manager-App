import 'package:supabase_flutter/supabase_flutter.dart';
import '../main.dart';

class AuthService {
  User? get currentUser => supabase.auth.currentUser;

  Stream<AuthState> get authStateChanges =>
      supabase.auth.onAuthStateChange;

  Future<void> signUp({
    required String email,
    required String password,
  }) async {
    try {
      await supabase.auth.signUp(
        email: email.trim(),
        password: password,
      );
    } on AuthException catch (e) {
      throw e.message;
    } catch (e) {
      throw 'Something went wrong. Please try again.';
    }
  }

  Future<void> login({
    required String email,
    required String password,
  }) async {
    try {
      await supabase.auth.signInWithPassword(
        email: email.trim(),
        password: password,
      );
    } on AuthException catch (e) {
      throw e.message;
    } catch (e) {
      throw 'Something went wrong. Please try again.';
    }
  }

  Future<void> logout() async {
    await supabase.auth.signOut();
  }
}