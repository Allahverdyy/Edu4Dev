abstract class SplashState {
  bool isNewUser;
  bool isVersionCheck;
  SplashState({required this.isNewUser, required this.isVersionCheck});
}

class SplashInitialState extends SplashState {
  @override
  bool isNewUser;
  @override
  bool isVersionCheck;
  SplashInitialState(this.isNewUser, this.isVersionCheck)
      : super(isNewUser: isNewUser, isVersionCheck: isVersionCheck);
}