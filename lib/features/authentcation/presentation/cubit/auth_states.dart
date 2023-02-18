abstract class AuthState {}

class AuthInitState extends AuthState {}

class AuthToggleState extends AuthState {}
class AuthSignInSuccessfulState extends AuthState{}
class AuthSignInErrorState extends AuthState{}
class AuthSignInButtonState extends AuthState{}
