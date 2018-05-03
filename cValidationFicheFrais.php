<?php
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$repInclude = './include/';
require($repInclude . "_init.inc.php");
if (estUtilisateurConnecte()) {
    $idUser = obtenirIdUserConnecte();
    $lgUser = obtenirDetailUtilisateur($idConnexion, $idUser);
    $fonction = $lgUser ['fonction'];
}
// page inaccessible si utilisateur non connecté  ou si utilisateur est un utilisateur médical
if (!estUtilisateurConnecte() || $fonction == 'visiteur') {
    header("Location: cAcceuil.php");
}
require($repInclude . "_entete.inc.html");
require($repInclude . "_sommaire.inc.php");
$fiches = obtenirFiches($idConnexion);
?>
<div id=contenu>
    <?php
    ?>
    <h2> Validation des fiches de frais </h2>
    <?php
    if (!empty($fiches)) {
        ?>
        <table class ="listeLegere">
            <tr>
                <th class="qteForfait">Nom</th>
                <th class="qteForfait">Prenom</th>
                <th class="qteForfait">Fiche de frais</th>
                <th class="qteForfait">Etat</th>
            </tr>
            <?php foreach ($fiches as $fiche) { ?>
                <tr>
                    <td><?php echo $fiche['nom']; ?></td>
                    <td><?php echo $fiche['prenom']; ?></td>
                    <td><a href="cAffichageFicheFrais.php?id=<?php echo $fiche['id'] ?>"> lien vers la fiche </a></td>
                    <td><?php echo $fiche['etat']; ?></td>
                </tr>
                <?php
            }
            ?>
        </table>
        <?php } else {
        ?>
        <p class=info> Aucune fiche a valider </p>
        <?php
    }
    ?>

</div>
