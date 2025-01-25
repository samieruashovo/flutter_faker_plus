import 'dart:math';

class RandomUtils {
  static final _random = Random();
  static const _letters = 'abcdefghijklmnopqrstuvwxyz';
  static const _digits = '0123456789';

  static String randomString(int length) {
    return List.generate(
        length, (_) => _letters[_random.nextInt(_letters.length)]).join();
  }

  static String randomNumeric(int length) {
    return List.generate(
        length, (_) => _digits[_random.nextInt(_digits.length)]).join();
  }

  static int randomInt(int min, int max) {
    return min + _random.nextInt(max - min + 1);
  }

  static double randomDouble(double min, double max) {
    return min + _random.nextDouble() * (max - min);
  }
}
