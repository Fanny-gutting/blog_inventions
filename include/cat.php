<?php
class Cat{
  public $id_cat;
  public $nom_cat;
  public $images_cat;

  
        function Create() {
            
        // construction de la requête :nom, :prenom sont les valeurs à insérées
        $sql = 'INSERT INTO cat (nom_cat, images_cat) 
                VALUES (:nom_cat, :images_cat);';
     
        // connexion à la base de données
        $pdo = connexion();
     
        // préparation de la requête
        $query = $pdo->prepare($sql);
     
        // on donne une valeur aux paramètres à partir des attributs de l'objet courant
        $query->bindValue(':nom_cat', $this->nom_cat, PDO::PARAM_STR);
        $query->bindValue(':images_cat', $this->images_cat, PDO::PARAM_STR);
     
        // exécution de la requête
        $query->execute();
     
        // on récupère la clé cat inséré
        $this->id_cat = $pdo->lastInsertId();
    
      }

      static function Delete($id_cat) {
        // construction de la requête :nom, :prenom sont les valeurs à insérées
        $sql = 'DELETE FROM cat WHERE id_cat = :id_cat;';
     
        // connexion à la base de données
        $pdo = connexion();
     
        // préparation de la requête
        $query = $pdo->prepare($sql);
     
        // on lie le paramètre :id à la variable $id reçue
        $query->bindValue(':id_cat', $id_cat, PDO::PARAM_INT);
     
        // exécution de la requête
        $query->execute();
      }

      function Update($id) {
        // construction de la requête :nom, :prenom sont les valeurs à insérées
        $sql = 'UPDATE cat SET nom_cat = :nom_cat , images_cat = :images_cat WHERE id_cat = :id_cat;';
     
        // connexion à la base de données
        $pdo = connexion();
     
        // préparation de la requête
        $query = $pdo->prepare($sql);
     
        // on donne une valeur aux paramètres à partir des attributs de l'objet courant
        $query->bindValue(':id_cat', $id, PDO::PARAM_INT);
        $query->bindValue(':nom_cat', $this->nom_cat, PDO::PARAM_STR);
        $query->bindValue(':images_cat', $this->images_cat, PDO::PARAM_STR);

     
        // exécution de la requête
        $query->execute();
      }
      function lirePostCat(){
        if(isset($_POST["nom_cat"])){
            $this->nom_cat = $_POST["nom_cat"];
        }

        if(isset($_POST["images_cat"])){
            $this->images_cat = $_POST["images_cat"];
        }
    }
      function lirePost(){
        $this->nom_cat =$_POST["nom_cat"];
        $this->images_cat =$_POST["images_cat"];
      }
}