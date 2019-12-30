import 'package:test/test.dart';
import 'package:dataquest/content.dart';

void main() {
  test('Quantidade de questões no tema', () {
    final data = Content();
    expect(data.eixo[0].tema[0].questao.length, 1);
  });
}
