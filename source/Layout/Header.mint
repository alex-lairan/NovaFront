component Header {
  connect Ui exposing { mobile, darkMode, toggleDarkMode }

  get darkModeToggle : Ui.NavItem {
    if (mobile) {
      try {
        label =
          if (darkMode) {
            "Light Mode"
          } else {
            "Dark Mode"
          }

        iconBefore =
          if (darkMode) {
            Ui.Icons:SUN
          } else {
            Ui.Icons:MOON
          }

        Ui.NavItem::Item(
          action = (event : Html.Event) { toggleDarkMode() },
          iconBefore = iconBefore,
          iconAfter = <></>,
          label = label)
      }
    } else {
      Ui.NavItem::Html(<Ui.DarkModeToggle/>)
    }
  }

  get admin : Ui.NavItem {
    Ui.NavItem::Group(
      iconBefore = Ui.Icons:LOCK,
      iconAfter = <></>,
      label = "Admin",

      items = [NavItems:CONTRIBUTORS]
    )
  }

  fun render : Html {
    <Ui.Header
      gap={Ui.Size::Em(1.5)}
      items=[
        admin,
        Ui.NavItem::Divider,
        darkModeToggle
      ]
      brand={<Logo/>}/>
  }
}

component Logo {
  property size : Ui.Size = Ui.Size::Inherit
  property href : String = ""

  style base {
    svg {
      color: var(--primary-color);
    }
  }

  fun render : Html {
    <div::base>
      <Ui.Brand
        icon={Ui.Icons:SUN}
        name="Supernøva"
        size={size}
        href={href}/>
    </div>
  }
}
