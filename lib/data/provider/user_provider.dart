import '../model/user.dart';

class UserProvider {

  Future<User?> getDetailUser() {
    return _getMockUser();
  }

  Future<User> _getMockUser() {
    User user = User(
      id: 'john-doe',
      name: 'John Doe',
      email: 'john@test.com',
      createdAt: DateTime.now(),
    );

    return Future.value(user);
  }
}