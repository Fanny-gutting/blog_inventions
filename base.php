<?php include('include/twig.php');
include_once('include/sql.php');
$twig=init_twig();


// // récupération de la variable page sur l'URL
if (isset($_GET['page'])) $page=$_GET['page'];
else $page='';

// récupération de la variable action sur l'URL
if (isset($_GET['action'])) $action=$_GET['action'];
else $action='';

// récupération de l'id s'il existe (par convention la clé 0 correspond à un id inexistant)
if (isset($_GET['id'])) $id=intval($_GET['id']);
else $id=0;

switch($page) {

  case 'categorie':
  switch($action) {

    case 'categories' : 
      $modele='categories.html';
    $data=['cat'=>Categorie::readAll()];
    break;

    case 'liste_article_cat' :
      $modele='liste_article_cat.html';
      $data=['liste'=>Categ::readCat($id), 'cat'=>Categorie::readAll()];
    break;

    default : 
    $modele='404.html';
      $data=[];
  }
  break;

  case 'article':
  switch ($action) {
  
    case 'articles' : 
      $modele='articles.html';
      $data=['liste'=>Tech::readTechno($id), 'techno'=>TechCat::readTech()];
    break;

    case 'createCom':
      $objet = new Comm();
      $objet->lirePost();
      $objet->CreateCom();
    break;

    case 'articles_recent' : 
      $modele='articles_recent.html';
      $data=['liste'=>Order::readOrder(), 'cat'=>Categorie::readAll()];
      break;

    default : 
    $modele='404.html';
    $data=[];
  }
break;

case 'cdu':
    switch ($action) {
    case 'create_cat' : 
        $objet = new Cat();
        $objet->lirePost();
        $objet->Create();
        $modele='formulaire_create.html';
        $data=['create'=>$objet, 'cat'=>Categorie::readAll()];
    break;

      case 'create_techno' : 
        $objet = new Techno();
        $objet->lirePost();
        $objet->Create();
        $modele='formulaire_create.html';
        $data=['create'=>$objet, 'cat'=>Categorie::readAll()];
      break;

      case 'delete_cat' : 
        $modele='categories.html';
        $data=['delete'=>Cat::Delete($id), 'cat'=>Categorie::readAll()];
    break;

    case 'delete_techno' : 
        $modele='articles.html';
        $data=['delete'=>Techno::Delete($id), 'liste'=>TechCat::readTech()];
    break;

      default : 
      $modele='formulaire_create.html';
      $data=['cat'=>Categorie::readAll(), 'liste'=>TechCat::readTech()];
    }
  break;

  case 'updateCat':
    switch ($action){
        case 'update_cat' : 
          $objet = new Cat();
          $objet-> lirePostCat();
          $objet-> Update($id);

          $modele='update_cat.html';
          $data=['update'=>$objet, 'cat'=>One::readOne($id)];
            
        break;

        default : 
      $modele='update_cat.html';
      $data=['cat'=>One::readOne($id)];
    }
break;

    default : 
    $modele='index.html';
    $data=['liste'=>TechCat::readTech(), 'cat'=>Categorie::readAll()];
}

// Affichage du modèle choisi avec les données récupérées
echo $twig->render($modele, $data);





// switch($action){

//   case 'page_liste_article_cat' :
//       $modele = 'liste_article_cat.html';
//       $data = ['liste' => Categorie::readCat($id),
//       'cat' => Categorie::readAll()];
//  
//   break;

//   case 'page_categories' :
//     $modele = 'categories.html';
//     $data = ['cat' => Categorie::readAll()];
//     break;

//   case 'page_articles' :
//       $modele = 'articles.html';
//       $data = ['techno' => Article::readTechno($id)];
//       break;

//   case 'page_articles_recent' :
//     $modele = 'articles_recent.html';
//     $data = ['order' => Article::readOrder()];
//     break;
      
//   default :
//     $modele = 'accueil.html';
//     $data = ['liste' => Article::readTech()];
//   break;
  
// }











// case 'page_liste_article_cat':
//             if (isset($_GET["cat"])) {
//                 $tableau = Categorie::readCat($_GET["cat"]);
//             } else {
//             }
//             echo $twig->render('liste_article_cat.html', [
//                 'liste' => $tableau,
//             ]);
//             break;

//       case 'page_categories':
//         if (isset($_GET["cat"])) {
//             $tableau = Categorie::readCat($_GET["cat"]);
//         } else {
//         $tableau = Categorie::readAll();
//     }
//         echo $twig->render('categories.html', [
//             'cat' => $tableau,
//         ]);
//         break;


//     case 'page_articles':
//         if (isset($_GET["techno"])) {
//             $tableau = Article::readTechno($_GET["techno"]);
//         } else {
//             $tableau = Categorie::readAll();
//         }
//         echo $twig->render('articles.html', [
//             'techno' => $tableau,
//         ]);
//         break;


//       default:
//         // Utilise le moteur $twig il faut :
//         // - indiquer le nom du modèle à utiliser : test.html
//         // - placer les données dans un tableau associatif
//         $tableau = Article::readTech();
//         echo $twig->render('accueil.html', [
//             'liste' => $tableau,
//         ]);

//         }   






// // On crée un objet vide
// $techno = new Techno();

// // On lui donne des valeurs
// $techno->modifier('Victor', 'Hugo');

// // On exécute la requête
// $techno->create();

// // On vérifie si la clé a été mise à jour
// echo 'Nouvel Id : '.$auteur->id;

?>