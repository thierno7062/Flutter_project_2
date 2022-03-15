// ignore_for_file: prefer_const_constructors, deprecated_member_use, avoid_print, prefer_const_literals_to_create_immutables, prefer_final_fields, unused_field

import 'package:flutter/material.dart';

class TermScreen extends StatefulWidget {
  final Function(int) onChangedStep;

  const TermScreen({
    Key? key,
    required this.onChangedStep,
  }) : super(key: key);

  @override
  State<TermScreen> createState() => _TermScreenState();
}

class _TermScreenState extends State<TermScreen> {
  late ScrollController _scrollController;
  bool _termReaded = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scrollController = ScrollController();

    _scrollController.addListener(() {
      if (_scrollController.offset >=
              _scrollController.position.maxScrollExtent &&
          !_scrollController.position.outOfRange) {
        setState(() => _termReaded = true);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          titleSpacing: 0.0,
          elevation: 0,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          title: Text(
            'Terms & Comditions',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.black,
            onPressed: () => widget.onChangedStep(0),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.only(
            left: 20.0,
            right: 20.0,
            bottom: 15.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  controller: _scrollController,
                  physics: AlwaysScrollableScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Pour la création du compte de l’Utilisateur, la collecte des informations au moment de l’inscription sur le site est nécessaire et obligatoire. Conformément à la loi n°78-17 du 6 janvier relative à l’informatique, aux fichiers et aux libertés, la collecte et le traitement d’informations personnelles s’effectuent dans le respect de la vie privée.Suivant la loi Informatique et Libertés en date du 6 janvier 1978, articles 39 et 40, l’Utilisateur dispose du droit d’accéder, de rectifier, de supprimer et d’opposer ses données personnelles. L’exercice de ce droit s’effectue par Le formulaire de contact ;Son espace client.Le Client reconnaît que les filtres anti-spam peuvent empêcher jusqu’à 25% des messages d’e-mail marketing du Client d’être envoyés dans les boîtes de réception des destinataires. Le Client reconnaît que cela est dû aux filtres anti-spam sur les serveurs des Destinataires et non à l’inexactitude ou à l’erreur des Données. Par conséquent, la Société ne donne aucune garantie et n’est pas une condition de la Licence et le Client n’aura pas le droit de refuser de payer tout montant dû à la Société pour les Données sous Licence si les filtres anti-spam empêchent la livraison des e-mails du Client aux Récipiendaires.Le Client reconnaît et accepte que la Société peut planter jusqu’à cinq « semences » par 1 000 Destinataires dans le but de faire respecter toute violation de la Licence. Aux fins de la licence, on entend par cas de force majeure un événement indépendant de la volonté raisonnable de la Société, notamment une grève, un lock-out ou tout autre conflit du travail (impliquant le personnel de la Société ou de toute autre partie), une panne de service public ou de réseau de transport, une catastrophe naturelle, une guerre, une émeute, des troubles civils, un dommage malveillance, le respect de toute loi ou ordonnance gouvernementale, règle, réglementation ou directive, un accident, une défaillance des usines ou des machines, une incendie, une inondation, un orage ou le défaut des fournisseurs ou sous-entrepreneurs. Tout avis ou autre communication devant être donné à une partie en vertu de la licence ou en rapport avec celle-ci doit être fait par écrit et doit être remis à l’autre partie personnellement ou envoyé par courrier affranchi de première classe, par courrier recommandé ou par messagerie commerciale, à son siège social (si une société) ou (dans tout autre cas) à son établissement principal, ou envoyé par télécopie au numéro principal de télécopie de l’autre partie. Tout avis ou autre communication est réputé avoir été dûment reçu s’il est remis en mains propres, s’il est laissé à l’adresse susmentionnée ou, s’il est envoyé par courrier affranchi en première classe ou recommandé, à 9 h le deuxième jour ouvrable suivant son envoi, ou s’il est livré par messagerie commerciale, à la date et au moment où le reçu du courrier est signé ou, si le courrier est envoyé par télécopie, au lendemain.Pas de partenariat : Aucune disposition de la licence n’a pour but ou n’est réputée constituer un partenariat ou une coentreprise de quelque nature que ce soit entre l’une ou l’autre des parties, ni constituer l’agent d’une autre partie, à quelque fin que ce soit. Aucune partie n’a le pouvoir d’agir en qualité de mandataire de l’autre partie ou de la lier de quelque manière que ce soit.Tiers : Une personne qui n’est pas partie à la licence n’a aucun droit en vertu de celle-ci ou à son égard.Avis : Tout avis ou autre communication devant être donné à une partie en vertu de la licence ou en rapport avec celle-ci doit être fait par écrit et doit être remis à l’autre partie personnellement ou envoyé par courrier affranchi de première classe, par courrier recommandé ou par messagerie commerciale, à son siège social (si une société) ou (dans tout autre cas) à son établissement principal, ou envoyé par télécopie au numéro principal de télécopie de l’autre partie. Tout avis ou autre communication est réputé avoir été dûment reçu s’il est remis en mains propres, s’il est laissé à l’adresse susmentionnée ou, s’il est envoyé par courrier affranchi en première classe ou recommandé, à 9 h le deuxième jour ouvrable suivant son envoi, ou s’il est livré par messagerie commerciale, à la date et au moment où le reçu du courrier est signé ou, si le courrier est envoyé par télécopie, au lendemain.Avis : Tout avis ou autre communication devant être donné à une partie en vertu de la licence ou en rapport avec celle-ci doit être fait par écrit et doit être remis à l’autre partie personnellement ou envoyé par courrier affranchi de première classe, par courrier recommandé ou par messagerie commerciale, à son siège social (si une société) ou (dans tout autre cas) à son établissement principal, ou envoyé par télécopie au numéro principal de télécopie de l’autre partie. Tout avis ou autre communication est réputé avoir été dûment reçu s’il est remis en mains propres, s’il est laissé à l’adresse susmentionnée ou, s’il est envoyé par courrier affranchi en première classe ou recommandé, à 9 h le deuxième jour ouvrable suivant son envoi, ou s’il est livré par messagerie commerciale, à la date et au moment où le reçu du courrier est signé ou, si le courrier est envoyé par télécopie, au lendemain.Avis : Tout avis ou autre communication devant être donné à une partie en vertu de la licence ou en rapport avec celle-ci doit être fait par écrit et doit être remis à l’autre partie personnellement ou envoyé par courrier affranchi de première classe, par courrier recommandé ou par messagerie commerciale, à son siège social (si une société) ou (dans tout autre cas) à son établissement principal, ou envoyé par télécopie au numéro principal de télécopie de l’autre partie. Tout avis ou autre communication est réputé avoir été dûment reçu s’il est remis en mains propres, s’il est laissé à l’adresse susmentionnée ou, s’il est envoyé par courrier affranchi en première classe ou recommandé, à 9 h le deuxième jour ouvrable suivant son envoi, ou s’il est livré par messagerie commerciale, à la date et au moment où le reçu du courrier est signé ou, si le courrier est envoyé par télécopie, au lendemain.Avis : Tout avis ou autre communication devant être donné à une partie en vertu de la licence ou en rapport avec celle-ci doit être fait par écrit et doit être remis à l’autre partie personnellement ou envoyé par courrier affranchi de première classe, par courrier recommandé ou par messagerie commerciale, à son siège social (si une société) ou (dans tout autre cas) à son établissement principal, ou envoyé par télécopie au numéro principal de télécopie de l’autre partie. Tout avis ou autre communication est réputé avoir été dûment reçu s’il est remis en mains propres, s’il est laissé à l’adresse susmentionnée ou, s’il est envoyé par courrier affranchi en première classe ou recommandé, à 9 h le deuxième jour ouvrable suivant son envoi, ou s’il est livré par messagerie commerciale, à la date et au moment où le reçu du courrier est signé ou, si le courrier est envoyé par télécopie, au lendemain.Avis : Tout avis ou autre communication devant être donné à une partie en vertu de la licence ou en rapport avec celle-ci doit être fait par écrit et doit être remis à l’autre partie personnellement ou envoyé par courrier affranchi de première classe, par courrier recommandé ou par messagerie commerciale, à son siège social (si une société) ou (dans tout autre cas) à son établissement principal, ou envoyé par télécopie au numéro principal de télécopie de l’autre partie. Tout avis ou autre communication est réputé avoir été dûment reçu s’il est remis en mains propres, s’il est laissé à l’adresse susmentionnée ou, s’il est envoyé par courrier affranchi en première classe ou recommandé, à 9 h le deuxième jour ouvrable suivant son envoi, ou s’il est livré par messagerie commerciale, à la date et au moment où le reçu du courrier est signé ou, si le courrier est envoyé par télécopie, au lendemain.Avis : Tout avis ou autre communication devant être donné à une partie en vertu de la licence ou en rapport avec celle-ci doit être fait par écrit et doit être remis à l’autre partie personnellement ou envoyé par courrier affranchi de première classe, par courrier recommandé ou par messagerie commerciale, à son siège social (si une société) ou (dans tout autre cas) à son établissement principal, ou envoyé par télécopie au numéro principal de télécopie de l’autre partie. Tout avis ou autre communication est réputé avoir été dûment reçu s’il est remis en mains propres, s’il est laissé à l’adresse susmentionnée ou, s’il est envoyé par courrier affranchi en première classe ou recommandé, à 9 h le deuxième jour ouvrable suivant son envoi, ou s’il est livré par messagerie commerciale, à la date et au moment où le reçu du courrier est signé ou, si le courrier est envoyé par télécopie, au lendemain.Avis : Tout avis ou autre communication devant être donné à une partie en vertu de la licence ou en rapport avec celle-ci doit être fait par écrit et doit être remis à l’autre partie personnellement ou envoyé par courrier affranchi de première classe, par courrier recommandé ou par messagerie commerciale, à son siège social (si une société) ou (dans tout autre cas) à son établissement principal, ou envoyé par télécopie au numéro principal de télécopie de l’autre partie. Tout avis ou autre communication est réputé avoir été dûment reçu s’il est remis en mains propres, s’il est laissé à l’adresse susmentionnée ou, s’il est envoyé par courrier affranchi en première classe ou recommandé, à 9 h le deuxième jour ouvrable suivant son envoi, ou s’il est livré par messagerie commerciale, à la date et au moment où le reçu du courrier est signé ou, si le courrier est envoyé par télécopie, au lendemain.Avis : Tout avis ou autre communication devant être donné à une partie en vertu de la licence ou en rapport avec celle-ci doit être fait par écrit et doit être remis à l’autre partie personnellement ou envoyé par courrier affranchi de première classe, par courrier recommandé ou par messagerie commerciale, à son siège social (si une société) ou (dans tout autre cas) à son établissement principal, ou envoyé par télécopie au numéro principal de télécopie de l’autre partie. Tout avis ou autre communication est réputé avoir été dûment reçu s’il est remis en mains propres, s’il est laissé à l’adresse susmentionnée ou, s’il est envoyé par courrier affranchi en première classe ou recommandé, à 9 h le deuxième jour ouvrable suivant son envoi, ou s’il est livré par messagerie commerciale, à la date et au moment où le reçu du courrier est signé ou, si le courrier est envoyé par télécopie, au lendemain.',
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              RaisedButton(
                padding: EdgeInsets.symmetric(
                  vertical: 15.0,
                ),
                color: Theme.of(context).primaryColor,
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0.0)),
                onPressed: !_termReaded ? null : () => widget.onChangedStep(2),
                child: Text(
                  'accept & Continue'.toUpperCase(),
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
