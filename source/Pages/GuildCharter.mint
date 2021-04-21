component Pages.GuildCharter {
  state chartTab = "new_crewmate"

  fun content (item : Html) : Html {
    <Ui.Content textAlign="left">
      <{ item }>
    </Ui.Content>
  }

  get newCrewmate : Html {
    <>
      "
        En nous rejoignant vous acceptez quelques conditions comme dans toute guilde digne de ce nom.

        1) Nous vous invitons à faire une brève présentation de vous même sur Discord.

        Exemple : \"Robert ak DOUBLEDOSE 35 ans toulousain jeune papa, hunter forever !, dispo pour tous vos enchants, fan de ACDC et de Drum and Bass, si je devais être un personnage de série je serais l'amiral Adama dans Battlestar Galactica\"

        Sans être forcément aussi “détaillé” nous pensons sincèrement que vous divulguer un petit peu est le 1er pas pour s'intégrer et créer de nouvelles affinités !

        2) Vous êtes guildé en temps qu'apply pour les 3 premières semaines, cela testera votre motivation / implication pour déterminer votre futur statut dans la guilde (ou pas !) durant cette période vous êtes groupé dans la mesure du possible pour vous évaluer. Vous ne prétendez à aucun loot sauf ceux dont personne ne veut.

        Votre présence est régulière, vous êtes capable d'assumer 2 soirs par semaine de 20h45 à 00h.

        3) Une fois cette période passée vous intégrez le roster et en avez le statut.
        Vous êtes un pilier du raid, vous venez opti, full compo, enchant etc etc.
        Vous vous acquittez aussi d’une cotisation hebdomadaire de 25PO (payable mensuellement ou plus mais forcément EN AVANCE)
      "
    </>
  }

  get comportement : Html {
    <>
      "
        1) Comportement dans la guilde, sur le serveur, en BG :

        Faire partie de la Guilde Supernøva exige un comportement exemplaire.
        
        Chacun des joueurs portant le tag < Supernøva > est le représentant de nos objectifs et de nos convictions. Le respect, l’entraide, l’écoute.
        
        Que ce soit dans la guilde entre ses membres ou avec les autres joueurs
        Les insultes et provocations ne seront pas tolérées !

        En cas de comportement inadéquat ne respectant pas la charte de guilde
        
        UN SEUL avertissement vous sera adressé avant un renvoi définitif.
        (sous réserve que la gravité “modérée” des faits reprochés le permette)
        
        Nous serons intransigeants là-dessus il n’y aura aucun passe droit.
        
        POUR TOUS PROBLÈMES AVEC DES PERSONNES EXTERIEURES A LA GUILDE MERCI DE CONTACTER VOTRE OFFICIER OU LE GM QUI S’OCCUPERONT DU PROBLÈME.
        
        Faire partie de la Guilde Supernøva c’est aussi quelques devoirs.
        Lire les différentes annonces discord et voter.

        S'inscrire à chaque event même pour dire absent / retard etc !
        Prévenir en cas d’absence prolongée dans le chan prévu à cet effet

        Cotisation de 25 PO hebdomadaire

        Respect des horaires de raid 20h45 - 00h
        Respect des consignes en raid (attrib / focus / placement)

        Toujours full conso, spé PVE, enchant / gemmes PVE pour raid !

        AUCUNE EXCUSE NE SERA TOLÉRÉE SUR VOS DEVOIRS ENVERS LA GUILDE
        ATTENTION AUCUN STATUT N’EST DÉFINITIF !
        
        
        
        
        
        
        2) Comportement en RAID :
        
        Respect du raid pas de musique / stream / série en parallèle !

        Lors des raids, il est nécessaire de laisser le chan Discord audible de tous.
        
        Seuls les officiers, le RL et les membres invités à s'exprimer sont autorisés à parler.
        
        Le chan « /raid » vous permet en plus du chan réservé à votre classe/rôle, de transmettre des informations et répondre aux diverses demandes.
        
        Dans un souci de qualité et par respect pour vos collègues de raid il vous est demandé de bien respecter les consignes, vos possibles attributions qui sont vitales ne doivent pas être prises à la légère. 
        
        Les reprises d’aggro intempestives
        
        Les dispells laissés aux healers quand un caster peut le faire.
        
        Les CC non effectués, non refresh, cassés !
        SERONT SUJET À DE POSSIBLE SANCTIONS
        (sortie du raid, pas de loot, perma attrib CC ou dispell)
        

        L'assiduité, l’investissement pour la guilde, la qualité de jeu en raid
        sont pris en compte et peuvent prévaloir sur l’opti d’itemisation du raid.
        
        Nous ne donnerons pas un drop rare à quelqu'un se connectant juste 1 fois pour raid
        “Bonjour au revoir et à la semaine prochaine”
        même si c'est à lui que ça fait le plus gros up.

        Concernant les éventuelles rerolls pris dans le raid :
        Ils sont uniquement là pour pallier un besoin spécifique sur demande du RL.
        La personne qui le prend maîtrise le personnage et possède un stuff suffisant.
        En aucun cas il sera toléré de prendre son reroll sans nécessité
        et encore moins de faire un caprice parce que d’autres le peuvent !
      "
    </>
  }

  get ranks : Html {
    <>
      "
      Guild Master :
 
      Il veille à la coordination des différents officiers et au rôle de chacun afin que les objectifs principaux de la guilde ne se perdent pas.
      Il est là aussi pour vous écouter si vous l’estimez nécessaire (quel que soit le sujet).
      Accessoirement il est aussi le RL si vous voulez discuter stratégie.

      Officiers :
      
      Ils sont maîtres de classe, maîtres de rôle,
      sans eux, pas de coordination au sein des différents groupes.
      Ils effectuent un travail de préparation en amont des raids.
      Ils recrutent, choisissent qui prendre en raid quand il y a trop d’effectif.
      Avec le GM ils distribuent les loots basés sur les critères cités ci dessus.
      Ils sont là pour toutes vos questions et vos problèmes.
      
      Roster :

      Vous êtes le cœur de la guilde, vous maintenez un niveau de performance et d’exigence vis-à-vis de vous-même et de la guilde en vous tenant au courant des dernières stratégies et spécifications de votre classe.
      L’optimisation des métiers, de l’équipement, etc.. sont une obligation.
      Les joueurs à ce grade dévouent leur temps de jeu à l’excellence en PvE.
      2 soirs par semaine minimum obligatoire.

      Applys : 

      C’est le premier grade de la guilde, celui par lequel tout le monde passe suite à une candidature acceptée, votre avenir dans la guilde se joue ici.

      Rerolls, Rerolls Off et les Banques : 

      Grade des personnages secondaires et des banques de guilde.

      Casus :

      Ce sont les personnages principaux de joueurs ayant leurs amis chez Supernøva.
      N’ayant ni la disponibilité et/ou la maîtrise pour être considéré comme roster, ce statut leur permet d'être avec leurs amis via un chan guilde et profiter de petits avantages comme les groupes de donjons ou un extra slot sur un encounter qui ne nécessite aucune maîtrise si il y a de la place.
      S’applique aussi aux anciens roster ne pouvant plus l’être
      "
    </>
  }

  get guildEngagement : Html {
    <Ui.Grid gap={Ui.Size::Px(40)}>
      <Ui.Card minWidth={Ui.Size::Px(200)}>
        <Ui.Card.Container
          subtitle=<{ "respect de chacun, tolérance 0 aux dramas / insultes de tous types" }>
          title=<{ "Sérénité de ses membres" }>
          image={
            <Ui.Icon
              icon={Ui.Icons:MOON}
              size={Ui.Size::Px(30)}/>
          }/>
      </Ui.Card>

      <Ui.Card minWidth={Ui.Size::Px(200)}>
        <Ui.Card.Container
          subtitle=<{ "vous trouverez toujours quelqu’un à qui parler si vous en ressentez le besoin" }>
          title=<{ "Disponibilité pour ses membres" }>
          image={
            <Ui.Icon
              icon={Ui.Icons:LINK}
              size={Ui.Size::Px(30)}/>
          }/>
      </Ui.Card>

      <Ui.Card minWidth={Ui.Size::Px(200)}>
        <Ui.Card.Container
          subtitle=<{ "" }>
          title=<{ "Favoriser ses membres aux détriments des pickups" }>
          image={
            <Ui.Icon
              icon={Ui.Icons:BROADCAST}
              size={Ui.Size::Px(30)}/>
          }/>
      </Ui.Card>

      <Ui.Card minWidth={Ui.Size::Px(200)}>
        <Ui.Card.Container
          subtitle=<{ "Maîtrise de l’event, strat préparée en amont, placement, attrib etc" }>
          title=<{ "Fournir un encadrement sérieux pour les raids" }>
          image={
            <Ui.Icon
              icon={Ui.Icons:BRIEFCASE}
              size={Ui.Size::Px(30)}/>
          }/>
      </Ui.Card>

      <Ui.Card minWidth={Ui.Size::Px(200)}>
        <Ui.Card.Container
          subtitle=<{ "N'allez pas payer vos compo venez voir vos officiers pour ça" }>
          title=<{ "OFFRIR VOS ENCHANTEMENTS & GEMMES PVE" }>
          image={
            <Ui.Icon
              icon={Ui.Icons:RUBY}
              size={Ui.Size::Px(30)}/>
          }/>
      </Ui.Card>

      <Ui.Card minWidth={Ui.Size::Px(200)}>
        <Ui.Card.Container
          title=<{ "Des discounts sur certains objets farm par la guilde vendu à l'hv" }>
          image={
            <Ui.Icon
              icon={Ui.Icons:WATCH}
              size={Ui.Size::Px(30)}/>
          }/>
      </Ui.Card>

      <Ui.Card minWidth={Ui.Size::Px(200)}>
        <Ui.Card.Container
          subtitle=<{ "CERTAINS consommables de raid fournis, stuff résistance, somme allouée aux réparations" }>
          title=<{ "Des avantages spécifiques " }>
          image={
            <Ui.Icon
              icon={Ui.Icons:GIFT}
              size={Ui.Size::Px(30)}/>
          }/>
      </Ui.Card>
    </Ui.Grid>
  }

  get memberEngagement : Html {
    <Ui.Grid>

      <Ui.Card minWidth={Ui.Size::Px(200)}>
        <Ui.Card.Container
          subtitle=<{ "Mercredi et Jeudi de 20h45 à 00h" }>
          title=<{ "2 Soir de raid par semaine" }>
          image={
            <Ui.Icon
              icon={Ui.Icons:CLOCK}
              size={Ui.Size::Px(30)}/>
          }/>
      </Ui.Card>

      <Ui.Card minWidth={Ui.Size::Px(200)}>
        <Ui.Card.Container
          subtitle=<{ "Payable mensuellement" }>
          title=<{ "Cotisation de 25po hebdomaraire" }>
          image={
            <Ui.Icon
              icon={Ui.Icons:SQUIRREL}
              size={Ui.Size::Px(30)}/>
          }/>
      </Ui.Card>

      <Ui.Card minWidth={Ui.Size::Px(200)}>
        <Ui.Card.Container
          subtitle=<{ "Full compo, enchant, etc" }>
          title=<{ "Etre optimiser" }>
          image={
            <Ui.Icon
              icon={Ui.Icons:STAR}
              size={Ui.Size::Px(30)}/>
          }/>
      </Ui.Card>

    </Ui.Grid>
  }

  fun render : Html {
    <Ui.Content textAlign="center">
      <h1>"Charte de Guilde"</h1>

      <h2>"Bienvenue chez Supernøva !"</h2>

      <p>"
          Merci d'avoir choisi de rejoindre notre guilde de vétéran du jeu !
          La guilde a pour ambition de clean tout le contenu disponible chaque semaine dans une ambiance détendue mais pas dilettante.
          La priorité est donnée à l'exécution des stratégies et à la qualité des downs (0 morts).
          Si ces objectifs sont atteints de façon constante nous nous essaierons au speedrun.
        "</p>

      <Ui.Tabs
        size={Ui.Size::Px(16)}
        active={chartTab}
        breakpoint={1000}
        onChange={(tab : String) { next { chartTab = tab } }}
        items=[
          {
            iconBefore = Ui.Icons:PERSON,
            iconAfter = <></>,
            content = content(newCrewmate),
            label = "Nouvelles recrues",
            key = "new_crewmate"
          },
          {
            iconBefore = Ui.Icons:ALERT,
            iconAfter = <></>,
            content = content(comportement),
            label = "Comportement",
            key = "comportement"
          },
          {
            iconBefore = Ui.Icons:WORKFLOW,
            iconAfter = <></>,
            content = content(ranks),
            label = "Les grades",
            key = "ranks"
          },
          {
            iconBefore = Ui.Icons:BRIEFCASE,
            iconAfter = <></>,
            content = content(guildEngagement),
            label = "La guilde s'engage",
            key = "guild_engagement"
          },
          {
            iconBefore = Ui.Icons:ORGANIZATION,
            iconAfter = <></>,
            content = content(memberEngagement),
            label = "Le membre s'engage",
            key = "member_engagement"
          }
        ]/>

      <br/>

      <Ui.Button
        iconBefore={Ui.Icons:ARROW_RIGHT}
        size={Ui.Size::Px(16)}
        breakWords={false}
        disabled={false}
        ellipsis={true}
        label="Nous rejoindre"
        type="primary"/>
    </Ui.Content>
  }
}
