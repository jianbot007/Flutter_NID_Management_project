import 'package:local_auth/local_auth.dart';

class Finger_Authentication {


final LocalAuthentication auth = LocalAuthentication();

Future<void> authenticateUser() async {
  try {
    bool canAuthenticate = await auth.canCheckBiometrics;
    if (!canAuthenticate) {
      print('No biometrics available.');
      return;
    }

    bool authenticated = await auth.authenticate(
      localizedReason: 'Scan your fingerprint to continue',
      options: const AuthenticationOptions(
        biometricOnly: true,
      ),
    );

    if (authenticated) {
      print('Authentication successful');
    } else {
      print('Authentication failed');
    }
  } catch (e) {
    print('Error during authentication: $e');
  }
}

}