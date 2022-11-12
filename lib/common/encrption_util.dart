import 'package:encrypt/encrypt.dart';

class EncrptionUtil {
  const EncrptionUtil._();

  static final _iv = IV.fromLength(16);

  static String encode(String value, String key) {
    final encrypter = Encrypter(AES(Key.fromUtf8(key)));
    return encrypter.encrypt(value, iv: _iv).base64;
  }

  static String decode(String value, String key) {
    final encrypter = Encrypter(AES(Key.fromUtf8(key)));
    return encrypter.decrypt(Encrypted.fromBase64(value), iv: _iv);
  }
}
