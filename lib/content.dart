import 'questionario.dart';
import 'tema.dart';
import 'likert.dart';

class Content {
//questionarios
  List<Questionario> eixo = <Questionario>[
    new Questionario(),
    new Questionario(),
    new Questionario()
  ];

  Content() {
    buildQuest1();
    buildQuest2();
    buildQuest3();
  }

  void buildQuest1() {
    //CONSTRUINDO O QUESTIONÁRIO
    //EIXO1
    eixo[0].start();
    eixo[0].eixo = "EIXO: SUSTENTABILIDADES E BOM VIVER";
    //TEMA 0
    eixo[0].tema.add(new Tema("QUALIDADE DA MORADIA"));
    // 10 PERGUNTAS
    eixo[0]
        .tema[0]
        .questao
        .add(new Likert("A estrutura de sua casa é segura?"));
    eixo[0]
        .tema[0]
        .questao
        .add(new Likert("A sua moradia é arejada e iluminada?"));
    eixo[0].tema[0].questao.add(new Likert(
        "A quantidade de cômodos em sua moradia é suficiente para sua família?"));
    eixo[0].tema[0].questao.add(new Likert(
        "Os espaços em sua moradia acomodam confortavelmente todos os que moram nela?"));
    eixo[0].tema[0].questao.add(
        new Likert("O banheiro de sua moradia tem tratamento dos dejetos?"));
    eixo[0]
        .tema[0]
        .questao
        .add(new Likert("Você faz coleta seletiva de seu lixo?"));
    eixo[0].tema[0].questao.add(new Likert(
        "Existe fornecimento de energia elétrica em sua residência ou outra forma de geração de energia?"));
    eixo[0]
        .tema[0]
        .questao
        .add(new Likert("Você dispõe de refrigerador/geladeira em sua casa?"));
    eixo[0]
        .tema[0]
        .questao
        .add(new Likert("Há áreas verdes no entorno de sua casa?"));
    eixo[0].tema[0].questao.add(
        new Likert("Você possui horta e/ou árvores frutíferas em sua casa?"));
    //TEMA 1
    eixo[0].tema.add(new Tema("GESTÃO AMBIENTAL E PATRIMONIAL"));
    // 10 PERGUNTAS
    eixo[0].tema[1].questao.add(new Likert(
        "Existe algum planejamento na comunidade para uso do território?"));
    eixo[0].tema[1].questao.add(new Likert(
        "Existe alguma iniciativa do governo em relação à fiscalização patrimonial e ambiental?"));
    eixo[0].tema[1].questao.add(new Likert(
        "Você utiliza a natureza de seu território de forma a respeitar os limites de uso?"));
    eixo[0].tema[1].questao.add(new Likert(
        "Você guarda objetos e outras lembranças dos parentes antigos?"));
    eixo[0].tema[1].questao.add(new Likert(
        "Você respeita os lugares em que existe proibição de uso e circulação?"));
    eixo[0].tema[1].questao.add(new Likert(
        "Existe no território de sua comunidade vestígios de outros povos que aqui habitaram?"));
    eixo[0].tema[1].questao.add(new Likert(
        "Existe fiscalização dos impactos ambientais e patrimoniais pela comunidade?"));
    eixo[0].tema[1].questao.add(new Likert(
        "A comunidade provoca impactos ambientais e patrimoniais em seu território?"));
    eixo[0]
        .tema[1]
        .questao
        .add(new Likert("Na escola da comunidade existe educação ambiental?"));
    eixo[0].tema[1].questao.add(
        new Likert("Na escola da comunidade existe educação patrimonial?"));
    //TEMA 2
    eixo[0].tema.add(new Tema("ECONOMIA CIRCULAR"));
    // 10 PERGUNTAS
    eixo[0].tema[2].questao.add(new Likert(
        "Você acredita que a área de mata é suficiente para comunidade?"));
    eixo[0].tema[2].questao.add(new Likert(
        "Você acredita que a área de plantações e roças na comunidade deve ser aumentada?"));
    eixo[0].tema[2].questao.add(new Likert(
        "Você utiliza apenas a quantidade necessária de produtos no seu cotidiano (limpeza, alimentação, etc.)?"));
    eixo[0].tema[2].questao.add(new Likert(
        "Você tem mais de um exemplar de um mesmo produto/equipamento em seu trabalho ou em sua casa?"));
    eixo[0].tema[2].questao.add(new Likert(
        "Você divide o uso de equipamentos/instrumento com outras pessoas em sua comunidade/trabalho?"));
    eixo[0].tema[2].questao.add(new Likert(
        "Você utiliza um equipamento/instrumento até o fim de sua vida útil?"));
    eixo[0].tema[2].questao.add(new Likert(
        "Você reaproveita as peças e as embalagens de produtos/equipamentos que você compra (reuso/reciclagem)?"));
    eixo[0].tema[2].questao.add(new Likert(
        "Você repara/recondiciona os produtos/equipamentos que estão com problemas?"));
    eixo[0].tema[2].questao.add(new Likert(
        "Você revende ou doa os produtos/equipamentos que não quer mais?"));
    eixo[0]
        .tema[2]
        .questao
        .add(new Likert("Você faz compostagem dos restos orgânicos?"));
    //TEMA 3
    eixo[0].tema.add(new Tema("DESENVOLVIMENTO LOCAL"));
    // 10 PERGUNTAS
    eixo[0]
        .tema[3]
        .questao
        .add(new Likert("Existem ações de combate à fome na comunidade?"));
    eixo[0].tema[3].questao.add(new Likert(
        "Existe ações institucionais de formação profissional na comunidade?"));
    eixo[0].tema[3].questao.add(
        new Likert("Existem políticas públicas que beneficiem a comunidade?"));
    eixo[0]
        .tema[3]
        .questao
        .add(new Likert("A comunidade produz artesanato próprio?"));
    eixo[0]
        .tema[3]
        .questao
        .add(new Likert("Existem ONG’s atuando na comunidade?"));
    eixo[0].tema[3].questao.add(new Likert(
        "A universidade auxilia a comunidade na solução de seus problemas sociais e ambientais?"));
    eixo[0].tema[3].questao.add(new Likert(
        "A comunidade desenvolve algum produto/técnica que a beneficie?"));
    eixo[0].tema[3].questao.add(new Likert(
        "A comunidade desenvolve atividades relacionadas ao turismo?"));
    eixo[0].tema[3].questao.add(new Likert(
        "Existe planejamento participativo entre a comunidade e as diversas instituições atuantes no lugar?"));
    eixo[0].tema[3].questao.add(new Likert(
        "Existem informações e levantamentos de dados sobre a comunidade?"));
    //TEMA 4
    eixo[0].tema.add(new Tema("INOVAÇÃO E USO DO PATRIMÔNIO"));
    // 10 PERGUNTAS
    eixo[0].tema[4].questao.add(new Likert(
        "Para resolver alguns problemas cotidianos você usa a sabedoria dos antigos (idosos, parentes, tradição oral)?"));
    eixo[0].tema[4].questao.add(new Likert(
        "Você conhece a história das pessoas e lugares de sua comunidade?"));
    eixo[0].tema[4].questao.add(new Likert(
        "Você cuida dos espaços públicos mais antigos de sua comunidade?"));
    eixo[0].tema[4].questao.add(new Likert(
        "Você aceita os conselhos dos mais velhos para resolver seus problemas?"));
    eixo[0].tema[4].questao.add(new Likert(
        "Você procura renovar os conhecimentos antigos de sua comunidade?"));
    eixo[0].tema[4].questao.add(new Likert(
        "Você se inspira na forma dos animais e vegetais para criar soluções aos problemas da comunidade?"));
    eixo[0].tema[4].questao.add(new Likert(
        "Você utiliza os movimentos e os ciclos da natureza em sua vida cotidiana?"));
    eixo[0].tema[4].questao.add(new Likert(
        "Você tem plantas e raízes tradicionais para seu uso doméstico (alimentação, saúde)?"));
    eixo[0].tema[4].questao.add(new Likert(
        "Você procura utilizar a água da chuva e águas servidas para uso  doméstico?"));
    eixo[0].tema[4].questao.add(new Likert(
        "Você aproveita a energia do sol/a luz solar para facilitar os trabalhos do dia a dia?"));
    //TEMA 5
    eixo[0].tema.add(new Tema("BOM VIVER"));
    // 10 PERGUNTAS
    eixo[0].tema[5].questao.add(new Likert(
        "Você realiza atividades coletivas ou mutirão com seus vizinhos para a solução de problemas da comunidade?"));
    eixo[0].tema[5].questao.add(new Likert(
        "Você compartilha um bem seu ou de outra pessoa para uso coletivo?"));
    eixo[0].tema[5].questao.add(new Likert(
        "A colaboração entre pessoas pode ser um caminho para a sustentabilidade da comunidade e da natureza?"));
    eixo[0].tema[5].questao.add(new Likert(
        "Você acredita que o moderno pode viver em equilíbrio com o antigo?"));
    eixo[0].tema[5].questao.add(new Likert(
        "Você acredita que todas as coisas e os seres do mundo têm a mesma importância, sejam humanos ou não humanos?"));
    eixo[0].tema[5].questao.add(new Likert(
        "Você se considera uma pessoa solidária para com as dificuldades alheias?"));
    eixo[0].tema[5].questao.add(new Likert(
        "A acumulação de bens é uma forma de sermos importantes na sociedade em que vivemos?"));
    eixo[0].tema[5].questao.add(
        new Likert("Comprar e consumir produtos à venda traz felicidade?"));
    eixo[0]
        .tema[5]
        .questao
        .add(new Likert("Você se sente bem vivendo na sua comunidade?"));
    eixo[0].tema[5].questao.add(new Likert(
        "Na sua comunidade tem tudo que você precisa para viver bem?"));
  }
  void buildQuest2(){
    //NOVO EIXO
    //EIXO 3
    eixo[1].start();
    eixo[1].eixo = "EIXO: CONSEQUÊNCIAS AMBIENTAIS";
    //TEMA 0
    eixo[1].tema.add(new Tema("BIOINDICADORES"));
    // 10 PERGUNTAS
    eixo[1].tema[0].questao.add(new Likert(
        "Você tem observado alteração na quantidade de algum animal ou inseto?"));
    eixo[1].tema[0].questao.add(new Likert(
        "Você tem observado alteração na quantidade de algum vegetal ou planta?"));
    eixo[1].tema[0].questao.add(new Likert(
        "O crescimento de plantas e animais tem sido normal na comunidade?"));
    eixo[1].tema[0].questao.add(
        new Likert("A qualidade e a quantidade do pescado se mantém estável?"));
    eixo[1].tema[0].questao.add(new Likert(
        "Os bandos de aves tem desaparecido com o passar dos anos?"));
    eixo[1].tema[0].questao.add(new Likert(
        "As chuvas e tempestades sofreram alteração nos últimos anos?"));
    eixo[1].tema[0].questao.add(new Likert(
        "O clima/temperatura, na comunidade, mudou nos últimos anos?"));
    eixo[1].tema[0].questao.add(new Likert(
        "Existem árvores, em sua comunidade, que tem mais de 30 anos?"));
    eixo[1].tema[0].questao.add(new Likert(
        "Houve o aumento de lodo, algas, fungos ou mofos na sua comunidade?"));
    eixo[1].tema[0].questao.add(new Likert(
        "Existem muitos casos de aborto (humanos e animais) na comunidade?"));
    //TEMA 1
    eixo[1].tema.add(new Tema("GEOINDICADORES"));
    // 10 PERGUNTAS
    eixo[1].tema[1].questao.add(new Likert(
        "A comunidade degrada a natureza (queimada, desmatamento, poluição)?"));
    eixo[1].tema[1].questao.add(
        new Likert("A comunidade preserva/protege a natureza (matas, rios)?"));
    eixo[1]
        .tema[1]
        .questao
        .add(new Likert("Existe desperdício de água na comunidade?"));
    eixo[1]
        .tema[1]
        .questao
        .add(new Likert("A qualidade da água dos rios/mares é boa?"));
    eixo[1]
        .tema[1]
        .questao
        .add(new Likert("O ar que você respira tem boa qualidade?"));
    eixo[1]
        .tema[1]
        .questao
        .add(new Likert("A terra na comunidade é boa para o plantio?"));
    eixo[1]
        .tema[1]
        .questao
        .add(new Likert("A comunidade produz muito lixo?"));
    eixo[1]
        .tema[1]
        .questao
        .add(new Likert("As chuvas têm provocado prejuízos na comunidade?"));
    eixo[1].tema[1].questao.add(new Likert(
        "As cheias dos rios têm sofrido alterações nos últimos anos?"));
    eixo[1].tema[1].questao.add(new Likert(
        "As vazantes dos rios têm sofrido alterações nos últimos anos?"));
    //TEMA 2
    eixo[1].tema.add(new Tema("SEMIÓTICA CORPORAL"));
    // 10 PERGUNTAS
    eixo[1]
        .tema[2]
        .questao
        .add(new Likert("Na comunidade há ocorrência de doenças intestinais?"));
    eixo[1].tema[2].questao.add(
        new Likert("Na comunidade há ocorrência de doenças respiratórias?"));
    eixo[1].tema[2].questao.add(
        new Likert("Na comunidade há ocorrência de doenças psicológicas?"));
    eixo[1].tema[2].questao.add(new Likert(
        "Na comunidade há ocorrência de doenças sexualmente transmissíveis?"));
    eixo[1].tema[2].questao.add(new Likert(
        "Na comunidade há ocorrência de doenças que diminuam a capacidade de locomoção?"));
    eixo[1]
        .tema[2]
        .questao
        .add(new Likert("Existem pessoas com doenças crônicas na comunidade?"));
    eixo[1]
        .tema[2]
        .questao
        .add(new Likert("Existem casos de suicídio na comunidade?"));
    eixo[1]
        .tema[2]
        .questao
        .add(new Likert("Você considera que há obesidade na comunidade?"));
    eixo[1]
        .tema[2]
        .questao
        .add(new Likert("A mortalidade infantil é um problema na comunidade?"));
    eixo[1].tema[2].questao.add(new Likert(
        "Você observa a diminuição na taxa de natalidade em sua família nos últimos 5 anos?"));
    //TEMA 3
    eixo[1].tema.add(new Tema("SEMIÓTICA AMBIENTAL"));
    // 10 PERGUNTAS
    eixo[1].tema[3].questao.add(new Likert(
        "O governo (federal, estadual, municipal) protege o meio ambiente da comunidade?"));
    eixo[1].tema[3].questao.add(
        new Likert("A comunidade procura recuperar as suas áreas degradadas?"));
    eixo[1].tema[3].questao.add(new Likert(
        "Há conflitos por motivações ambientais na sua comunidade?"));
    eixo[1].tema[3].questao.add(new Likert(
        "A ocupação desordenada na comunidade afeta o meio ambiente?"));
    eixo[1].tema[3].questao.add(new Likert(
        "A expansão/crescimento das cidades pode afetar o meio ambiente?"));
    eixo[1].tema[3].questao.add(new Likert(
        "A construção de obras públicas (estradas, pontes, trapiches, cais e outros) pode ser prejudicial ao ambiente?"));
    eixo[1]
        .tema[3]
        .questao
        .add(new Likert("A produção econômica afeta o meio ambiente?"));
    eixo[1].tema[3].questao.add(
        new Likert("Você observa que houve aumento de desastres naturais?"));
    eixo[1]
        .tema[3]
        .questao
        .add(new Likert("Você acredita em aquecimento global?"));
    eixo[1].tema[3].questao.add(
        new Likert("Os problemas ambientais são permanentes e irreversíveis?"));
    //TEMA 4
    eixo[1].tema.add(new Tema("ATIVIDADE ECONÔMICA"));
    // 10 PERUNTAS
    eixo[1].tema[4].questao.add(new Likert(
        "Sua família usa produtos (cascas, ervas, plantas, raízes) retirados da floresta/mata/mangue?"));
    eixo[1]
        .tema[4]
        .questao
        .add(new Likert("Sua família pesca para subsistência?"));
    eixo[1]
        .tema[4]
        .questao
        .add(new Likert("Sua família caça animais para subsistência?"));
    eixo[1]
        .tema[4]
        .questao
        .add(new Likert("Sua família cria animais para subsistência?"));
    eixo[1]
        .tema[4]
        .questao
        .add(new Likert("Sua família planta para subsistência?"));
    eixo[1]
        .tema[4]
        .questao
        .add(new Likert("Sua família extrai madeira para subsistência?"));
    eixo[1].tema[4].questao.add(new Likert(
        "Sua família explora minerais (pedras, areias, piçarra, garimpo)?"));
    eixo[1].tema[4].questao.add(new Likert(
        "Sua família recebe benefícios sociais (bolsa família, bolsa floresta, defeso e outros)?"));
    eixo[1].tema[4].questao.add(
        new Likert("Sua família sobrevive de atividade remunerada/comércio?"));
    eixo[1].tema[4].questao.add(
        new Likert("Sua família ganha pelo menos um salário mínimo mensal?"));
    //TEMA 5
    eixo[1].tema.add(new Tema("CIDADANIA E RELAÇÕES DE PODER"));
    // 10 PEUNTAS
    eixo[1]
        .tema[5]
        .questao
        .add(new Likert("Há prática de trabalho infantil na comunidade?"));
    eixo[1]
        .tema[5]
        .questao
        .add(new Likert("Há casos de crianças/jovens que abandonam a escola?"));
    eixo[1].tema[5].questao.add(new Likert(
        "Há casos de pedofilia/exploração sexual na comunidade? Há casos de trabalho escravo na comunidade?"));
    eixo[1]
        .tema[5]
        .questao
        .add(new Likert("Há casos de trabalho escravo na comunidade?"));
    eixo[1].tema[5].questao.add(
        new Likert("Há pessoas analfabetas/semi-analfabetas na comunidade?"));
    eixo[1].tema[5].questao.add(new Likert(
        "Há casos de ameaça de violência a lideranças e agentes públicos na comunidade?"));
    eixo[1].tema[5].questao.add(
        new Likert("Os idosos têm acesso ao sistema público de previdência?"));
    eixo[1].tema[5].questao.add(new Likert(
        "A comunidade participa nas ações promovidas por associações ou organizações semelhantes?"));
    eixo[1].tema[5].questao.add(new Likert(
        "Há casos de discriminação de gênero (mulheres, LGBTQ e outros) na comunidade?"));
    eixo[1].tema[5].questao.add(
        new Likert("Há casos de preconceito étnico-racial na comunidade?"));
  }
  void buildQuest3(){

  }
}
