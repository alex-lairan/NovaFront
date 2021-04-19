component Header {
  connect Ui exposing { mobile, darkMode, toggleDarkMode }
  connect Application exposing { user }

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

  get items : Array(Ui.NavItem) {
    case (user) {
      UserStatus::LoggedOut => [darkModeToggle]
      UserStatus::LoggedIn user =>
        if (user.isAdmin) {
          [admin, Ui.NavItem::Divider, NavItems:LOGOUT, Ui.NavItem::Divider, darkModeToggle]
        } else {
          [Ui.NavItem::Divider, NavItems:LOGOUT, darkModeToggle]
        }
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
      items={items}
      brand={<Logo/>}/>
  }
}

component Logo {
  property size : Ui.Size = Ui.Size::Inherit
  property href : String = "/"

  style base {
    cursor: pointer;
    svg {
      color: var(--primary-color);
    }
  }

  fun render : Html {
    <div::base onClick={((event : Html.Event) { Window.navigate("/") })}>
      <Ui.Brand
        icon={Ui.Icons:SUN}
        name="Supernøva"
        size={size}
        href={href}/>
    </div>
  }
}
