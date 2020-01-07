import 'package:dataquest/entrevista.dart';
import 'package:flutter/material.dart';
import 'eixo.dart';
import 'likert.dart';
import 'tema.dart';

class Content {
  
  static Entrevista entrevista;
//questionarios
  static void build() {
    print("A ENTREVISTA FOI CONSTRUIDA!");
    reset();
    entrevista.eixo = <Eixo>[
      new Eixo(1,"EIXO: SUSTENTABILIDADES E BOM VIVER"),
      new Eixo(2,"EIXO: RAZÕES HUMANAS"),
      new Eixo(3,"EIXO: CONSEQUÊNCIAS AMBIENTAIS")
    ];
    buildQuest1();
    buildQuest2();
    buildQuest3();
  }

  Content(){
    print("CONTENT CONSTRUCTOR!");
    build();
  }

  static void reset(){
    print("A ENTREVISTA FOI RESETADA!");
    entrevista = new Entrevista();
  }

  static void buildQuest1() {
    //CONSTRUINDO O QUESTIONÁRIO
    //EIXO1
    //TEMA 0
    entrevista.eixo[0].tema.add(new Tema("QUALIDADE DA MORADIA", cor: Colors.green));
    // 10 PERGUNTAS
    entrevista.eixo[0]
        .tema[0]
        .questao
        .add(new Likert("A estrutura de sua casa é segura?"));
    entrevista.eixo[0]
        .tema[0]
        .questao
        .add(new Likert("A sua moradia é arejada e iluminada?"));
    entrevista.eixo[0].tema[0].questao.add(new Likert(
        "A quantidade de cômodos em sua moradia é suficiente para sua família?"));
    entrevista.eixo[0].tema[0].questao.add(new Likert(
        "Os espaços em sua moradia acomodam confortavelmente todos os que moram nela?"));
    entrevista.eixo[0].tema[0].questao.add(
        new Likert("O banheiro de sua moradia tem tratamento dos dejetos?"));
    entrevista.eixo[0]
        .tema[0]
        .questao
        .add(new Likert("Você faz coleta seletiva de seu lixo?"));
    entrevista.eixo[0].tema[0].questao.add(new Likert(
        "Existe fornecimento de energia elétrica em sua residência ou outra forma de geração de energia?"));
    entrevista.eixo[0]
        .tema[0]
        .questao
        .add(new Likert("Você dispõe de refrigerador/geladeira em sua casa?"));
    entrevista.eixo[0]
        .tema[0]
        .questao
        .add(new Likert("Há áreas verdes no entorno de sua casa?"));
    entrevista.eixo[0].tema[0].questao.add(
        new Likert("Você possui horta e/ou árvores frutíferas em sua casa?"));
    //TEMA 1
    entrevista.eixo[0].tema.add(
        new Tema("GESTÃO AMBIENTAL E PATRIMONIAL", cor: Colors.purple));
    // 10 PERGUNTAS
    entrevista.eixo[0].tema[1].questao.add(new Likert(
        "Existe algum planejamento na comunidade para uso do território?"));
    entrevista.eixo[0].tema[1].questao.add(new Likert(
        "Existe alguma iniciativa do governo em relação à fiscalização patrimonial e ambiental?"));
    entrevista.eixo[0].tema[1].questao.add(new Likert(
        "Você utiliza a natureza de seu território de forma a respeitar os limites de uso?"));
    entrevista.eixo[0].tema[1].questao.add(new Likert(
        "Você guarda objetos e outras lembranças dos parentes antigos?"));
    entrevista.eixo[0].tema[1].questao.add(new Likert(
        "Você respeita os lugares em que existe proibição de uso e circulação?"));
    entrevista.eixo[0].tema[1].questao.add(new Likert(
        "Existe no território de sua comunidade vestígios de outros povos que aqui habitaram?"));
    entrevista.eixo[0].tema[1].questao.add(new Likert(
        "Existe fiscalização dos impactos ambientais e patrimoniais pela comunidade?"));
    entrevista.eixo[0].tema[1].questao.add(new Likert(
        "A comunidade provoca impactos ambientais e patrimoniais em seu território?"));
    entrevista.eixo[0]
        .tema[1]
        .questao
        .add(new Likert("Na escola da comunidade existe educação ambiental?"));
    entrevista.eixo[0].tema[1].questao.add(
        new Likert("Na escola da comunidade existe educação patrimonial?"));
    //TEMA 2
    entrevista.eixo[0].tema.add(new Tema("ECONOMIA CIRCULAR", cor: Colors.orange));
    // 10 PERGUNTAS
    entrevista.eixo[0].tema[2].questao.add(new Likert(
        "Você acredita que a área de mata é suficiente para comunidade?"));
    entrevista.eixo[0].tema[2].questao.add(new Likert(
        "Você acredita que a área de plantações e roças na comunidade deve ser aumentada?"));
    entrevista.eixo[0].tema[2].questao.add(new Likert(
        "Você utiliza apenas a quantidade necessária de produtos no seu cotidiano (limpeza, alimentação, etc.)?"));
    entrevista.eixo[0].tema[2].questao.add(new Likert(
        "Você tem mais de um exemplar de um mesmo produto/equipamento em seu trabalho ou em sua casa?"));
    entrevista.eixo[0].tema[2].questao.add(new Likert(
        "Você divide o uso de equipamentos/instrumento com outras pessoas em sua comunidade/trabalho?"));
    entrevista.eixo[0].tema[2].questao.add(new Likert(
        "Você utiliza um equipamento/instrumento até o fim de sua vida útil?"));
    entrevista.eixo[0].tema[2].questao.add(new Likert(
        "Você reaproveita as peças e as embalagens de produtos/equipamentos que você compra (reuso/reciclagem)?"));
    entrevista.eixo[0].tema[2].questao.add(new Likert(
        "Você repara/recondiciona os produtos/equipamentos que estão com problemas?"));
    entrevista.eixo[0].tema[2].questao.add(new Likert(
        "Você revende ou doa os produtos/equipamentos que não quer mais?"));
    entrevista.eixo[0]
        .tema[2]
        .questao
        .add(new Likert("Você faz compostagem dos restos orgânicos?"));
    //TEMA 3
    entrevista.eixo[0].tema.add(new Tema("DESENVOLVIMENTO LOCAL", cor: Colors.pink));
    // 10 PERGUNTAS
    entrevista.eixo[0]
        .tema[3]
        .questao
        .add(new Likert("Existem ações de combate à fome na comunidade?"));
    entrevista.eixo[0].tema[3].questao.add(new Likert(
        "Existe ações institucionais de formação profissional na comunidade?"));
    entrevista.eixo[0].tema[3].questao.add(
        new Likert("Existem políticas públicas que beneficiem a comunidade?"));
    entrevista.eixo[0]
        .tema[3]
        .questao
        .add(new Likert("A comunidade produz artesanato próprio?"));
    entrevista.eixo[0]
        .tema[3]
        .questao
        .add(new Likert("Existem ONG’s atuando na comunidade?"));
    entrevista.eixo[0].tema[3].questao.add(new Likert(
        "A universidade auxilia a comunidade na solução de seus problemas sociais e ambientais?"));
    entrevista.eixo[0].tema[3].questao.add(new Likert(
        "A comunidade desenvolve algum produto/técnica que a beneficie?"));
    entrevista.eixo[0].tema[3].questao.add(new Likert(
        "A comunidade desenvolve atividades relacionadas ao turismo?"));
    entrevista.eixo[0].tema[3].questao.add(new Likert(
        "Existe planejamento participativo entre a comunidade e as diversas instituições atuantes no lugar?"));
    entrevista.eixo[0].tema[3].questao.add(new Likert(
        "Existem informações e levantamentos de dados sobre a comunidade?"));
    //TEMA 4
    entrevista.eixo[0].tema.add(
        new Tema("INOVAÇÃO E USO DO PATRIMÔNIO", cor: Colors.teal));
    // 10 PERGUNTAS
    entrevista.eixo[0].tema[4].questao.add(new Likert(
        "Para resolver alguns problemas cotidianos você usa a sabedoria dos antigos (idosos, parentes, tradição oral)?"));
    entrevista.eixo[0].tema[4].questao.add(new Likert(
        "Você conhece a história das pessoas e lugares de sua comunidade?"));
    entrevista.eixo[0].tema[4].questao.add(new Likert(
        "Você cuida dos espaços públicos mais antigos de sua comunidade?"));
    entrevista.eixo[0].tema[4].questao.add(new Likert(
        "Você aceita os conselhos dos mais velhos para resolver seus problemas?"));
    entrevista.eixo[0].tema[4].questao.add(new Likert(
        "Você procura renovar os conhecimentos antigos de sua comunidade?"));
    entrevista.eixo[0].tema[4].questao.add(new Likert(
        "Você se inspira na forma dos animais e vegetais para criar soluções aos problemas da comunidade?"));
    entrevista.eixo[0].tema[4].questao.add(new Likert(
        "Você utiliza os movimentos e os ciclos da natureza em sua vida cotidiana?"));
    entrevista.eixo[0].tema[4].questao.add(new Likert(
        "Você tem plantas e raízes tradicionais para seu uso doméstico (alimentação, saúde)?"));
    entrevista.eixo[0].tema[4].questao.add(new Likert(
        "Você procura utilizar a água da chuva e águas servidas para uso  doméstico?"));
    entrevista.eixo[0].tema[4].questao.add(new Likert(
        "Você aproveita a energia do sol/a luz solar para facilitar os trabalhos do dia a dia?"));
    //TEMA 5
    entrevista.eixo[0].tema.add(new Tema("BOM VIVER", cor: Colors.red));
    // 10 PERGUNTAS
    entrevista.eixo[0].tema[5].questao.add(new Likert(
        "Você realiza atividades coletivas ou mutirão com seus vizinhos para a solução de problemas da comunidade?"));
    entrevista.eixo[0].tema[5].questao.add(new Likert(
        "Você compartilha um bem seu ou de outra pessoa para uso coletivo?"));
    entrevista.eixo[0].tema[5].questao.add(new Likert(
        "A colaboração entre pessoas pode ser um caminho para a sustentabilidade da comunidade e da natureza?"));
    entrevista.eixo[0].tema[5].questao.add(new Likert(
        "Você acredita que o moderno pode viver em equilíbrio com o antigo?"));
    entrevista.eixo[0].tema[5].questao.add(new Likert(
        "Você acredita que todas as coisas e os seres do mundo têm a mesma importância, sejam humanos ou não humanos?"));
    entrevista.eixo[0].tema[5].questao.add(new Likert(
        "Você se considera uma pessoa solidária para com as dificuldades alheias?"));
    entrevista.eixo[0].tema[5].questao.add(new Likert(
        "A acumulação de bens é uma forma de sermos importantes na sociedade em que vivemos?"));
    entrevista.eixo[0].tema[5].questao.add(
        new Likert("Comprar e consumir produtos à venda traz felicidade?"));
    entrevista.eixo[0]
        .tema[5]
        .questao
        .add(new Likert("Você se sente bem vivendo na sua comunidade?"));
    entrevista.eixo[0].tema[5].questao.add(new Likert(
        "Na sua comunidade tem tudo que você precisa para viver bem?"));
    //NOVO EIXO
    //EIXO2
  }
  static void buildQuest2() {
    //TEMA 0
    entrevista.eixo[1].tema.add(new Tema("EDUCAÇÃO", cor: Colors.green));
    // 10 PERGUNTAS
    entrevista.eixo[1]
        .tema[0]
        .questao
        .add(new Likert("A educação escolar na comunidade é satisfatória?"));
    entrevista.eixo[1]
        .tema[0]
        .questao
        .add(new Likert("O que é ensinado serve para a comunidade?"));
    entrevista.eixo[1]
        .tema[0]
        .questao
        .add(new Likert("A escola aproveita os conhecimentos da comunidade?"));
    entrevista.eixo[1].tema[0].questao.add(new Likert(
        "A escola atende a todos os indivíduos em idade escolar a partir de 6 anos)?"));
    entrevista.eixo[1].tema[0].questao.add(new Likert(
        "Os alunos entendem/aprendem bem o que os professores ensinam?"));
    entrevista.eixo[1].tema[0].questao.add(new Likert(
        "Os estudantes tem a assistência escolar (infraestrutura escolar) da qual necessitam?"));
    entrevista.eixo[1].tema[0].questao.add(new Likert(
        "Os estudantes são incentivados, na escola, para a tolerância e a solidariedade?"));
    entrevista.eixo[1].tema[0].questao.add(new Likert(
        "São utilizados recursos tecnológicos e Internet nas aulas?"));
    entrevista.eixo[1]
        .tema[0]
        .questao
        .add(new Likert("A comunidade participa da gestão da escola?"));
    entrevista.eixo[1].tema[0].questao.add(new Likert(
        "A escola (alunos/professores) participa de eventos em outros lugares?"));
    //TEMA 1
    entrevista.eixo[1].tema.add(new Tema("SEGURANÇA E TOLERÂNCIA", cor: Colors.purple));
    // 10 PERGUNTAS
    entrevista.eixo[1]
        .tema[1]
        .questao
        .add(new Likert("Você se sente seguro (a) em sua comunidade?"));
    entrevista.eixo[1].tema[1].questao.add(new Likert(
        "A polícia/segurança comunitária garante proteção à comunidade?"));
    entrevista.eixo[1]
        .tema[1]
        .questao
        .add(new Likert("Há presença de tráfico de drogas na comunidade?"));
    entrevista.eixo[1]
        .tema[1]
        .questao
        .add(new Likert("As instituições de Estado garantem seus direitos?"));
    entrevista.eixo[1]
        .tema[1]
        .questao
        .add(new Likert("Há casos de disputa por terras na comunidade?"));
    entrevista.eixo[1].tema[1].questao.add(new Likert(
        "Os jovens se envolvem em conflitos e brigas na comunidade?"));
    entrevista.eixo[1]
        .tema[1]
        .questao
        .add(new Likert("Você presencia brigas em sua família/comunidade?"));
    entrevista.eixo[1]
        .tema[1]
        .questao
        .add(new Likert("Você costuma respeitar a opinião de outras pessoas?"));
    entrevista.eixo[1]
        .tema[1]
        .questao
        .add(new Likert("Existe respeito pelas pessoas idosas na comunidade?"));
    entrevista.eixo[1].tema[1].questao.add(
        new Likert("As pessoas usam seus pertences sem pedirem autorização?"));
    //TEMA 2
    entrevista.eixo[1].tema.add(new Tema("SAÚDE E ALIMENTAÇÃO", cor: Colors.orange));
    // 10 PERGUNTAS
    entrevista.eixo[1].tema[2].questao.add(new Likert("Você come bem todos os dias?"));
    entrevista.eixo[1].tema[2].questao.add(new Likert(
        "A quantidade e a variedade de alimentos que você consome diariamente são satisfatórias?"));
    entrevista.eixo[1]
        .tema[2]
        .questao
        .add(new Likert("Os alimentos consumidos por sua família são bons?"));
    entrevista.eixo[1]
        .tema[2]
        .questao
        .add(new Likert("Os membros de sua família adoecem com frequência?"));
    entrevista.eixo[1]
        .tema[2]
        .questao
        .add(new Likert("As pessoas em sua comunidade chegam aos 70 anos? "));
    entrevista.eixo[1].tema[2].questao.add(new Likert(
        "Você tem facilidade em conseguir as medicações/remédios caseiros necessários?"));
    entrevista.eixo[1].tema[2].questao.add(
        new Likert("Sua família tem fácil acesso ao atendimento em saúde?"));
    entrevista.eixo[1].tema[2].questao.add(new Likert(
        "Os Agentes  Comunitários de Saúde atuam satisfatoriamente em sua comunidade?"));
    entrevista.eixo[1].tema[2].questao.add(new Likert(
        "Há facilidade em realizar tratamento de saúde em sua comunidade?"));
    entrevista.eixo[1].tema[2].questao.add(new Likert(
        "Você acredita que as instituições de Estado garantem saúde de qualidade?"));
    //TEMA 3
    entrevista.eixo[1].tema.add(new Tema("COMUNIDADE", cor: Colors.pink));
    // 10 PERGUNTAS
    entrevista.eixo[1].tema[3].questao.add(new Likert(
        "Existe uma boa organização das moradias e de outros espaços em sua comunidade?"));
    entrevista.eixo[1].tema[3].questao.add(new Likert(
        "Você considera que o terreno de sua moradia é suficiente comparado ao dos seus vizinhos?"));
    entrevista.eixo[1].tema[3].questao.add(new Likert(
        "Você divide frequentemente bens e espaços com as demais pessoas da comunidade?"));
    entrevista.eixo[1]
        .tema[3]
        .questao
        .add(new Likert("Existe abastecimento de água para a comunidade?"));
    entrevista.eixo[1].tema[3].questao.add(
        new Likert("Existe fornecimento de energia elétrica na comunidade?"));
    entrevista.eixo[1]
        .tema[3]
        .questao
        .add(new Likert("A frequência da coleta do lixo é adequada?"));
    entrevista.eixo[1].tema[3].questao.add(
        new Likert("A comunidade dispõe de sistema de tratamento de esgoto?"));
    entrevista.eixo[1]
        .tema[3]
        .questao
        .add(new Likert("Você considera que a comunidade é bem cuidada?"));
    entrevista.eixo[1].tema[3].questao.add(new Likert(
        "Há frequentemente atividades coletivas em sua comunidade?"));
    entrevista.eixo[1]
        .tema[3]
        .questao
        .add(new Likert("Você tem tudo o que é necessário para se viver bem?"));
    //TEMA 4
    entrevista.eixo[1].tema.add(
        new Tema("TRABALHO/OCUPAÇÃO, RENDA E CONSUMO", cor: Colors.teal));
    // 10 PERGUNTAS
    entrevista.eixo[1].tema[4].questao.add(new Likert(
        "O dinheiro que sua família ganha é o bastante para comprar o que necessita?"));
    entrevista.eixo[1].tema[4].questao.add(new Likert(
        "Você paga por tudo o que é necessário à sua subsistência?"));
    entrevista.eixo[1]
        .tema[4]
        .questao
        .add(new Likert("Você compra tudo o que os vendedores lhe oferecem?"));
    entrevista.eixo[1]
        .tema[4]
        .questao
        .add(new Likert("Seu trabalho/ocupação prejudica o ambiente?"));
    entrevista.eixo[1].tema[4].questao.add(
        new Likert("Você considera que seu trabalho/ocupação é perigoso?"));
    entrevista.eixo[1].tema[4].questao.add(new Likert(
        "Sua relação com o empregador/intermediário de seu trabalho é satisfatória?"));
    entrevista.eixo[1].tema[4].questao.add(new Likert(
        "Existem brigas e conflitos entre os companheiros de trabalho/ocupação?"));
    entrevista.eixo[1].tema[4].questao.add(new Likert(
        "A sua família trabalha com atividades relacionadas ao turismo?"));
    entrevista.eixo[1].tema[4].questao.add(new Likert(
        "A comunidade reconhece a importância de seu trabalho/ocupação?"));
    entrevista.eixo[1]
        .tema[4]
        .questao
        .add(new Likert("Seu trabalho só pode ser realizado coletivamente?"));
    //TEMA 5
    entrevista.eixo[1].tema.add(
        new Tema("COMUNICAÇÃO E INTERAÇÃO SOCIAL", cor: Colors.red));
    // 10 PERGUNTAS
    entrevista.eixo[1].tema[5].questao.add(new Likert(
        "Você tem acesso à Internet/redes sociais em sua comunidade?"));
    entrevista.eixo[1]
        .tema[5]
        .questao
        .add(new Likert("Você assiste televisão todos os dias?"));
    entrevista.eixo[1].tema[5].questao.add(new Likert("Você ouve rádio todos os dias?"));
    entrevista.eixo[1].tema[5].questao.add(new Likert(
        "Você sabe das notícias do restante do Brasil com frequência?"));
    entrevista.eixo[1].tema[5].questao.add(new Likert(
        "Você acredita em todas as notícias que recebe pelos meios de comunicação?"));
    entrevista.eixo[1].tema[5].questao.add(new Likert(
        "Sua comunidade produz e divulga notícias audiovisuais próprias,  divulgando informações sobre suas atividades e reivindicações?"));
    entrevista.eixo[1].tema[5].questao.add(new Likert(
        "A qualidade do sinal de telefonia celular permite uma boa comunicação?"));
    entrevista.eixo[1].tema[5].questao.add(new Likert(
        "Você tem facilidade de transporte para fora de sua comunidade?"));
    entrevista.eixo[1].tema[5].questao.add(new Likert(
        "Você se incomoda com a imagem da sua comunidade apresentada nos meios de comunicação e pessoas de fora?"));
    entrevista.eixo[1].tema[5].questao.add(new Likert(
        "Você é influenciado em suas escolhas por pessoas de seu convívio social?"));
  }
  static void buildQuest3() {
    //TEMA 0
    entrevista.eixo[2].tema.add(new Tema("BIOINDICADORES", cor: Colors.green));
    // 10 PERGUNTAS
    entrevista.eixo[2].tema[0].questao.add(new Likert(
        "Você tem observado alteração na quantidade de algum animal ou inseto?"));
    entrevista.eixo[2].tema[0].questao.add(new Likert(
        "Você tem observado alteração na quantidade de algum vegetal ou planta?"));
    entrevista.eixo[2].tema[0].questao.add(new Likert(
        "O crescimento de plantas e animais tem sido normal na comunidade?"));
    entrevista.eixo[2].tema[0].questao.add(
        new Likert("A qualidade e a quantidade do pescado se mantém estável?"));
    entrevista.eixo[2].tema[0].questao.add(new Likert(
        "Os bandos de aves tem desaparecido com o passar dos anos?"));
    entrevista.eixo[2].tema[0].questao.add(new Likert(
        "As chuvas e tempestades sofreram alteração nos últimos anos?"));
    entrevista.eixo[2].tema[0].questao.add(new Likert(
        "O clima/temperatura, na comunidade, mudou nos últimos anos?"));
    entrevista.eixo[2].tema[0].questao.add(new Likert(
        "Existem árvores, em sua comunidade, que tem mais de 30 anos?"));
    entrevista.eixo[2].tema[0].questao.add(new Likert(
        "Houve o aumento de lodo, algas, fungos ou mofos na sua comunidade?"));
    entrevista.eixo[2].tema[0].questao.add(new Likert(
        "Existem muitos casos de aborto (humanos e animais) na comunidade?"));
    //TEMA 1
    entrevista.eixo[2].tema.add(new Tema("GEOINDICADORES", cor: Colors.purple));
    // 10 PERGUNTAS
    entrevista.eixo[2].tema[1].questao.add(new Likert(
        "A comunidade degrada a natureza (queimada, desmatamento, poluição)?"));
    entrevista.eixo[2].tema[1].questao.add(
        new Likert("A comunidade preserva/protege a natureza (matas, rios)?"));
    entrevista.eixo[2]
        .tema[1]
        .questao
        .add(new Likert("Existe desperdício de água na comunidade?"));
    entrevista.eixo[2]
        .tema[1]
        .questao
        .add(new Likert("A qualidade da água dos rios/mares é boa?"));
    entrevista.eixo[2]
        .tema[1]
        .questao
        .add(new Likert("O ar que você respira tem boa qualidade?"));
    entrevista.eixo[2]
        .tema[1]
        .questao
        .add(new Likert("A terra na comunidade é boa para o plantio?"));
    entrevista.eixo[2].tema[1].questao.add(new Likert("A comunidade produz muito lixo?"));
    entrevista.eixo[2]
        .tema[1]
        .questao
        .add(new Likert("As chuvas têm provocado prejuízos na comunidade?"));
    entrevista.eixo[2].tema[1].questao.add(new Likert(
        "As cheias dos rios têm sofrido alterações nos últimos anos?"));
    entrevista.eixo[2].tema[1].questao.add(new Likert(
        "As vazantes dos rios têm sofrido alterações nos últimos anos?"));
    //TEMA 2
    entrevista.eixo[2].tema.add(new Tema("SEMIÓTICA CORPORAL", cor: Colors.orange));
    // 10 PERGUNTAS
    entrevista.eixo[2]
        .tema[2]
        .questao
        .add(new Likert("Na comunidade há ocorrência de doenças intestinais?"));
    entrevista.eixo[2].tema[2].questao.add(
        new Likert("Na comunidade há ocorrência de doenças respiratórias?"));
    entrevista.eixo[2].tema[2].questao.add(
        new Likert("Na comunidade há ocorrência de doenças psicológicas?"));
    entrevista.eixo[2].tema[2].questao.add(new Likert(
        "Na comunidade há ocorrência de doenças sexualmente transmissíveis?"));
    entrevista.eixo[2].tema[2].questao.add(new Likert(
        "Na comunidade há ocorrência de doenças que diminuam a capacidade de locomoção?"));
    entrevista.eixo[2]
        .tema[2]
        .questao
        .add(new Likert("Existem pessoas com doenças crônicas na comunidade?"));
    entrevista.eixo[2]
        .tema[2]
        .questao
        .add(new Likert("Existem casos de suicídio na comunidade?"));
    entrevista.eixo[2]
        .tema[2]
        .questao
        .add(new Likert("Você considera que há obesidade na comunidade?"));
    entrevista.eixo[2]
        .tema[2]
        .questao
        .add(new Likert("A mortalidade infantil é um problema na comunidade?"));
    entrevista.eixo[2].tema[2].questao.add(new Likert(
        "Você observa a diminuição na taxa de natalidade em sua família nos últimos 5 anos?"));
    //TEMA 3
    entrevista.eixo[2].tema.add(new Tema("SEMIÓTICA AMBIENTAL", cor: Colors.pink));
    // 10 PERGUNTAS
    entrevista.eixo[2].tema[3].questao.add(new Likert(
        "O governo (federal, estadual, municipal) protege o meio ambiente da comunidade?"));
    entrevista.eixo[2].tema[3].questao.add(
        new Likert("A comunidade procura recuperar as suas áreas degradadas?"));
    entrevista.eixo[2].tema[3].questao.add(new Likert(
        "Há conflitos por motivações ambientais na sua comunidade?"));
    entrevista.eixo[2].tema[3].questao.add(new Likert(
        "A ocupação desordenada na comunidade afeta o meio ambiente?"));
    entrevista.eixo[2].tema[3].questao.add(new Likert(
        "A expansão/crescimento das cidades pode afetar o meio ambiente?"));
    entrevista.eixo[2].tema[3].questao.add(new Likert(
        "A construção de obras públicas (estradas, pontes, trapiches, cais e outros) pode ser prejudicial ao ambiente?"));
    entrevista.eixo[2]
        .tema[3]
        .questao
        .add(new Likert("A produção econômica afeta o meio ambiente?"));
    entrevista.eixo[2].tema[3].questao.add(
        new Likert("Você observa que houve aumento de desastres naturais?"));
    entrevista.eixo[2]
        .tema[3]
        .questao
        .add(new Likert("Você acredita em aquecimento global?"));
    entrevista.eixo[2].tema[3].questao.add(
        new Likert("Os problemas ambientais são permanentes e irreversíveis?"));
    //TEMA 4
    entrevista.eixo[2].tema.add(new Tema("ATIVIDADE ECONÔMICA", cor: Colors.teal));
    // 10 PERUNTAS
    entrevista.eixo[2].tema[4].questao.add(new Likert(
        "Sua família usa produtos (cascas, ervas, plantas, raízes) retirados da floresta/mata/mangue?"));
    entrevista.eixo[2]
        .tema[4]
        .questao
        .add(new Likert("Sua família pesca para subsistência?"));
    entrevista.eixo[2]
        .tema[4]
        .questao
        .add(new Likert("Sua família caça animais para subsistência?"));
    entrevista.eixo[2]
        .tema[4]
        .questao
        .add(new Likert("Sua família cria animais para subsistência?"));
    entrevista.eixo[2]
        .tema[4]
        .questao
        .add(new Likert("Sua família planta para subsistência?"));
    entrevista.eixo[2]
        .tema[4]
        .questao
        .add(new Likert("Sua família extrai madeira para subsistência?"));
    entrevista.eixo[2].tema[4].questao.add(new Likert(
        "Sua família explora minerais (pedras, areias, piçarra, garimpo)?"));
    entrevista.eixo[2].tema[4].questao.add(new Likert(
        "Sua família recebe benefícios sociais (bolsa família, bolsa floresta, defeso e outros)?"));
    entrevista.eixo[2].tema[4].questao.add(
        new Likert("Sua família sobrevive de atividade remunerada/comércio?"));
    entrevista.eixo[2].tema[4].questao.add(
        new Likert("Sua família ganha pelo menos um salário mínimo mensal?"));
    //TEMA 5
    entrevista.eixo[2].tema.add(
        new Tema("CIDADANIA E RELAÇÕES DE PODER", cor: Colors.red));
    // 10 PEUNTAS
    entrevista.eixo[2]
        .tema[5]
        .questao
        .add(new Likert("Há prática de trabalho infantil na comunidade?"));
    entrevista.eixo[2]
        .tema[5]
        .questao
        .add(new Likert("Há casos de crianças/jovens que abandonam a escola?"));
    entrevista.eixo[2].tema[5].questao.add(new Likert(
        "Há casos de pedofilia/exploração sexual na comunidade? Há casos de trabalho escravo na comunidade?"));
    entrevista.eixo[2]
        .tema[5]
        .questao
        .add(new Likert("Há casos de trabalho escravo na comunidade?"));
    entrevista.eixo[2].tema[5].questao.add(
        new Likert("Há pessoas analfabetas/semi-analfabetas na comunidade?"));
    entrevista.eixo[2].tema[5].questao.add(new Likert(
        "Há casos de ameaça de violência a lideranças e agentes públicos na comunidade?"));
    entrevista.eixo[2].tema[5].questao.add(
        new Likert("Os idosos têm acesso ao sistema público de previdência?"));
    entrevista.eixo[2].tema[5].questao.add(new Likert(
        "A comunidade participa nas ações promovidas por associações ou organizações semelhantes?"));
    entrevista.eixo[2].tema[5].questao.add(new Likert(
        "Há casos de discriminação de gênero (mulheres, LGBTQ e outros) na comunidade?"));
    entrevista.eixo[2].tema[5].questao.add(
        new Likert("Há casos de preconceito étnico-racial na comunidade?"));
  }

}
