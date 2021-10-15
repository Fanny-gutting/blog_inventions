<?php
class Techno{
  public $id_techno;
  public $nom_techno;
  public $extrait_techno;
  public $description_techno;
  public $dates_techno;
  public $images_techno;
  public $id_cat;

        function Create() {
        
        // construction de la requête :nom, :prenom sont les valeurs à insérées
        $sql = 'INSERT INTO techno (nom_techno, extrait_techno, description_techno, dates_techno, images_techno, id_cat) 
                VALUES (:nom_techno, :extrait_techno, :description_techno, :dates_techno, :images_techno, :id_cat);';
     
        // connexion à la base de données
        $pdo = connexion();
     
        // préparation de la requête
        $query = $pdo->prepare($sql);
     
        // on donne une valeur aux paramètres à partir des attributs de l'objet courant
        $query->bindValue(':nom_techno', $this->nom_techno, PDO::PARAM_STR);
        $query->bindValue(':extrait_techno', $this->extrait_techno, PDO::PARAM_STR);
        $query->bindValue(':description_techno', $this->description_techno, PDO::PARAM_STR);
        $query->bindValue(':dates_techno', $this->dates_techno, PDO::PARAM_STR);
        $query->bindValue(':images_techno', $this->images_techno, PDO::PARAM_STR);
        $query->bindValue(':id_cat', $this->id_cat, PDO::PARAM_STR);
     
        // exécution de la requête
        $query->execute();
     
        // on récupère la clé techno inséré
        $this->id_techno = $pdo->lastInsertId();
    
      }

      function lirePost(){
        $this->nom_techno =$_POST["nom_techno"];
        $this->extrait_techno =$_POST["extrait_techno"];
        $this->description_techno =$_POST["description_techno"];
        $this->dates_techno=$_POST["dates_techno"];
        $this->images_techno=$_POST["images_techno"];
        $this->id_cat =$_POST["id_cat"];
      }

      
      static function Delete($id_art) {
        // construction de la requête :nom, :prenom sont les valeurs à insérées
        $sql = 'DELETE FROM techno WHERE id_techno = :id_techno;';
     
        // connexion à la base de données
        $pdo = connexion();
     
        // préparation de la requête
        $query = $pdo->prepare($sql);
     
        // on lie le paramètre :id à la variable $id reçue
        $query->bindValue(':id_techno', $id_art, PDO::PARAM_INT);
     
        // exécution de la requête
        $query->execute();
      }
      
}