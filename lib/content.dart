import 'questionario.dart';
import 'tema.dart';
import 'likert.dart';

class Content {
//questionarios
  List<Questionario> dataEixo = <Questionario>[
    new Questionario(),
    new Questionario(),
    new Questionario()
  ];

  Content() {
    buildQuest1();
  }

  void buildQuest1() {
    //CONSTRUINDO O QUESTIONÁRIO
    //EIXO1
    dataEixo[0].start();
    dataEixo[0].eixo = "EIXO: SUSTENTABILIDADES E BOM VIVER";
    dataEixo[0].tema.add(new Tema("QUALIDADE DA MORADIA"));
    dataEixo[0]
        .tema[0]
        .questao
        .add(new Likert("A estrutura de sua casa é segura?"));
    dataEixo[0]
        .tema[0]
        .questao
        .add(new Likert("A sua moradia é arejada e iluminada?"));
    dataEixo[0].tema[0].questao.add(new Likert(
        "A quantidade de cômodos em sua moradia é suficiente para sua família?"));
    dataEixo[0].tema[0].questao.add(new Likert(
        "Os espaços em sua moradia acomodam confortavelmente todos os que moram nela?"));
    dataEixo[0].tema[0].questao.add(
        new Likert("O banheiro de sua moradia tem tratamento dos dejetos?"));
    dataEixo[0]
        .tema[0]
        .questao
        .add(new Likert("Você faz coleta seletiva de seu lixo?"));
    dataEixo[0].tema[0].questao.add(new Likert(
        "Existe fornecimento de energia elétrica em sua residência ou outra forma de geração de energia?"));
    dataEixo[0]
        .tema[0]
        .questao
        .add(new Likert("Você dispõe de refrigerador/geladeira em sua casa?"));
    dataEixo[0]
        .tema[0]
        .questao
        .add(new Likert("Há áreas verdes no entorno de sua casa?"));
    dataEixo[0].tema[0].questao.add(
        new Likert("Você possui horta e/ou árvores frutíferas em sua casa?"));
  }
}
