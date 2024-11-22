import 'package:template_application/data/provider/user_provider.dart';

import '../model/user.dart';

class UserRepository {
  UserRepository({required this.userProvider});
  
  final UserProvider userProvider;

  Future<User?> getDetailUser() {
    return userProvider.getDetailUser();
  }
}
