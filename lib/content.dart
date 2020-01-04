import 'package:flutter/material.dart';

import 'likert.dart';
import 'questionario.dart';
import 'tema.dart';

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
    eixo[0].tema.add(new Tema("QUALIDADE DA MORADIA", cor: Colors.green));
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
    eixo[0].tema.add(
        new Tema("GESTÃO AMBIENTAL E PATRIMONIAL", cor: Colors.purple));
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
    eixo[0].tema.add(new Tema("ECONOMIA CIRCULAR", cor: Colors.orange));
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
    eixo[0].tema.add(new Tema("DESENVOLVIMENTO LOCAL", cor: Colors.pink));
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
    eixo[0].tema.add(
        new Tema("INOVAÇÃO E USO DO PATRIMÔNIO", cor: Colors.teal));
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
    eixo[0].tema.add(new Tema("BOM VIVER", cor: Colors.red));
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
    //NOVO EIXO
    //EIXO2
  }

  void buildQuest2() {
    eixo[1].start();
    eixo[1].eixo = "EIXO: RAZÕES HUMANAS";
    //TEMA 0
    eixo[1].tema.add(new Tema("EDUCAÇÃO", cor: Colors.green));
    // 10 PERGUNTAS
    eixo[1]
        .tema[0]
        .questao
        .add(new Likert("A educação escolar na comunidade é satisfatória?"));
    eixo[1]
        .tema[0]
        .questao
        .add(new Likert("O que é ensinado serve para a comunidade?"));
    eixo[1]
        .tema[0]
        .questao
        .add(new Likert("A escola aproveita os conhecimentos da comunidade?"));
    eixo[1].tema[0].questao.add(new Likert(
        "A escola atende a todos os indivíduos em idade escolar a partir de 6 anos)?"));
    eixo[1].tema[0].questao.add(new Likert(
        "Os alunos entendem/aprendem bem o que os professores ensinam?"));
    eixo[1].tema[0].questao.add(new Likert(
        "Os estudantes tem a assistência escolar (infraestrutura escolar) da qual necessitam?"));
    eixo[1].tema[0].questao.add(new Likert(
        "Os estudantes são incentivados, na escola, para a tolerância e a solidariedade?"));
    eixo[1].tema[0].questao.add(new Likert(
        "São utilizados recursos tecnológicos e Internet nas aulas?"));
    eixo[1]
        .tema[0]
        .questao
        .add(new Likert("A comunidade participa da gestão da escola?"));
    eixo[1].tema[0].questao.add(new Likert(
        "A escola (alunos/professores) participa de eventos em outros lugares?"));
    //TEMA 1
    eixo[1].tema.add(new Tema("SEGURANÇA E TOLERÂNCIA", cor: Colors.purple));
    // 10 PERGUNTAS
    eixo[1]
        .tema[1]
        .questao
        .add(new Likert("Você se sente seguro (a) em sua comunidade?"));
    eixo[1].tema[1].questao.add(new Likert(
        "A polícia/segurança comunitária garante proteção à comunidade?"));
    eixo[1]
        .tema[1]
        .questao
        .add(new Likert("Há presença de tráfico de drogas na comunidade?"));
    eixo[1]
        .tema[1]
        .questao
        .add(new Likert("As instituições de Estado garantem seus direitos?"));
    eixo[1]
        .tema[1]
        .questao
        .add(new Likert("Há casos de disputa por terras na comunidade?"));
    eixo[1].tema[1].questao.add(new Likert(
        "Os jovens se envolvem em conflitos e brigas na comunidade?"));
    eixo[1]
        .tema[1]
        .questao
        .add(new Likert("Você presencia brigas em sua família/comunidade?"));
    eixo[1]
        .tema[1]
        .questao
        .add(new Likert("Você costuma respeitar a opinião de outras pessoas?"));
    eixo[1]
        .tema[1]
        .questao
        .add(new Likert("Existe respeito pelas pessoas idosas na comunidade?"));
    eixo[1].tema[1].questao.add(
        new Likert("As pessoas usam seus pertences sem pedirem autorização?"));
    //TEMA 2
    eixo[1].tema.add(new Tema("SAÚDE E ALIMENTAÇÃO", cor: Colors.orange));
    // 10 PERGUNTAS
    eixo[1].tema[2].questao.add(new Likert("Você come bem todos os dias?"));
    eixo[1].tema[2].questao.add(new Likert(
        "A quantidade e a variedade de alimentos que você consome diariamente são satisfatórias?"));
    eixo[1]
        .tema[2]
        .questao
        .add(new Likert("Os alimentos consumidos por sua família são bons?"));
    eixo[1]
        .tema[2]
        .questao
        .add(new Likert("Os membros de sua família adoecem com frequência?"));
    eixo[1]
        .tema[2]
        .questao
        .add(new Likert("As pessoas em sua comunidade chegam aos 70 anos? "));
    eixo[1].tema[2].questao.add(new Likert(
        "Você tem facilidade em conseguir as medicações/remédios caseiros necessários?"));
    eixo[1].tema[2].questao.add(
        new Likert("Sua família tem fácil acesso ao atendimento em saúde?"));
    eixo[1].tema[2].questao.add(new Likert(
        "Os Agentes  Comunitários de Saúde atuam satisfatoriamente em sua comunidade?"));
    eixo[1].tema[2].questao.add(new Likert(
        "Há facilidade em realizar tratamento de saúde em sua comunidade?"));
    eixo[1].tema[2].questao.add(new Likert(
        "Você acredita que as instituições de Estado garantem saúde de qualidade?"));
    //TEMA 3
    eixo[1].tema.add(new Tema("COMUNIDADE", cor: Colors.pink));
    // 10 PERGUNTAS
    eixo[1].tema[3].questao.add(new Likert(
        "Existe uma boa organização das moradias e de outros espaços em sua comunidade?"));
    eixo[1].tema[3].questao.add(new Likert(
        "Você considera que o terreno de sua moradia é suficiente comparado ao dos seus vizinhos?"));
    eixo[1].tema[3].questao.add(new Likert(
        "Você divide frequentemente bens e espaços com as demais pessoas da comunidade?"));
    eixo[1]
        .tema[3]
        .questao
        .add(new Likert("Existe abastecimento de água para a comunidade?"));
    eixo[1].tema[3].questao.add(
        new Likert("Existe fornecimento de energia elétrica na comunidade?"));
    eixo[1]
        .tema[3]
        .questao
        .add(new Likert("A frequência da coleta do lixo é adequada?"));
    eixo[1].tema[3].questao.add(
        new Likert("A comunidade dispõe de sistema de tratamento de esgoto?"));
    eixo[1]
        .tema[3]
        .questao
        .add(new Likert("Você considera que a comunidade é bem cuidada?"));
    eixo[1].tema[3].questao.add(new Likert(
        "Há frequentemente atividades coletivas em sua comunidade?"));
    eixo[1]
        .tema[3]
        .questao
        .add(new Likert("Você tem tudo o que é necessário para se viver bem?"));
    //TEMA 4
    eixo[1].tema.add(
        new Tema("TRABALHO/OCUPAÇÃO, RENDA E CONSUMO", cor: Colors.teal));
    // 10 PERGUNTAS
    eixo[1].tema[4].questao.add(new Likert(
        "O dinheiro que sua família ganha é o bastante para comprar o que necessita?"));
    eixo[1].tema[4].questao.add(new Likert(
        "Você paga por tudo o que é necessário à sua subsistência?"));
    eixo[1]
        .tema[4]
        .questao
        .add(new Likert("Você compra tudo o que os vendedores lhe oferecem?"));
    eixo[1]
        .tema[4]
        .questao
        .add(new Likert("Seu trabalho/ocupação prejudica o ambiente?"));
    eixo[1].tema[4].questao.add(
        new Likert("Você considera que seu trabalho/ocupação é perigoso?"));
    eixo[1].tema[4].questao.add(new Likert(
        "Sua relação com o empregador/intermediário de seu trabalho é satisfatória?"));
    eixo[1].tema[4].questao.add(new Likert(
        "Existem brigas e conflitos entre os companheiros de trabalho/ocupação?"));
    eixo[1].tema[4].questao.add(new Likert(
        "A sua família trabalha com atividades relacionadas ao turismo?"));
    eixo[1].tema[4].questao.add(new Likert(
        "A comunidade reconhece a importância de seu trabalho/ocupação?"));
    eixo[1]
        .tema[4]
        .questao
        .add(new Likert("Seu trabalho só pode ser realizado coletivamente?"));
    //TEMA 5
    eixo[1].tema.add(
        new Tema("COMUNICAÇÃO E INTERAÇÃO SOCIAL", cor: Colors.red));
    // 10 PERGUNTAS
    eixo[1].tema[5].questao.add(new Likert(
        "Você tem acesso à Internet/redes sociais em sua comunidade?"));
    eixo[1]
        .tema[5]
        .questao
        .add(new Likert("Você assiste televisão todos os dias?"));
    eixo[1].tema[5].questao.add(new Likert("Você ouve rádio todos os dias?"));
    eixo[1].tema[5].questao.add(new Likert(
        "Você sabe das notícias do restante do Brasil com frequência?"));
    eixo[1].tema[5].questao.add(new Likert(
        "Você acredita em todas as notícias que recebe pelos meios de comunicação?"));
    eixo[1].tema[5].questao.add(new Likert(
        "Sua comunidade produz e divulga notícias audiovisuais próprias,  divulgando informações sobre suas atividades e reivindicações?"));
    eixo[1].tema[5].questao.add(new Likert(
        "A qualidade do sinal de telefonia celular permite uma boa comunicação?"));
    eixo[1].tema[5].questao.add(new Likert(
        "Você tem facilidade de transporte para fora de sua comunidade?"));
    eixo[1].tema[5].questao.add(new Likert(
        "Você se incomoda com a imagem da sua comunidade apresentada nos meios de comunicação e pessoas de fora?"));
    eixo[1].tema[5].questao.add(new Likert(
        "Você é influenciado em suas escolhas por pessoas de seu convívio social?"));
  }

  void buildQuest3() {
    eixo[2].start();
    eixo[2].eixo = "EIXO: CONSEQUÊNCIAS AMBIENTAIS";
    //TEMA 0
    eixo[2].tema.add(new Tema("BIOINDICADORES", cor: Colors.green));
    // 10 PERGUNTAS
    eixo[2].tema[0].questao.add(new Likert(
        "Você tem observado alteração na quantidade de algum animal ou inseto?"));
    eixo[2].tema[0].questao.add(new Likert(
        "Você tem observado alteração na quantidade de algum vegetal ou planta?"));
    eixo[2].tema[0].questao.add(new Likert(
        "O crescimento de plantas e animais tem sido normal na comunidade?"));
    eixo[2].tema[0].questao.add(
        new Likert("A qualidade e a quantidade do pescado se mantém estável?"));
    eixo[2].tema[0].questao.add(new Likert(
        "Os bandos de aves tem desaparecido com o passar dos anos?"));
    eixo[2].tema[0].questao.add(new Likert(
        "As chuvas e tempestades sofreram alteração nos últimos anos?"));
    eixo[2].tema[0].questao.add(new Likert(
        "O clima/temperatura, na comunidade, mudou nos últimos anos?"));
    eixo[2].tema[0].questao.add(new Likert(
        "Existem árvores, em sua comunidade, que tem mais de 30 anos?"));
    eixo[2].tema[0].questao.add(new Likert(
        "Houve o aumento de lodo, algas, fungos ou mofos na sua comunidade?"));
    eixo[2].tema[0].questao.add(new Likert(
        "Existem muitos casos de aborto (humanos e animais) na comunidade?"));
    //TEMA 1
    eixo[2].tema.add(new Tema("GEOINDICADORES", cor: Colors.purple));
    // 10 PERGUNTAS
    eixo[2].tema[1].questao.add(new Likert(
        "A comunidade degrada a natureza (queimada, desmatamento, poluição)?"));
    eixo[2].tema[1].questao.add(
        new Likert("A comunidade preserva/protege a natureza (matas, rios)?"));
    eixo[2]
        .tema[1]
        .questao
        .add(new Likert("Existe desperdício de água na comunidade?"));
    eixo[2]
        .tema[1]
        .questao
        .add(new Likert("A qualidade da água dos rios/mares é boa?"));
    eixo[2]
        .tema[1]
        .questao
        .add(new Likert("O ar que você respira tem boa qualidade?"));
    eixo[2]
        .tema[1]
        .questao
        .add(new Likert("A terra na comunidade é boa para o plantio?"));
    eixo[2].tema[1].questao.add(new Likert("A comunidade produz muito lixo?"));
    eixo[2]
        .tema[1]
        .questao
        .add(new Likert("As chuvas têm provocado prejuízos na comunidade?"));
    eixo[2].tema[1].questao.add(new Likert(
        "As cheias dos rios têm sofrido alterações nos últimos anos?"));
    eixo[2].tema[1].questao.add(new Likert(
        "As vazantes dos rios têm sofrido alterações nos últimos anos?"));
    //TEMA 2
    eixo[2].tema.add(new Tema("SEMIÓTICA CORPORAL", cor: Colors.orange));
    // 10 PERGUNTAS
    eixo[2]
        .tema[2]
        .questao
        .add(new Likert("Na comunidade há ocorrência de doenças intestinais?"));
    eixo[2].tema[2].questao.add(
        new Likert("Na comunidade há ocorrência de doenças respiratórias?"));
    eixo[2].tema[2].questao.add(
        new Likert("Na comunidade há ocorrência de doenças psicológicas?"));
    eixo[2].tema[2].questao.add(new Likert(
        "Na comunidade há ocorrência de doenças sexualmente transmissíveis?"));
    eixo[2].tema[2].questao.add(new Likert(
        "Na comunidade há ocorrência de doenças que diminuam a capacidade de locomoção?"));
    eixo[2]
        .tema[2]
        .questao
        .add(new Likert("Existem pessoas com doenças crônicas na comunidade?"));
    eixo[2]
        .tema[2]
        .questao
        .add(new Likert("Existem casos de suicídio na comunidade?"));
    eixo[2]
        .tema[2]
        .questao
        .add(new Likert("Você considera que há obesidade na comunidade?"));
    eixo[2]
        .tema[2]
        .questao
        .add(new Likert("A mortalidade infantil é um problema na comunidade?"));
    eixo[2].tema[2].questao.add(new Likert(
        "Você observa a diminuição na taxa de natalidade em sua família nos últimos 5 anos?"));
    //TEMA 3
    eixo[2].tema.add(new Tema("SEMIÓTICA AMBIENTAL", cor: Colors.pink));
    // 10 PERGUNTAS
    eixo[2].tema[3].questao.add(new Likert(
        "O governo (federal, estadual, municipal) protege o meio ambiente da comunidade?"));
    eixo[2].tema[3].questao.add(
        new Likert("A comunidade procura recuperar as suas áreas degradadas?"));
    eixo[2].tema[3].questao.add(new Likert(
        "Há conflitos por motivações ambientais na sua comunidade?"));
    eixo[2].tema[3].questao.add(new Likert(
        "A ocupação desordenada na comunidade afeta o meio ambiente?"));
    eixo[2].tema[3].questao.add(new Likert(
        "A expansão/crescimento das cidades pode afetar o meio ambiente?"));
    eixo[2].tema[3].questao.add(new Likert(
        "A construção de obras públicas (estradas, pontes, trapiches, cais e outros) pode ser prejudicial ao ambiente?"));
    eixo[2]
        .tema[3]
        .questao
        .add(new Likert("A produção econômica afeta o meio ambiente?"));
    eixo[2].tema[3].questao.add(
        new Likert("Você observa que houve aumento de desastres naturais?"));
    eixo[2]
        .tema[3]
        .questao
        .add(new Likert("Você acredita em aquecimento global?"));
    eixo[2].tema[3].questao.add(
        new Likert("Os problemas ambientais são permanentes e irreversíveis?"));
    //TEMA 4
    eixo[2].tema.add(new Tema("ATIVIDADE ECONÔMICA", cor: Colors.teal));
    // 10 PERUNTAS
    eixo[2].tema[4].questao.add(new Likert(
        "Sua família usa produtos (cascas, ervas, plantas, raízes) retirados da floresta/mata/mangue?"));
    eixo[2]
        .tema[4]
        .questao
        .add(new Likert("Sua família pesca para subsistência?"));
    eixo[2]
        .tema[4]
        .questao
        .add(new Likert("Sua família caça animais para subsistência?"));
    eixo[2]
        .tema[4]
        .questao
        .add(new Likert("Sua família cria animais para subsistência?"));
    eixo[2]
        .tema[4]
        .questao
        .add(new Likert("Sua família planta para subsistência?"));
    eixo[2]
        .tema[4]
        .questao
        .add(new Likert("Sua família extrai madeira para subsistência?"));
    eixo[2].tema[4].questao.add(new Likert(
        "Sua família explora minerais (pedras, areias, piçarra, garimpo)?"));
    eixo[2].tema[4].questao.add(new Likert(
        "Sua família recebe benefícios sociais (bolsa família, bolsa floresta, defeso e outros)?"));
    eixo[2].tema[4].questao.add(
        new Likert("Sua família sobrevive de atividade remunerada/comércio?"));
    eixo[2].tema[4].questao.add(
        new Likert("Sua família ganha pelo menos um salário mínimo mensal?"));
    //TEMA 5
    eixo[2].tema.add(
        new Tema("CIDADANIA E RELAÇÕES DE PODER", cor: Colors.red));
    // 10 PEUNTAS
    eixo[2]
        .tema[5]
        .questao
        .add(new Likert("Há prática de trabalho infantil na comunidade?"));
    eixo[2]
        .tema[5]
        .questao
        .add(new Likert("Há casos de crianças/jovens que abandonam a escola?"));
    eixo[2].tema[5].questao.add(new Likert(
        "Há casos de pedofilia/exploração sexual na comunidade? Há casos de trabalho escravo na comunidade?"));
    eixo[2]
        .tema[5]
        .questao
        .add(new Likert("Há casos de trabalho escravo na comunidade?"));
    eixo[2].tema[5].questao.add(
        new Likert("Há pessoas analfabetas/semi-analfabetas na comunidade?"));
    eixo[2].tema[5].questao.add(new Likert(
        "Há casos de ameaça de violência a lideranças e agentes públicos na comunidade?"));
    eixo[2].tema[5].questao.add(
        new Likert("Os idosos têm acesso ao sistema público de previdência?"));
    eixo[2].tema[5].questao.add(new Likert(
        "A comunidade participa nas ações promovidas por associações ou organizações semelhantes?"));
    eixo[2].tema[5].questao.add(new Likert(
        "Há casos de discriminação de gênero (mulheres, LGBTQ e outros) na comunidade?"));
    eixo[2].tema[5].questao.add(
        new Likert("Há casos de preconceito étnico-racial na comunidade?"));
  }
}
