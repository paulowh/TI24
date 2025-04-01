-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: db_cinebox
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tb_alunos`
--

DROP TABLE IF EXISTS `tb_alunos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_alunos` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_alunos`
--

LOCK TABLES `tb_alunos` WRITE;
/*!40000 ALTER TABLE `tb_alunos` DISABLE KEYS */;
INSERT INTO `tb_alunos` VALUES (1,'Antônio Gabriel Santos Godoy Carneiro'),(2,'Caua Canale Ferreira'),(3,'Daniel Camargo de Lima'),(4,'David Gabriel Tarley'),(5,'Gabriel de Oliveira Domingues Moraes'),(6,'Gustavo Sobrera Nunes dos Santos'),(7,'Josue Orellana Montenegro'),(8,'Kenya Banach Chrominski Jaques'),(9,'Leandro Piai Barreto'),(10,'Marcia Gisseli Mamani Condarco'),(11,'Matheus Dantas de Sousa'),(12,'Matheus David'),(13,'Matheus Guida'),(14,'Matheus Leonardo Ismarsi'),(15,'Ryan Lima Germano'),(16,'Thiago Bispo Souza'),(17,'Victor Huggo Lima da Silva'),(18,'Vítor Frazatto Barduco'),(19,'Walmir Antonio de Sousa Ribeiro');
/*!40000 ALTER TABLE `tb_alunos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_artistas`
--

DROP TABLE IF EXISTS `tb_artistas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_artistas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_artistas`
--

LOCK TABLES `tb_artistas` WRITE;
/*!40000 ALTER TABLE `tb_artistas` DISABLE KEYS */;
INSERT INTO `tb_artistas` VALUES (1,'Zoe Saldaña'),(2,'Will Smith'),(3,'Joaquin Phoenix'),(4,'Robert Pattinson'),(5,'Daniel Craig'),(6,'Samuel L. Jackson'),(7,'Leonardo DiCaprio'),(8,'Chris Evans'),(9,'Margot Robbie'),(10,'Tom Hardy');
/*!40000 ALTER TABLE `tb_artistas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_filme_artista`
--

DROP TABLE IF EXISTS `tb_filme_artista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_filme_artista` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filme_id` int(11) DEFAULT NULL,
  `artista_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `filme_id` (`filme_id`),
  KEY `artista_id` (`artista_id`),
  CONSTRAINT `tb_filme_artista_ibfk_1` FOREIGN KEY (`filme_id`) REFERENCES `tb_filmes` (`id`),
  CONSTRAINT `tb_filme_artista_ibfk_2` FOREIGN KEY (`artista_id`) REFERENCES `tb_artistas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_filme_artista`
--

LOCK TABLES `tb_filme_artista` WRITE;
/*!40000 ALTER TABLE `tb_filme_artista` DISABLE KEYS */;
INSERT INTO `tb_filme_artista` VALUES (1,1,1),(2,1,9),(3,1,10),(4,1,6),(5,2,2),(6,2,6),(7,2,4),(8,2,3),(9,3,3),(10,3,9),(11,3,7),(12,3,5),(13,4,3),(14,4,9),(15,4,10),(16,4,4),(17,5,2),(18,5,1),(19,5,8),(20,5,6),(21,6,6),(22,6,1),(23,6,2),(24,6,4),(25,7,7),(26,7,3),(27,7,2),(28,7,10),(29,11,7),(30,11,9),(31,12,8),(32,12,3),(33,13,1),(34,14,3),(35,15,7),(36,16,2),(37,17,9),(38,18,8),(39,19,10),(40,20,3),(41,21,6),(42,22,4),(43,23,5),(44,24,10),(45,11,7),(46,11,9),(47,12,8),(48,12,3),(49,13,1),(50,14,3),(51,15,7),(52,16,2),(53,17,9),(54,18,8),(55,19,10),(56,20,3),(57,21,6),(58,22,4),(59,23,5),(60,24,10);
/*!40000 ALTER TABLE `tb_filme_artista` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_filme_genero`
--

DROP TABLE IF EXISTS `tb_filme_genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_filme_genero` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filme_id` int(11) DEFAULT NULL,
  `genero_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `filme_id` (`filme_id`),
  KEY `genero_id` (`genero_id`),
  CONSTRAINT `tb_filme_genero_ibfk_1` FOREIGN KEY (`filme_id`) REFERENCES `tb_filmes` (`id`),
  CONSTRAINT `tb_filme_genero_ibfk_2` FOREIGN KEY (`genero_id`) REFERENCES `tb_generos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_filme_genero`
--

LOCK TABLES `tb_filme_genero` WRITE;
/*!40000 ALTER TABLE `tb_filme_genero` DISABLE KEYS */;
INSERT INTO `tb_filme_genero` VALUES (1,1,6),(2,1,2),(3,1,3),(4,2,1),(5,2,4),(6,2,5),(7,3,3),(8,3,5),(9,3,1),(10,4,3),(11,4,5),(12,4,1),(13,5,1),(14,5,2),(15,5,6),(16,6,4),(17,6,1),(18,6,3),(19,7,3),(20,7,1),(21,7,5),(22,8,1),(23,8,3),(24,8,5),(25,9,2),(26,9,6),(27,9,3),(28,10,1),(29,10,3),(30,10,5),(31,11,6),(32,11,2),(33,12,6),(34,12,1),(35,13,4),(36,13,1),(37,14,6),(38,14,1),(39,15,6),(40,15,1),(41,16,1),(42,16,3),(43,17,3),(44,17,6),(45,18,3),(46,18,4),(47,19,1),(48,19,6),(49,20,3),(50,20,4),(51,21,1),(52,21,6),(53,22,4),(54,22,1),(55,23,3),(56,24,5),(57,24,3);
/*!40000 ALTER TABLE `tb_filme_genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_filmes`
--

DROP TABLE IF EXISTS `tb_filmes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_filmes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `classificacao_indicativa` int(11) DEFAULT NULL,
  `valor_ingresso` decimal(10,2) DEFAULT NULL,
  `descricao` text DEFAULT NULL,
  `poster` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_filmes`
--

LOCK TABLES `tb_filmes` WRITE;
/*!40000 ALTER TABLE `tb_filmes` DISABLE KEYS */;
INSERT INTO `tb_filmes` VALUES (1,'Avatar: O Caminho da Água',12,30.00,'Jake Sully e Neytiri enfrentam novos desafios enquanto exploram a conexão dos Na\'vi com os oceanos. A vida subaquática de Pandora é rica e cheia de mistérios, e a família Sully deve aprender a navegar por essas águas desconhecidas. Eles encontram novas tribos e criaturas marinhas, cada uma com suas próprias culturas e perigos. À medida que a ameaça humana se intensifica, Jake e Neytiri devem unir forças com seus novos aliados para proteger seu lar e seu modo de vida.\r\n\r\n    A relação entre Jake e Neytiri é testada como nunca antes, enquanto eles enfrentam perdas e desafios pessoais. A conexão espiritual dos Na\'vi com a natureza é explorada em profundidade, mostrando como eles se comunicam e coexistem com as criaturas marinhas. A beleza visual dos oceanos de Pandora é um espetáculo à parte, com cenas subaquáticas deslumbrantes que destacam a biodiversidade do planeta.\r\n\r\n    A trama também aborda temas de preservação ambiental e a luta contra a exploração desenfreada dos recursos naturais. Os vilões humanos representam a ganância e a destruição, enquanto os Na\'vi simbolizam a harmonia e o respeito pela natureza. A batalha final é épica, com cenas de ação de tirar o fôlego e momentos emocionantes que deixam o público na ponta da cadeira.\r\n\r\n    No fim, Avatar: O Caminho da Água é uma história de resistência, amor e sacrifício. Jake e Neytiri mostram que, mesmo diante das adversidades, a união e a coragem podem superar qualquer obstáculo. O filme é uma celebração da vida e da conexão entre todos os seres vivos, deixando uma mensagem poderosa sobre a importância de proteger nosso planeta.','avatar-o-caminho-da-agua.png'),(2,'Bad Boys: Até o Fim',14,25.00,'Mike Lowrey e Marcus Burnett estão de volta para enfrentar um novo inimigo que ameaça suas vidas e suas famílias. Desta vez, eles enfrentam um cartel de drogas liderado por uma figura misteriosa com laços com o passado de Mike. A amizade entre os dois detetives é testada como nunca antes, enquanto eles lidam com suas próprias questões pessoais e profissionais.\r\n\r\n    A ação é intensa e as perseguições de carros são de tirar o fôlego, com cenas que levam os espectadores a uma montanha-russa de emoções. Mike e Marcus devem usar todas as suas habilidades e experiência para sobreviver e derrotar seus inimigos. A química entre os dois protagonistas é palpável, proporcionando momentos de humor e camaradagem que equilibram a tensão da trama.\r\n\r\n    Além da ação, o filme também explora temas de lealdade, redenção e o que significa envelhecer no mundo do crime. Mike enfrenta seu passado e as escolhas que fez, enquanto Marcus lida com a ideia de aposentadoria e o desejo de proteger sua família. Juntos, eles descobrem que, apesar das diferenças, sua amizade é a chave para superar qualquer desafio.\r\n\r\n    Bad Boys: Até o Fim é uma celebração da franquia, trazendo de volta personagens queridos e introduzindo novos rostos. É um filme que combina ação explosiva com uma narrativa emocionalmente ressonante, garantindo que os fãs antigos e novos fiquem satisfeitos. No final, Mike e Marcus provam que, mesmo com o tempo passando, eles ainda são os melhores no que fazem.','bad-boys-ate-o-fim.png'),(3,'Coringa 2',16,28.00,'Arthur Fleck retorna em Coringa 2, uma continuação sombria e introspectiva de sua jornada como o infame vilão de Gotham. Após os eventos do primeiro filme, Arthur está mais perdido do que nunca, lutando para encontrar seu lugar em um mundo que o rejeita. Ele enfrenta novas figuras que moldam seu destino, cada uma trazendo desafios e revelações que o empurram ainda mais para a escuridão.\r\n\r\n    A narrativa explora profundamente a psique de Arthur, revelando suas inseguranças, medos e desejos. Sua transformação em Coringa é completa, mas ele ainda busca um propósito e uma identidade. As interações com outros personagens são intensas e carregadas de tensão, mostrando como Arthur manipula e é manipulado por aqueles ao seu redor.\r\n\r\n    Visualmente, o filme é um espetáculo, com uma cinematografia que captura a decadência e a beleza de Gotham. As cenas são meticulosamente construídas para refletir o estado mental de Arthur, criando uma atmosfera de constante inquietação. A trilha sonora complementa perfeitamente a narrativa, intensificando as emoções e os momentos de suspense.\r\n\r\n    Coringa 2 é mais do que uma simples sequência; é uma exploração profunda da loucura e da humanidade. Arthur Fleck é um personagem complexo e multifacetado, e o filme não oferece respostas fáceis. Em vez disso, desafia o público a confrontar suas próprias percepções de moralidade e sanidade. É uma obra que deixa uma marca duradoura, provocando reflexão muito depois dos créditos finais.','coringa-2.png'),(4,'Coringa',16,16.00,'Arthur Fleck é um comediante fracassado que vive em Gotham, uma cidade decadente e cheia de corrupção. Ele luta com problemas mentais e é constantemente marginalizado pela sociedade. Sua transformação em Coringa começa quando ele é demitido de seu trabalho e sofre uma série de humilhações e abusos. A violência e a injustiça que ele enfrenta o levam a um caminho de vingança e caos.\r\n\r\n    A narrativa do filme é uma exploração profunda da psique de Arthur, mostrando como ele se transforma de um homem vulnerável em um vilão implacável. A atuação de Joaquin Phoenix é magistral, capturando a complexidade e a dor do personagem. Cada cena é carregada de tensão e emoção, criando uma experiência cinematográfica intensa e perturbadora.\r\n\r\n    Visualmente, o filme é sombrio e estilizado, com uma cinematografia que destaca a decadência de Gotham. As ruas sujas e os prédios em ruínas refletem o estado mental de Arthur, criando uma atmosfera de desespero e alienação. A trilha sonora é igualmente impactante, com músicas que intensificam os momentos de suspense e drama.\r\n\r\n    Coringa é mais do que um filme de super-herói; é uma análise profunda da sociedade e da condição humana. Ele levanta questões sobre a responsabilidade social, a saúde mental e a violência. A transformação de Arthur em Coringa é um comentário sobre como a sociedade pode criar seus próprios monstros. É um filme que provoca reflexão e debate, deixando uma impressão duradoura no público.','coringa.png'),(5,'Desafio Tokyo',12,20.00,'Desafio Tokyo segue a história de jovens pilotos que competem nas ruas de Tóquio, enfrentando adversários e suas próprias inseguranças. A trama gira em torno de Sean Boswell, um adolescente problemático que é enviado para viver com seu pai no Japão para evitar a prisão. Lá, ele descobre o mundo das corridas clandestinas e se envolve com a comunidade local de pilotos.\r\n\r\n    As cenas de corrida são eletrizantes, com carros tunados e manobras arriscadas que deixam o público na ponta da cadeira. A cinematografia captura a energia e a velocidade das ruas de Tóquio, criando uma experiência visualmente deslumbrante. A trilha sonora pulsante complementa a ação, intensificando a adrenalina das corridas.\r\n\r\n    Além da ação, o filme explora temas de identidade e pertencimento. Sean luta para se adaptar a uma nova cultura e encontrar seu lugar em um mundo desconhecido. Suas interações com outros personagens, como o mentor Han e a rival Neela, são centrais para seu desenvolvimento. Através dessas relações, ele aprende sobre lealdade, respeito e o verdadeiro significado de ser um piloto.\r\n\r\n    Desafio Tokyo é mais do que um filme de ação; é uma história sobre crescimento e autodescoberta. Sean deve enfrentar seus próprios demônios e superar suas inseguranças para se tornar um verdadeiro campeão. O filme combina ação de alta octanagem com uma narrativa emocionalmente ressonante, criando uma experiência cinematográfica completa.','desafio-tokyo.png'),(6,'Gente Grande 2',10,18.00,'Em Gente Grande 2, os amigos de infância Lenny, Eric, Kurt e Marcus se reúnem para um fim de semana divertido, lidando com as responsabilidades de adultos. Eles retornam à sua cidade natal, onde enfrentam uma série de situações hilárias e desafiadoras. A trama explora a dinâmica de suas amizades e como elas evoluíram ao longo dos anos.\r\n\r\n    O filme é repleto de momentos cômicos, com situações absurdas e diálogos engraçados que garantem risadas do início ao fim. Cada personagem traz sua própria personalidade e problemas, criando uma mistura diversificada de histórias. Lenny, por exemplo, lida com a paternidade e as expectativas de sua família, enquanto Eric enfrenta desafios no trabalho.\r\n\r\n    Além do humor, Gente Grande 2 aborda temas de crescimento e maturidade. Os personagens refletem sobre suas vidas e as escolhas que fizeram, aprendendo lições valiosas sobre responsabilidade e amizade. A relação entre os amigos é o coração do filme, mostrando como eles se apoiam mutuamente em momentos de necessidade.\r\n\r\n    Visualmente, o filme é vibrante e colorido, capturando a energia e a diversão do verão. As cenas ao ar livre e as atividades recreativas adicionam uma sensação de nostalgia e liberdade. No final, Gente Grande 2 é uma celebração da amizade e da importância de manter os laços com aqueles que amamos, independentemente do tempo e das circunstâncias.','gente-grande-2.png'),(7,'Pulp Fiction',18,22.00,'Pulp Fiction é uma obra-prima que entrelaça várias histórias de crime em Los Angeles. A narrativa não linear segue personagens como Vincent Vega, Jules Winnfield, Mia Wallace e Butch Coolidge, cada um com suas próprias histórias e dilemas. A direção de Quentin Tarantino e os diálogos afiados criam uma experiência cinematográfica única e envolvente.\r\n\r\n    A primeira história segue Vincent e Jules, dois assassinos de aluguel que trabalham para o chefe do crime Marsellus Wallace. Eles enfrentam situações inesperadas e filosóficas enquanto realizam suas missões. A química entre os personagens e os diálogos icônicos tornam essas cenas memoráveis e impactantes.\r\n\r\n    A segunda história foca em Vincent e Mia, a esposa de Marsellus. Vincent é encarregado de levar Mia para sair enquanto Marsellus está fora da cidade. O encontro deles leva a uma série de eventos imprevisíveis e tensos, culminando em uma cena de overdose que é ao mesmo tempo chocante e emocionante.\r\n\r\n    A terceira história segue Butch, um boxeador que decide trair Marsellus e fugir com o dinheiro de uma luta arranjada. Sua fuga é cheia de perigos e encontros inesperados, incluindo uma cena de resgate que é tanto brutal quanto redentora. Pulp Fiction é um filme que explora temas de redenção, moralidade e o acaso, deixando uma marca indelével no cinema.','pulp-fiction.png'),(8,'Sem Tempo Para Morrer',12,35.00,'Em Sem Tempo Para Morrer, James Bond enfrenta um novo desafio com tecnologia perigosa nas mãos erradas. Após se aposentar do MI6, Bond é chamado de volta à ação quando seu amigo Felix Leiter pede ajuda para resgatar um cientista sequestrado. A missão leva Bond a confrontar seu passado e enfrentar um novo vilão, Safin, que possui uma arma biológica devastadora.\r\n\r\n    A trama é repleta de ação e suspense, com cenas de perseguição e combate que mantêm o público na ponta da cadeira. Bond deve usar todas as suas habilidades e recursos para impedir que Safin execute seu plano maligno. A relação de Bond com Madeleine Swann também é explorada, adicionando uma camada emocional à narrativa.\r\n\r\n    Visualmente, o filme é deslumbrante, com locações exóticas e cinematografia impressionante. As cenas de ação são coreografadas com precisão, criando momentos de alta tensão e adrenalina. A trilha sonora, composta por Hans Zimmer, complementa perfeitamente a atmosfera do filme, intensificando as emoções e o drama.\r\n\r\n    Sem Tempo Para Morrer é uma conclusão épica para a saga de Daniel Craig como James Bond. O filme aborda temas de sacrifício, lealdade e redenção, mostrando um Bond mais vulnerável e humano. É uma despedida emocionante e satisfatória para um dos personagens mais icônicos do cinema.','sem-tempo-para-morrer.png'),(9,'Star Wars: The Last Jedi',10,30.00,'Em Star Wars: The Last Jedi, Rey busca entender seu poder enquanto Kylo Ren lida com suas decisões. A trama segue a Resistência, liderada por Leia Organa, enquanto eles tentam escapar das forças da Primeira Ordem. Rey viaja para encontrar Luke Skywalker, na esperança de que ele a treine e ajude a derrotar Kylo Ren e Snoke.\r\n\r\n    A relação entre Rey e Luke é central para a narrativa, com Luke relutante em treinar Rey devido aos erros do passado. Rey, por sua vez, luta para encontrar seu lugar na galáxia e entender sua conexão com a Força. As cenas de treinamento são intensas e reveladoras, mostrando o crescimento de Rey como Jedi.\r\n\r\n    Kylo Ren enfrenta seus próprios dilemas, dividido entre o lado sombrio e a luz. Sua conexão com Rey através da Força cria uma dinâmica complexa e fascinante. As batalhas espaciais e os confrontos de sabres de luz são espetaculares, com coreografias impressionantes e efeitos visuais de tirar o fôlego.\r\n\r\n    Star Wars: The Last Jedi explora temas de esperança, sacrifício e redenção. A luta da Resistência contra a Primeira Ordem é uma metáfora para a luta contra a opressão e a tirania. O filme desafia as expectativas e oferece reviravoltas surpreendentes, deixando uma marca duradoura na saga Star Wars.','star-wars-the-last-jedi.png'),(10,'The Batman',14,28.00,'Em The Batman, Bruce Wayne investiga crimes em Gotham, enfrentando vilões e questionando o que significa ser um herói. A trama segue Bruce em seus primeiros anos como Batman, enquanto ele tenta desvendar uma série de assassinatos cometidos pelo Charada. A investigação o leva a descobrir segredos sombrios sobre sua família e a cidade que jurou proteger.\r\n\r\n    A caracterização de Bruce Wayne é profunda e complexa, mostrando um herói atormentado por seu passado e suas responsabilidades. A relação de Bruce com Alfred e outros aliados, como Selina Kyle, é explorada em detalhes, adicionando camadas emocionais à narrativa. As cenas de ação são intensas e realistas, com coreografias de luta que destacam as habilidades de Batman.\r\n\r\n    Visualmente, o filme é sombrio e atmosférico, capturando a essência de Gotham como uma cidade decadente e perigosa. A cinematografia e a direção de arte criam um ambiente imersivo e envolvente. A trilha sonora, composta por Michael Giacchino, complementa perfeitamente a atmosfera do filme, intensificando as emoções e o suspense.\r\n\r\n    The Batman é uma exploração profunda do personagem e de sua luta contra o crime. O filme aborda temas de justiça, vingança e redenção, mostrando um herói que deve confrontar seus próprios demônios para salvar sua cidade. É uma adição poderosa e emocionante ao legado do Cavaleiro das Trevas.','the-batman.png'),(11,'Duna',12,32.00,'Uma épica adaptação do clássico da ficção científica, \"Duna\" explora a luta pelo controle do planeta desértico Arrakis. Paul Atreides deve enfrentar inimigos e descobrir seu destino em uma batalha interplanetária por recursos vitais.','duna.png'),(12,'Spider-Man: Sem Volta Para Casa',12,30.00,'Peter Parker lida com as consequências de sua identidade secreta revelada. Em uma tentativa de recuperar sua vida normal, ele busca a ajuda do Doutor Estranho, o que resulta em consequências inesperadas.','spider-man-sem-volta-para-casa.png'),(13,'Os Incríveis 2',10,20.00,'A família de super-heróis está de volta! Helen sai para salvar o mundo enquanto Bob fica em casa cuidando das crianças. Uma aventura cheia de ação e humor que explora temas de família e heroísmo.','os-incriveis-2.png'),(14,'Tenet',14,28.00,'Um agente secreto é armado com apenas uma palavra - Tenet - e está lutando por sua sobrevivência em um mundo de espionagem. Através do tempo e de uma realidade invertida, ele tenta impedir a Terceira Guerra Mundial.','tenet.png'),(15,'Matrix Resurrections',14,35.00,'Neo e Trinity estão de volta em uma nova realidade onde devem redescobrir seus passados e lutar contra novas ameaças. A sequência traz novas camadas à filosofia da Matrix e à luta pela liberdade.','matrix-resurrections.png'),(16,'Vingadores: Ultimato',12,12.00,'Os Vingadores se reúnem para reverter os danos causados por Thanos e restaurar a ordem no universo. Uma épica conclusão de uma saga que definiu gerações.','vingadores-ultimato.png'),(17,'A Forma da Água',14,25.00,'Uma história de amor entre uma mulher muda e uma criatura aquática em um laboratório secreto. Uma fábula visualmente impressionante que explora temas de amor, solidão e aceitação.','a-forma-da-agua.png'),(18,'Jojo Rabbit',10,20.00,'Um jovem garoto na Alemanha nazista descobre que sua mãe está escondendo uma jovem judia em sua casa. Com a ajuda de seu amigo imaginário, Adolf Hitler, ele deve confrontar suas crenças e preconceitos.','jojo-rabbit.png'),(19,'A Guerra do Amanhã',12,25.00,'Um grupo de soldados é enviado ao futuro para lutar contra alienígenas. Enquanto a batalha se intensifica, eles devem descobrir o que realmente significa lutar pela sobrevivência.','a-guerra-do-amanha.png'),(20,'Cruella',12,30.00,'A origem da famosa vilã de \"101 Dálmatas\". A história segue Estella, uma jovem criativa que se torna a famosa Cruella de Vil, enquanto luta por sua identidade em um mundo dominado pela moda.','cruella.png'),(21,'Shang-Chi e a Lenda dos Dez Anéis',12,28.00,'Um jovem mestre das artes marciais deve confrontar seu passado e os dez anéis misteriosos de sua família. Uma aventura de ação que combina cultura e fantasia.','shang-chi.png'),(22,'Free Guy',10,22.00,'Um funcionário de banco descobre que é, na verdade, um personagem em um videogame. Ele decide se tornar o herói de sua própria história em uma comédia divertida e cheia de ação.','free-guy.png'),(23,'Candlelight',10,18.00,'Um drama introspectivo sobre um artista lutando para encontrar seu lugar no mundo enquanto lida com as consequências de suas escolhas e a busca pela autenticidade.','candlelight.png'),(24,'A Mulher na Janela',16,28.00,'Uma psicóloga agorafóbica acredita ter testemunhado um crime do outro lado da rua. Combinando suspense psicológico e mistério, o filme mergulha em temas de percepção e realidade.','a-mulher-na-janela.png');
/*!40000 ALTER TABLE `tb_filmes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_generos`
--

DROP TABLE IF EXISTS `tb_generos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_generos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `cor` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_generos`
--

LOCK TABLES `tb_generos` WRITE;
/*!40000 ALTER TABLE `tb_generos` DISABLE KEYS */;
INSERT INTO `tb_generos` VALUES (1,'Ação','904141'),(2,'Aventura','7C038C'),(3,'Drama','070373'),(4,'Comédia','210D26'),(5,'Terror','D966BA'),(6,'Ficção','580259');
/*!40000 ALTER TABLE `tb_generos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_pessoa`
--

DROP TABLE IF EXISTS `tb_pessoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_pessoa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `ano_nascimento` year(4) DEFAULT NULL,
  `cpf` varchar(11) DEFAULT NULL,
  `telefone_1` varchar(11) DEFAULT NULL,
  `telefone_2` varchar(11) DEFAULT NULL,
  `logradouro` varchar(150) DEFAULT NULL,
  `n_casa` int(5) DEFAULT NULL,
  `bairro` varchar(100) DEFAULT NULL,
  `cidade` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_pessoa`
--

LOCK TABLES `tb_pessoa` WRITE;
/*!40000 ALTER TABLE `tb_pessoa` DISABLE KEYS */;
INSERT INTO `tb_pessoa` VALUES (1,'Harry Potter',1980,'12345678901','11987654321','11998765432','Rua dos Feiticeiros',34,'Bairro Mágico','Londres'),(2,'Luke Skywalker',1977,'23456789012','11223344556','11224455667','Avenida Tatooine',22,'Deserto','Mos Eisley'),(3,'Frodo Baggins',1983,'34567890123','11911223344','11922334455','Morro do Condado',2,'Condado','Shire'),(4,'Indiana Jones',1945,'45678901234','11334455667','11335566778','Rua da Aventura',58,'Centro Histórico','Jonesville'),(5,'Trinity',1976,'56789012345','11445566778','11456677889','Av. Matrix',99,'Bairro Virtual','Cidade Matrix');
/*!40000 ALTER TABLE `tb_pessoa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_usuario`
--

DROP TABLE IF EXISTS `tb_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(100) DEFAULT NULL,
  `senha` varchar(100) DEFAULT NULL,
  `id_pessoa` int(11) NOT NULL,
  `status` enum('admin','comum') DEFAULT 'comum',
  PRIMARY KEY (`id`),
  KEY `id_pessoa` (`id_pessoa`),
  CONSTRAINT `tb_usuario_ibfk_1` FOREIGN KEY (`id_pessoa`) REFERENCES `tb_pessoa` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_usuario`
--

LOCK TABLES `tb_usuario` WRITE;
/*!40000 ALTER TABLE `tb_usuario` DISABLE KEYS */;
INSERT INTO `tb_usuario` VALUES (1,'harry_potter','senha123',1,'comum'),(2,'luke_skywalker','forca123',2,'admin'),(3,'frodo_baggins','anello123',3,'comum'),(4,'indy_jones','arqueologia123',4,'comum'),(5,'trinity_matrix','neo123',5,'comum'),(6,'admin','admin',1,'admin');
/*!40000 ALTER TABLE `tb_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'db_cinebox'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-26  8:11:49
