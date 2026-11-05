import 'package:flutter_test/flutter_test.dart';
import 'package:rpl_keamanan/utils/validators.dart';

void main() {
  group('Validators Unit Tests', () {
    test('isValidEmail Skenario Test', () {
      expect(Validators.isValidEmail('user@test.com'), isTrue);
      expect(Validators.isValidEmail('invalid-email'), isFalse);
      expect(Validators.isValidEmail('test@domain'), isFalse);
    });

    test('sanitize Input Berbahaya Test', () {
      final input = '<script>alert("XSS")</script>';
      final sanitized = Validators.sanitize(input);
      expect(sanitized.contains('<'), isFalse);
      expect(sanitized.contains('>'), isFalse);
      expect(
        sanitized,
        equals('&lt;script&gt;alert(&quot;XSS&quot;)&lt;/script&gt;'),
      );
    });

    test('validateText Panjang Karakter Test', () {
      expect(Validators.validateText(''), equals('Field tidak boleh kosong'));
      expect(
        Validators.validateText('ABC', minLength: 5, maxLength: 100),
        equals('Field harus antara 5-100 karakter'),
      );
      expect(
        Validators.validateText('Hello World', minLength: 2, maxLength: 20),
        isNull,
      );
    });

    test('Validasi Nomor Telepon (Latihan 3) Test', () {
      expect(Validators.isValidPhone('081234567890'), isTrue);
      expect(Validators.isValidPhone('12345'), isFalse);
      expect(Validators.isValidPhone('abc123456789'), isFalse);
      expect(
        Validators.validatePhone(''),
        equals('Nomor telepon tidak boleh kosong'),
      );
    });

    test('Validasi URL (Latihan 3) Test', () {
      expect(Validators.isValidUrl('https://amikom.ac.id'), isTrue);
      expect(Validators.isValidUrl('http://localhost:8080'), isTrue);
      expect(Validators.isValidUrl('ftp://invalid-url.com'), isFalse);
      expect(Validators.validateUrl(''), equals('URL tidak boleh kosong'));
    });

    test('Validasi Password (Latihan 3) Test', () {
      expect(Validators.isValidPassword('P@ssword123'), isTrue);
      expect(Validators.isValidPassword('weakpass'), isFalse);
      expect(Validators.isValidPassword('NOLANGKA!'), isFalse);
      expect(
        Validators.validatePassword(''),
        equals('Password tidak boleh kosong'),
      );
    });
  });
}