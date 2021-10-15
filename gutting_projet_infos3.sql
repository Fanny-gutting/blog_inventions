-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 130.79.158.79:3306
-- Généré le : mer. 27 jan. 2021 à 14:25
-- Version du serveur :  5.6.48
-- Version de PHP : 7.3.19-1+0~20200612.60+debian9~1.gbp6c8fe1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gutting_projet_infos3`
--

-- --------------------------------------------------------

--
-- Structure de la table `cat`
--

CREATE TABLE `cat` (
  `id_cat` bigint(20) UNSIGNED NOT NULL,
  `nom_cat` varchar(255) DEFAULT NULL,
  `images_cat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `cat`
--

INSERT INTO `cat` (`id_cat`, `nom_cat`, `images_cat`) VALUES
(1, 'Médecine\r\n', 'images/categorie/medecine.jpg'),
(2, 'Mécanique', 'images/categorie/mecanique.jpg'),
(3, 'Chimie', 'images/categorie/chimie.jpg'),
(4, 'Astronomie', 'images/categorie/astronomie.jpg'),
(5, 'Fake news !', 'images/categorie/fakenews.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `commentaire`
--

CREATE TABLE `commentaire` (
  `id_commentaire` bigint(20) UNSIGNED NOT NULL,
  `auteur_commentaire` varchar(255) NOT NULL,
  `commentaire` text,
  `date_commentaire` datetime NOT NULL,
  `id_techno` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `commentaire`
--

INSERT INTO `commentaire` (`id_commentaire`, `auteur_commentaire`, `commentaire`, `date_commentaire`, `id_techno`) VALUES
(1, 'Fanny', 'Pas mal', '0000-00-00 00:00:00', 10);

-- --------------------------------------------------------

--
-- Structure de la table `techno`
--

CREATE TABLE `techno` (
  `id_techno` bigint(20) UNSIGNED NOT NULL,
  `nom_techno` varchar(255) DEFAULT NULL,
  `extrait_techno` text NOT NULL,
  `description_techno` text,
  `dates_techno` date DEFAULT NULL,
  `images_techno` varchar(255) DEFAULT NULL,
  `id_cat` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `techno`
--

INSERT INTO `techno` (`id_techno`, `nom_techno`, `extrait_techno`, `description_techno`, `dates_techno`, `images_techno`, `id_cat`) VALUES
(1, 'Premier modèle héliocentrique du système solaire', 'Aristarque de Samos, né à Samos, en Grèce, est un astronome et mathématicien actif dans la première partie du IIIe siècle av. J.-C. On dispose de très peu d\'informations biographiques, certains historiens estiment qu\'il serait né vers 310 av. J.-C., et mort vers 230 av. J.-C.', '<p>Les mesures d\'Aristarque des diamètres de la Lune et du Soleil, relativement à celui de la Terre, et de la distance de la Terre au Soleil, relativement à celle de la Terre à la Lune, sont remarquables davantage pour leur ingéniosité et les méthodes mathématiques utilisées que pour leur exactitude.</p>\r\n\r\n<p>Aristarque de Samos observe que la Lune met à peu près une heure à parcourir une distance égale à son diamètre. Il observe d\'autre part que les éclipses totales de Lune durent deux heures : 100 % du globe lunaire est plongé dans le cylindre d\'ombre de la Terre durant ces deux heures. Il en déduit que le diamètre de ce cylindre est égal à trois diamètres de Lune et que par conséquent le diamètre de la Terre est trois fois plus grand que celui de la Lune. Il est plus précisément 3,7 fois plus grand que celui de la Lune.</p>\r\n\r\n<p>Il estime ensuite sous quel angle on voit la Lune de la Terre. Il trouve 2°. Bien que le résultat du calcul d\'Aristarque ne soit pas donné par les textes, il est aisé d\'en déduire que pour lui la distance Terre-Lune mesure entre 22,5 et 30 diamètres lunaires. Par suite, cette distance Terre-Lune mesure approximativement 19 rayons terrestres (60,2 en réalité). Le procédé est ingénieux, mais la méthode et les calculs souffrent de nombreuses imprécisions. D\'abord et surtout, le diamètre angulaire de la Lune est très surestimé (2° contre 0,5°). Ensuite, cet angle est observé depuis la surface de la Terre, alors que le rayon de l\'orbite part de son centre (l\'élimination de cette approximation requiert des calculs trigonométriques) et le diamètre de l\'ombre de la Terre sur la Lune est supérieur à son estimation. D\'autres approximations ont une influence moindre sur le résultat : la valeur de ? est peu précise à l\'époque7 et l\'ombre de la Terre est considérée comme cylindrique, alors qu\'elle est en fait conique8. Le diamètre de la Terre vaut 3,7 diamètres lunaires et non 3, mais l\'essentiel de la différence provient de l\'imprécision de l\'observation et non du caractère conique de l\'ombre. Un calcul plus précis était tout à fait réalisable à son époque et fut conduit par Hipparque (v. 190 à 120 av. J.-C.). Mais pour Aristarque, qui était encore un philosophe-astronome, la méthode (géométrique) revêtait beaucoup plus d\'importance que le résultat (arithmétique)9. D\'ailleurs, selon Neugebauer10, l\'angle de 2° n\'est qu\'une valeur non mesurée utilisée pour la commodité de l\'exposé, car il est facile d\'obtenir une mesure bien meilleure ; et Archimède, selon la même source, affirme qu\'Aristarque considérait 1/2° comme la valeur réelle de cet angle. Dans ces conditions, la méthode d\'Aristarque aboutirait à une distance Terre-Lune de 80 rayons terrestres.</p>\r\n\r\n<p>Pour la distance Terre-Soleil (T-S), il observe la Lune lors d\'un de ses quartiers exacts. L\'angle Terre-Lune-Soleil est alors droit. Terre, Lune et Soleil dessinent un triangle rectangle TLS, rectangle en L. Il lui suffit de mesurer l\'angle Soleil, Terre, Lune. Il en déduit alors un encadrement du rapport des distances Lune-Soleil et Terre-Soleil. Il trouve pour l\'angle Soleil, Terre, Lune un angle presque droit (90° ? 3°). Il calcule alors que la distance Terre-Soleil est environ 19 fois plus grande que la distance Terre-Lune. Malheureusement, sa mesure est fausse. Seuls des instruments précis qui n\'apparaîtront que plus de mille ans plus tard permettront d\'évaluer cet angle à 90° ? 0,15°. Ce qui place le Soleil 400 fois plus loin que ne l\'est la Lune, Aristarque s\'était donc trompé d\'environ un facteur 20.</p>', '1000-09-19', 'images/techno/helocentrisme.jpg', 4),
(2, 'Le plâtre moderne et le pansement', 'Abu Al-Qasim, connu en Occident sous le nom Abulcasis ou Albucasis, en France Aboulcassis, (né à Madinat al-Zahra (Al-Andalus) v. 940 - mort à Cordoue (Al-Andalus) en 10132) est l\'un des plus grands chirurgiens du monde musulman et un des pères de la chirurgie moderne.', '<p>On ne sait que peu de choses de sa vie en dehors de ce qu\'on apprend par ses ouvrages. Ses observations médicales concernent de hautes personnalités comme des esclaves, des musulmans comme des chrétiens ou des juifs. Cela indique son importance et l\'étendue de ses relations 6. Abu Al-Qasim fut médecin à la cour du calife Al-Hakam II, puis celui d\'Almanzor (Al Mansour)7, vizir et chef militaire.</p>\r\n\r\n<p>L’Al-Tasrif est divisé en trois parties : 1) sur la théorie et les généralités de la médecine ; 2) sur les maladies : le régime chez l\'enfant et les vieillards, la goutte, les rhumatismes, les abcès, les plaies, les poisons et les venins, les affections externes de la peau et la fièvre ; 3) sur la chirurgie.</p>\r\n\r\n<p>Le traité sur la chirurgie est divisé en trois livres, tous organisés dans l\'ordre « de la tête aux pieds », avec représentation illustrée (ce qui est rare dans les manuscrits musulmans) de tous les instruments nécessaires pour opérer. Ces représentations perdent de leur qualité au fur et à mesure de leurs copies. En 1998, on connaît 42 copies manuscrites en arabe, 27 en latin, 1 en hébreu et 1 en provençal, dispersées dans les plus grandes bibliothèques occidentales et du monde musulman ; celle en provençal est à la bibliothèque de Montpellier.</p>', '1000-09-19', 'images/techno/platre.png', 1),
(3, 'Notions importantes de médecine et de pharmacie', 'Galien, né à Pergame en Asie mineure en 129 et mort vers 2012, est un médecin grec de l\'Antiquité qui exerça à Pergame et à Rome où il soigna plusieurs empereurs.', '<p>Auteur prolifique et génial, il demeure dans l\'histoire un personnage exceptionnel qui sut allier une grande puissance spéculative et une recherche passionnée des réalités médicales3. En s\'appuyant à la fois sur la raison (logos) et l\'expérience (empeiria) qu\'il appelle « ses deux jambes », il s\'est efforcé tout au long de sa vie de construire un système explicatif global rassemblant toutes les parties de l\'art médical.</p>\r\n\r\n<p>Il est ainsi considéré comme le dernier des grands médecins créateurs de l\'Antiquité gréco-romaine et avec Hippocrate, un des fondateurs des grands principes de base sur lesquels repose la médecine occidentale5. Il a donné la priorité à l\'observation anatomique et a cherché à établir des hypothèses sur les processus physiologiques en procédant à des expérimentations sur les animaux.</p>\r\n\r\n<p>Son œuvre immense fut d\'abord en grande partie oubliée en Europe occidentale jusqu\'au xie siècle. Transmise à Byzance et dans le monde musulman, elle reviendra en Europe d\'abord à partir de traductions de l\'arabe en latin puis à partir de la Renaissance, des sources grecques d\'origine.</p>\r\n\r\n<p>La théorie médicale de Galien a dominé la médecine jusqu\'au xviiie siècle mais devra s\'incliner devant le développement irrésistible de la méthode expérimentale qui permettra d\'établir, sur une base empirique solide, les modèles du système cardiovasculaire, respiratoire, digestif et nerveux. Cette médecine gréco-romaine finit donc par être complètement éliminée de la pratique médicale occidentale et il n\'en subsiste plus rien aujourd\'hui.</p>\r\n\r\n<p>Le prénom « Claude » (Claudius), qui n\'existe pas dans les textes grecs, apparaît tardivement dans les traductions latines. En effet l\'abréviation latine Cl. (Clarissima) qui signifie « brillant » ou « illustre » était probablement apposé comme un titre (Cl. Galien : « le très illustre Galien ») ce qui a pu être pris à tort pour un prénom.</p>', '1000-09-19', 'images/techno/galien.jpg', 1),
(4, 'Nomenclature des espèces vivantes', 'Carl Linnæus, puis Carl von Linné après son anoblissement, né le 23 mai 1707 à Råshult et mort le 10 janvier 1778 à Uppsala, est un naturaliste suédois qui a posé les bases du système moderne de la nomenclature binominale. Considérant que la connaissance scientifique nécessite de nommer les choses.', '<p>Père du concept de biodiversité par son identification de près de 6 000 espèces végétales et 4 400 animales2, sa classification s\'inscrit dans un contexte historique plurimillénaire où la notion d\'évolution des espèces n\'existe pas encore, depuis la classification du philosophe grec Aristote, d\'une part, et la doctrine biblique créationniste, d\'autre part. Elle est donc fixiste et constitue le modèle dominant du rapport de proximité anatomique entre les espèces jusqu\'au xixe siècle. La classification intègrera le concept d\'évolution à la suite de Jean-Baptiste de Lamarck, fondateur du transformisme.</p>\r\n\r\n<p>Le grand nomenclateur que fut Linné, qui consacra sa vie à nommer la plupart des objets et êtres vivants, puis à les ordonner selon leur rang, eut lui-même maille à partir avec sa propre identité, son nom et même son prénom ayant été remaniés tant de fois au cours de sa vie qu’on ne dénombre pas moins de neuf binômes (on voulait dire bi-noms, en deux noms) et autant de synonymes.</p>\r\n\r\n<p>Aux xviie et xviiie siècles, la plupart des Suédois ne portent pas encore de noms de famille. Aussi le grand-père de Linné, conformément à la tradition scandinave, s’appelait Ingemar Bengtsson (signifiant « Ingemar, fils de Bengt ») et son propre fils, le père de Linné, fut d’abord connu sous le nom de « Nils Ingemarsson » (signifiant « Nils, fils d’Ingemar »).\r\n\r\nMais Nils, pour répondre aux exigences administratives lors de son inscription à l’université de Lund, doit choisir un patronyme. Sur les terres familiales pousse un grand tilleul. La propriété en porte déjà le nom : Linnagård (ou Linnegård), toponyme formé de linn (variante aujourd’hui obsolète de lind, « tilleul » en suédois) et de gård, « ferme »). Plusieurs membres de la famille s’en sont déjà inspirés pour former des patronymes comme Lindelius (à partir de lind) ou Tiliander (à partir de Tilia, « tilleul » en latin). Il est par ailleurs de bon ton, dans les milieux instruits de pratiquer le latin. Nils choisit donc une forme latinisée et devient « Nils Ingemarsson Linnæus ».</p>', '1753-09-01', 'images/techno/carl_von_linne.jpg', 1),
(5, 'Découverte hydrostatie mise en avant des propriétés des leviers ', 'La poussée d\'Archimède est la force particulière que subit un corps plongé en tout ou en partie dans un fluide (liquide ou gaz) et soumis à un champ de gravité.\r\nEn mécanique, un levier est une pièce rigide, allongée, généralement en liaison pivot ou en simple appui par rapport à une partie fixe, qui permet de transformer un mouvement. ', '<p>Si l’on entend par mécanisme la mise en place cohérente de plusieurs solides dans le but de transformer un mouvement, alors le levier est le plus simple de tous. Ce qui en fait probablement le premier mécanisme ou dispositif mécanique utilisé par l’Homme, bien avant la découverte de la roue. Il n’est formé que de deux solides : un appui (un caillou) et un levier (une branche, un bâton) qui disposés judicieusement permettent de démultiplier la force musculaire.</p>\r\n\r\n<p>Pour que le théorème s\'applique il faut que le fluide immergeant et le corps immergé soient au repos. Il faut également qu\'il soit possible de remplacer le corps immergé par du fluide immergeant sans rompre l\'équilibre, le contre-exemple étant le bouchon d\'une baignoire remplie d\'eau : si celui-ci est remplacé par de l\'eau, il est clair que la baignoire se vide et que le fluide n\'est alors plus au repos. Le théorème ne s\'applique pas puisque nous sommes dans un cas où le bouchon n\'est pas entièrement mouillé par le liquide et ne traverse pas sa surface libre.</p>', '1000-09-19', 'images/techno/archimede.jpg', 2),
(6, 'Volant d\'inertie', 'Un volant d\'inertie est un système rotatif permettant le stockage et la restitution d\'énergie cinétique. Une masse fixée sur un axe est mise en rotation par l\'application d\'un couple, augmentant sa vitesse de rotation et donc l\'énergie emmagasinée. La quantité d\'énergie est proportionnelle au carré de la vitesse de rotation.\r\n', '<p>En donnant de la vitesse au cylindre en rotation, on lui fournit de l\'énergie qui peut être récupérée en convertissant cette énergie cinétique en une autre énergie (électrique par exemple) ce qui a pour effet de ralentir progressivement la vitesse du volant.</p>\r\n\r\n<p>La capacité des volants d\'inertie se trouve typiquement entre 3 et 133 kWh1. Le temps de charge est typiquement de l\'ordre de quelques minutes, et l\'autonomie généralement comprise entre 15 et 30 minutes.</p>\r\n\r\n<p>Le temps de réponse très faible permet une grande réactivité du système pour la charge et décharge, ce qui permet d\'utiliser les volants d\'inertie dans le réseau électrique comme stockage de courte durée pour réguler la production électrique, ou pour lisser la production d\'énergie intermittente.</p>\r\n\r\n<p>Des systèmes de 2 à 6 kWh sont utilisés dans les relais télécoms.</p>\r\n\r\n<p>Les deux plus grandes installations de \"fermes\" de volants d\'inertie, réalisées par Beacon Power (en) , se trouvent aux États-Unis, et sont capables de fournir une puissance maximale de 20 MW pendant 5 minutes (pour un total de 1,66 MWh).</p>\r\n\r\n<p>Le procédé peut poser, pour les installations mobiles, un problème du fait du comportement gyroscopique du volant qui lorsqu\'il tourne à grande vitesse impose des efforts énormes sur les paliers. De plus, le choix du matériau est déterminé par sa résistance et sa vitesse périphérique maximale.</p>\r\n\r\n<p>Tableau de données pour différents matériaux utilisés, volant d\'inertie en forme de couronne mince avec rayon intérieur ri = 20 cm, rayon externe r0 = 25 cm, épaisseur du volant h = 40 cm.</p>', '1000-09-19', 'images/techno/inertie.jpg', 2),
(7, 'Blaise Pascal : machine à calculer', 'Une calculatrice mécanique, appelée selon l\'époque machine à calculer ou machine arithmétique, est une machine conçue pour simplifier et fiabiliser des opérations de calculs, et dont le fonctionnement est principalement mécanique.\r\n', '<p>Le nom machine arithmétique fut choisi par Blaise Pascal, et donc utilisé à partir de 1642 et pendant tout le xviiie siècle. Il fut suivi du nom machine à calculer, qui fut utilisé pendant le xixe siècle et la première moitié du xxe siècle. Le nom calculatrice mécanique, un néologisme de la deuxième moitié du xxe siècle, fut utilisé pour différencier les machines à calculer mécaniques des machines à calculer électroniques à partir de 1961, date de présentation de la première calculatrice entièrement électronique de Sumlock Comptometera.</p>\r\n\r\n<p>Les abaques, outils d\'aide au calcul, sont utilisés depuis plusieurs millénaires. Outre le fait de compter sur ses doigts, le plus ancien outil de calcul est probablement le bâton de comptage. Le boulier est inventé avant 2000 av. J.-C.</p>\r\n\r\n<p>John Napier introduisit les logarithmes et les tables de logarithmes en 1614 avec la publication de Mirifici logarithmorum canonis descriptio (les logarithmes transforment les multiplications en de simples additions et les divisions en soustractions). C\'est pendant l’écriture de ce livre, qui demandait beaucoup de calculs, qu\'il inventa les bâtons de Napier, qui furent décrit dans le livre Rabdologiæ seu Numerationis per Virgulas libri duo (1617).</p>\r\n\r\n<p>La règle à calcul, qui utilise le principe des logarithmes, fut inventée en 1622 par William Oughtred. Cet outil permet, par simple déplacement longitudinal d’échelles graduées, d’effectuer directement des opérations arithmétiques de multiplication et de division mais peut aussi servir à exécuter des opérations plus complexes, telles que le calcul de racines carrées, de cubiques, des calculs logarithmiques ou bien trigonométriques12. Il fut emmené sur cinq missions du programme Apollo dans les années 196013 et resta en usage jusqu\'à l\'invention de la calculatrice de poche vers 1970.</p>', '1642-05-12', 'images/techno/machine_calcul.jpg', 2),
(8, 'Calculateur quantique', 'Un calculateur quantique (anglais quantum computer, parfois traduit par ordinateur quantiquea, ou système informatique quantique), utilise les propriétés quantiques de la matière, telle que la superposition et l\'intrication afin d\'effectuer des opérations sur des données.', '<p>Google affirme avoir réalisé le premier “ordinateur quantique”\r\nDans un article brièvement apparu sur le site de la Nasa et repris par le Financial Time, le 20 septembre 2019, des chercheurs de Google affirment avoir atteint la “suprématie quantique”  en parvenant à faire effectuer un calcul bien spécifique à un calculateur quantique en seulement 3 minutes et 20 secondes, ce qui aurait demandé plus de 10 000 ans de calcul au plus puissant super-calculateur au monde (le Summit). Oui vous avez bien lu 10000 ans ! Cela fait de ce calcul, le premier calcul ne pouvant être exclusivement réalisé qu’avec un processeur quantique.</p>\r\n\r\n \r\n\r\nCe n’est pas en soi un “véritable ordinateur quantique” mais ce que l’on appelle un calculateur, les chercheurs de Google ayant indiqué que leurs machines quantiques ne pouvaient, à ce stade, effectuer qu’un seul calcul à la fois, et qu’il n’était à ce jour qu’expérimental. Le calculateur quantique de Google s’appellerait Sycamore et disposerait de plus de 50 qubits (quantum bits) et serait spécialisé dans la simulation de ce que l’on appelle un circuit quantique aléatoire.  Théoriquement pourtant, les calculateurs quantiques sont capables de résoudre des problèmes insolubles pour les ordinateurs classiques. Pour cela, ils s’appuient sur les propriétés de la physique quantique, qui décrit le monde à l’échelle des particules subatomiques.', '2020-08-27', 'images/techno/calculateur_quantique.jpg', 3),
(9, 'Loi des gaz parfaits', 'En physique, et plus particulièrement en thermodynamique, la loi des gaz parfaits, ou équation des gaz parfaits, est l\'équation d\'état applicable aux gaz parfaits. Elle a été établie en 1834 par Émile Clapeyron par combinaison de plusieurs lois des gaz établies antérieurement1.', '<p>La loi de Boyle-Mariotte est souvent appelée « loi de Boyle » par les anglophones, « loi de Mariotte » ou « loi de Boyle-Mariotte » par les francophones. Elle fut établie en 1662 par Robert Boyle et confirmée en 1676 par l\'abbé Edmé Mariotte.</p>\r\n\r\n<p>La loi de Boyle-Mariotte spécifie qu\'à température constante, la pression est inversement proportionnelle au volume et réciproquement. On met expérimentalement cette loi en évidence à l\'aide d\'un récipient hermétique de volume variable équipé d\'un manomètre. Lorsqu\'on réduit le volume, en veillant à ce que la température demeure constante, la pression augmente en proportion inverse, et le coefficient de proportionnalité est le même quel que soit le gaz utilisé.</p>', '1662-02-25', 'images/techno/robert_boyle.jpg', 3),
(10, 'Fission de l’uranium', 'L’uranium est l\'élément chimique de numéro atomique 92, de symbole U. Il fait partie de la famille des actinides.\r\n\r\nL\'uranium est le 48e élément naturel le plus abondant dans la croûte terrestre6, son abondance est supérieure à celle de l\'argent...', '<p>C\'est un métal lourd radioactif (émetteur alpha) de période très longue (~ 4,468 8 milliards d\'années pour l\'uranium 238 et ~ 703,8 millions pour l\'uranium 235). Sa radioactivité, additionnée à celle de ses descendants dans sa chaîne de désintégration, développe une puissance de 0,082 watt par tonne d\'uranium, ce qui en fait, avec le thorium 232 (quatre fois plus abondant, mais trois fois moins radioactif) et le potassium 40, la principale source de chaleur qui tend à maintenir les hautes températures du manteau terrestre, en ralentissant de beaucoup son refroidissement.</p>\r\n\r\n<p>L\'isotope 235U est le seul isotope fissile naturel. Sa fission libère une énergie voisine de 202,8 MeV par atome fissionné dont 9,6 MeV d\'énergie non récupérable, communiquée aux neutrinos produits lors de la fission. L\'énergie récupérable est plus d\'un million de fois supérieure à celle des combustibles fossiles pour une masse équivalente. De ce fait, l\'uranium est devenu la principale matière première utilisée par l\'industrie nucléaire.\r\n\r\nLa production mondiale d\'uranium s\'est élevée à environ 60 500 tonnes en 2015, réparties pour l\'essentiel entre le Kazakhstan (39 %), le Canada (22 %), l\'Australie (9 %), le Niger (7 %), la Russie (5 %), la Namibie (5 %) et l\'Ouzbékistan (4 %). Pour son utilisation dans les réacteurs nucléaires, les ressources récupérables à un coût inférieur à 130 dollars/kg d\'uranium étaient estimées en 2014 par l\'AIEA à 5,9 millions de tonnes dans le monde réparties essentiellement entre l\'Australie (29 %), le Kazakhstan (12 %), la Russie (9 %) et le Canada (8 %).</p>\r\n\r\n<p>L\'uranium fut mis en évidence en 1789 par le chimiste prussien Martin Heinrich Klaproth à partir de l\'analyse d\'un morceau de roche qu\'on lui avait apporté de la mine de Saint Joachimsthal8. Cette roche était de la pechblende, un minerai d\'uranium qui contient principalement de l\'U3O8. Klaproth parvint en la chauffant à en extraire un corps gris métallique. Dans sa communication du 24 septembre 1789 à l\'Académie royale prussienne des sciences et intitulée « Ueber den Uranit, ein neues Halbmetalln 1 », il proposa le nom d\'« urane » ou « uranite » au composé qu\'il venait d\'identifier (un oxyde d\'uranium et non le corps pur), en référence à la découverte de la planète Uranus faite par William Herschel en 17819. Cet oxyde, rebaptisé uranium en 1790, avait comme propriété de donner une fine fluorescence aux verres et une couleur jaune verdâtre aux émaux, si bien que la pechblende était extraite de la mine de Joachimsthal et de mines d\'étain en Cornouaille et des uranates alcalins utilisés (diuranate d\'ammonium et de sodium) par les verriers de Bohême et les céramistes saxons.</p>', '1938-02-05', 'images/techno/uranium.jpg', 3),
(11, 'Une collision entre deux trous noirs crée une nouveauté', 'Des chercheurs ont maintenant détecté le signal d’une collision ancienne entre deux trous noirs, qui a donné naissance à un nouveau trou noir d’une taille sans précédent. \r\n<p>«Il s’agit du plus gros \"bang\" observé par l’humanité depuis le \"Big Bang\"», a commenté Alan Weinstein, un physicien de l’université Caltech qui a participé à cette découverte.</p>', 'Les trous noirs sont des régions de l’espace si denses que même la lumière ne peut s’en échapper. Les astronomes leur connaissaient jusqu’à présent deux tailles: les petits formés par l’implosion d’une étoile (les trous noirs stellaires) et qui ont environ la taille d’une ville, et les supergéants qui sont des millions de fois plus massifs que notre Soleil et autour desquels orbitent des galaxies entières.\r\n\r\nSelon les calculs des astronomes, un trou noir d’une taille intermédiaire n’était pas logique, puisque les étoiles trop grosses au moment de leur implosion n’auraient rien laissé derrière elles.\r\n\r\nLes scientifiques croyaient que l’implosion d’une étoile pouvait donner naissance, tout au plus, à un trou noir ayant environ 70 fois la masse de notre Soleil, selon le physicien Nelson Christensen, qui dirige le Centre national de la recherche scientifique en France.\r\n\r\nPuis, en mai 2019, deux détecteurs ont repéré un signal qui s’est révélé être l’énergie produite par la collision entre deux trous noirs stellaires de grande taille. L’un avait 66 fois la masse du Soleil, et l’autre 85 fois la masse de notre étoile.\r\n\r\nCette collision a donné naissance au premier trou noir de taille intermédiaire jamais vu, avec une masse de 142 fois celle du Soleil.\r\n\r\nLa collision a généré une gigantesque vague d’énergie qui s’est propagée à travers l’espace à la vitesse de la lumière. C’est cette vague que des physiciens américains et européens ont repérée l’an dernier avec les détecteurs LIGO et Virgo. Les conclusions de leurs analyses sont publiées mercredi par les journaux scientifiques «Physical Review Letters et Astrophysical Journal Letters».\r\n\r\nPuisque les appareils détectent les ondes gravitationnelles comme signal audio, les chercheurs ont «entendu» la collision. Malgré sa violence, l’événement n’a duré qu’un dixième de seconde.\r\n\r\n«C’était un bruit sourd, a dit M. Weinstein. Ce n’est pas très impressionnant dans un haut-parleur.»\r\n\r\nLa collision s’est produite il y a environ sept milliards d’années, quand l’univers avait environ la moitié de son âge actuel. On ne l’a détectée que l’an dernier en raison de la distance inimaginable qui nous en sépare.\r\n\r\nCe n’est pas la première fois qu’une collision entre deux trous noirs est observée, mais les trous noirs impliqués étaient plus petits et même après la fusion, leur taille ne dépassait pas celle d’un trou noir stellaire typique.\r\n\r\nLes scientifiques ne comprennent toujours pas comment se forment les trous noirs gigantesques au coeur de galaxies, a dit M. Christensen, mais cette découverte pourrait leur donner des indices.\r\n\r\nPossiblement que, comme un jeu de Legos, de petits blocs forment de plus gros blocs, qui forment d’encore plus gros blocs, a expliqué Avi Loeb, un astronome d’Harvard qui n’a pas participé à cette étude.\r\n\r\nIl n’est ainsi pas impossible que le plus gros des deux trous noirs impliqués dans cette collision soit lui-même le résultat d’une collision précédente, croient MM. Weinstein et Christensen, ce qui ajoute de la crédibilité à la théorie des Legos.\r\n\r\nToutefois, les experts ne sont pas en mesure d’expliquer comment des trous noirs pourraient rencontrer suffisamment d’autres trous noirs pour constamment prendre de l’expansion. Il est donc possible que les super trous noirs aient tout simplement été formés immédiatement après le Big Bang.\r\n\r\n«L’astrophysique nous réserve constamment des surprises», a dit M. Weinstein.\r\n', '2020-09-02', 'images/techno/trou_noir.jpg', 4),
(22, 'Mythe de la Terre plate', 'Le mythe de la Terre plate est la légende urbaine selon laquelle, durant le Moyen Âge européen, la vision cosmologique dominante était celle d\'une Terre plate et non sphérique.\r\n\r\n', '<p>En réalité, au moins jusqu\'au xive siècle, pratiquement tous les érudits conservaient la vision d\'une Terre sphérique énoncée par les Grecs de l\'Antiquité3, en dépit de ce que pourraient laisser croire des représentations artistiques fantaisistes, comme l\'extérieur du fameux triptyque de Jérôme Bosch, Le Jardin des délices, représentant la Terre plate au fond d\'un globe.</p>\r\n\r\n<p>Selon Stephen Jay Gould, « il n\'y a jamais eu de période obscure à ce sujet parmi les lettrés (quoi qu\'ait pu penser le grand public) ; la connaissance établie par les Grecs de la rotondité de la Terre ne s\'est jamais perdue, et tous les grands érudits médiévaux acceptaient cela comme un résultat acquis de la cosmologie »5. Les historiens David Lindberg (en) et Ronald Numbers (en) font remarquer que « pratiquement aucun érudit chrétien médiéval n\'ignorait la sphéricité de la Terre, et la plupart connaissaient même une valeur approchée de sa circonférence ».</p>\r\n\r\n<p>Selon l\'historien Jeffrey Burton Russell (en), c\'est entre 1870 et 1920 que la croyance en une ignorance médiévale a le plus prospéré, dans le contexte idéologique créé par les luttes autour de la théorie de l\'évolution. Russell réaffirme que « quasiment aucune personne éduquée ne croyait que la Terre était plate », et attribue la popularisation du mythe à des écrits de John William Draper, Andrew Dickson White et Washington Irving</p>\r\n\r\n<p>Durant le xixe siècle, la perception d\'un antagonisme entre la science et la religion est particulièrement forte. Les affrontements autour de la révolution darwinienne contribuèrent à la naissance de la thèse du conflit5, une vision de l\'histoire selon laquelle toute interaction entre science et religion amène presque inévitablement à une hostilité déclarée, la religion jouant le rôle d\'agresseur contre les nouvelles idées scientifiques.</p>', '1000-09-19', 'images/techno/terre_plate.jpg', 5),
(23, 'Reptile humanoïde', 'Le reptile humanoïde est une créature imaginaire représentée sous la forme de reptile à l\'allure humaine. Il est connu sous différents noms : reptilien, reptoïde, dinosauroïde, homme-lézard, saurial, reptite, draconien, voire dragon.\r\n\r\n', '<p>Le reptile humanoïde est une figure qui se retrouve dans différents mythes et légendes, ainsi que dans la culture populaire. Certains partisans de théorie du complot pensent que ces créatures existent bel et bien et qu\'elles œuvrent dans l\'ombre dans le but de manipuler l\'espèce humaine.</p>\r\n\r\n<p>On retrouve des reptiles humanoïdes dans les différents mythes et légendes, par exemple l’histoire de la fée Mélusine1. Ce sont souvent des créatures mi-homme mi-serpent. On rencontre aussi des formes de dragons humanoïdes dans les cultures asiatiques. Bien que créature fantastique, le dragon est considéré comme un reptile. Les serpents, dragons ou autres appellations similaires ont souvent désigné des êtres de pouvoir liés le plus souvent aux éléments de la nature[réf. souhaitée].</p>\r\n\r\n<p>Une expérience de pensée émise en 1982 par le paléontologue Dale Russell, basée sur sa découverte, du premier crâne de sténonychosaure2, évoque les reptiles humanoïdes, appelés aussi les « dinosauroïdes ». Selon cette idée, l\'espèce dominante sur la planète Terre aurait été une évolution des dinosaures, et non les humains (des mammifères), si les dinosaures non aviaires (entre autres) n’avaient pas disparu durant la crise K-T3.</p>', '1967-09-19', 'images/techno/reptilien.png', 5);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `cat`
--
ALTER TABLE `cat`
  ADD PRIMARY KEY (`id_cat`),
  ADD UNIQUE KEY `id_cat` (`id_cat`);

--
-- Index pour la table `commentaire`
--
ALTER TABLE `commentaire`
  ADD PRIMARY KEY (`id_commentaire`),
  ADD UNIQUE KEY `id_commentaire` (`id_commentaire`),
  ADD KEY `id_techno` (`id_techno`);

--
-- Index pour la table `techno`
--
ALTER TABLE `techno`
  ADD PRIMARY KEY (`id_techno`),
  ADD UNIQUE KEY `id_techno` (`id_techno`),
  ADD KEY `id_cat` (`id_cat`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `cat`
--
ALTER TABLE `cat`
  MODIFY `id_cat` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `commentaire`
--
ALTER TABLE `commentaire`
  MODIFY `id_commentaire` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `techno`
--
ALTER TABLE `techno`
  MODIFY `id_techno` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `commentaire`
--
ALTER TABLE `commentaire`
  ADD CONSTRAINT `commentaire_ibfk_1` FOREIGN KEY (`id_techno`) REFERENCES `techno` (`id_techno`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `techno`
--
ALTER TABLE `techno`
  ADD CONSTRAINT `techno_ibfk_1` FOREIGN KEY (`id_cat`) REFERENCES `cat` (`id_cat`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
