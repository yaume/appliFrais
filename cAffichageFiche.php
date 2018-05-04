<?php
/*
 * Script de contrôle et d'affichage du cas d'utilisation "Valider fiche de frais"
 * @package default
 * @todo  RAS
 */
$repInclude = './include/';
require($repInclude . "_init.inc.php");

// page inaccessible si visiteur non connecté  ou si utilisateur est un visiteur médical
if (!estUtilisateurConnecte() || $_SESSION["foncUser"] != "comptable") {
    header("Location: cAccueil.php");
}
require($repInclude . "_entete.inc.html");
require($repInclude . "_sommaire.inc.php");
$mois = filter_input(INPUT_GET, 'mois');
$utilisateur = filter_input(INPUT_GET, 'utilisateur');
$fiche = obtenirFiche($idConnexion, $mois, $utilisateur);
$date = str_split($fiche['mois'], 4);
setlocale(LC_TIME, "fr_FR");
$datemodif = strtotime($fiche['dateModif']);
$datemodif = date('d/m/Y', $datemodif);
$lignes = ligneForfais($idConnexion, $mois, $utilisateur);
$horsforfait = horsforfait($idConnexion, $mois, $utilisateur);
?>
<div id="contenu">
    <h2>Fiche <?php echo $date[1] . "/" . $date[0] . " " . $fiche['nom'] . " " . $fiche['prenom'] . " " . $datemodif; ?> </h2>
    <h3>Frais forfait</h3>
    <table class ="listeLegere">
        <tr>
            <th class="qteForfait">Quantité</th>
            <th class="qteForfait">Libellé</th>
            <th class="qteForfait">Prix unitaire</th>
            <th class="qteForfait">Prix total</th>
        </tr>
        <?php foreach ($lignes as $ligne){
                 ?>
        <tr>
            <td><?php echo $ligne['quantite'];?></td>
            <td><?php echo $ligne['libelle'];?></td>
            <td><?php echo $ligne['montant'];?></td>
            <td><?php echo $ligne['quantite'] * $ligne['montant'];?></td>
        </tr>
            <?php }?>
        <tr>
            <td colspan="2"></td>
            <th>Total</th>
            <td><?php
            $total = 0;
            foreach ($lignes as $ligne){
                $total += $ligne['montant']*$ligne['quantite'];
            }
            echo $total;
?></td>
        </tr>
    </table>
    <h3>Frais hors forfait</h3>
    <table class ="listeLegere">
        <tr>
            <th class="qteForfait">Libellé</th>
            <th class="qteForfait">Date</th>
            <th class="qteForfait">Montant</th>
        </tr>
                <?php if ($horsforfait){foreach ($horsforfait as $ligne){
                 ?>
        <tr>
            <td><?php echo $ligne['libelle'];?></td>
            <td><?php echo $ligne['date'];?></td>
            <td><?php echo $ligne['montant'];?></td>
        </tr>
                <?php }}?>
        <tr><?php if ($horsforfait):?>
            <td></td>
            <th>Total</th>
            <td><?php
            $totalhors = 0;
            foreach ($horsforfait as $ligne){
                $total += $ligne['montant'];
            }
            echo $totalhors;
        endif;
?>
            </td>
        </tr>
    </table>
</div>
<?php
require($repInclude . "_pied.inc.html");
require($repInclude . "_fin.inc.php");
?>