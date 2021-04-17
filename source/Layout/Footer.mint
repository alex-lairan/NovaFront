component Footer {
  style infos {
    max-width: 500px;
  }

  style copyright {
    opacity: 0.7;
  }

  get navItems {
    [
      { "Site", [NavItems:HOME, NavItems:GUILD_CHARTER] },
      { "Communaute", [NavItems:DISCORD] },
      { "Source", [NavItems:REPOSITORY] }
    ]
  }

  get infos : Html {
    <div::infos>
      <Logo size={Ui.Size::Em(2)}/>

      <p>
        "Site internet de Supernøva, guilde World of Warcraft Classic - Amnennar."
      </p>

      <div::copyright>
        "Copyright © #{Time.year(Time.now())} Supernøva, " \
        "All rights reserved."
      </div>
    </div>
  }

  fun render : Html {
    <Ui.Footer
      categoryWhiteSpace="nowrap"
      navitems={navItems}
      infos={infos}
    />
  }
}
