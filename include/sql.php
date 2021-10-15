<?php
// fichier sql.php
include_once('connexion.php');
include_once('techno.php');
include_once('cat.php');
include_once('commentaire.php');
 
// ... travail avec la base de données

class Categorie {
    static function readAll()
    {
        // définition de la requête SQL
        $sql = 'SELECT * FROM cat';

        // connexion
        $pdo = connexion();

        // préparation de la requête
        $query = $pdo->prepare($sql);

        // exécution de la requête
        $query->execute();

        // récupération de toutes les lignes sous forme d'objets
        $tableau = $query->fetchAll(PDO::FETCH_CLASS, 'Categorie');

        // retourne le tableau d'objets
        return $tableau;
    }
}
class Categ{
    static function readCat($idcat)
    {
        // définition de la requête SQL
        $sql = 'SELECT id_techno, nom_techno, extrait_techno, description_techno, dates_techno, images_techno, techno.id_cat, cat.nom_cat FROM techno 
                INNER JOIN cat
                ON techno.id_cat=cat.id_cat
                WHERE cat.id_cat=:id_cat;';
        
        // connexion
        $pdo = connexion();

        // préparation de la requête
        $query = $pdo->prepare($sql);
        $query->bindValue(':id_cat', $idcat, PDO::PARAM_STR);

        // exécution de la requête
        $query->execute();

        // récupération de toutes les lignes sous forme d'objets
        $tableau = $query->fetchAll(PDO::FETCH_CLASS, 'Cat');

        // retourne le tableau d'objets
        return $tableau;
    }
}


class TechCat{
    static function readTech()
    {
        // définition de la requête SQL
        $sql = 'SELECT * FROM techno cat ';

        // connexion
        $pdo = connexion();

        // préparation de la requête
        $query = $pdo->prepare($sql);

        // exécution de la requête
        $query->execute();

        // récupération de toutes les lignes sous forme d'objets
        $tableau = $query->fetchAll(PDO::FETCH_CLASS, 'TechCat');

        // retourne le tableau d'objets
        return $tableau;
    }
}
class Tech{
    static function readTechno($idtechno)
    {
        // définition de la requête SQL
        $sql = 'SELECT id_techno, nom_techno, extrait_techno, description_techno, dates_techno, images_techno, techno.id_cat FROM techno 
                WHERE techno.id_techno=:id_techno;';
        
        // connexion
        $pdo = connexion();

        // préparation de la requête
        $query = $pdo->prepare($sql);
        $query->bindValue(':id_techno', $idtechno, PDO::PARAM_STR);

        // exécution de la requête
        $query->execute();

        // récupération de toutes les lignes sous forme d'objets
        $tableau = $query->fetchObject('Tech');

        // retourne le tableau d'objets
        return $tableau;
    }
}
class Order{
    static function readOrder()
    {
        // définition de la requête SQL
        $sql = 'SELECT id_techno, nom_techno, extrait_techno, description_techno, dates_techno, images_techno FROM techno 
                ORDER BY dates_techno DESC;';
        
        // connexion
        $pdo = connexion();

        // préparation de la requête
        $query = $pdo->prepare($sql);

        // exécution de la requête
        $query->execute();

        // récupération de toutes les lignes sous forme d'objets
        $tableau = $query->fetchAll(PDO::FETCH_CLASS, 'Order');

        // retourne le tableau d'objets
        return $tableau;
    }
}

class One{
    static function readOne($id_categorie)
        {
            // définition de la requête SQL
            $sql = 'SELECT * FROM cat
                    WHERE cat.id_cat=:id_cat;';
                
            // connexion
            $pdo = connexion();
        
            // préparation de la requête
            $query = $pdo->prepare($sql);
            $query->bindValue(':id_cat', $id_categorie, PDO::PARAM_STR);
        
            // exécution de la requête
            $query->execute();
        
            // récupération de toutes les lignes sous forme d'objets
            $tableau = $query->fetchAll(PDO::FETCH_CLASS, 'One');
        
            // retourne le tableau d'objets
            return $tableau;
    }
}



