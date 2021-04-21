routes {
  / {
    sequence {
      Application.initialize()

      case (Debug.log(Application.user)) {
        UserStatus::LoggedOut =>
          Application.setPage(Page::Home)
        UserStatus::LoggedIn user =>
          Application.setPage(Page::HomeLogged)
      }
    }
  }

  /home {
    sequence {
      Application.initialize()
      Api.Contributors.load()

      case (Application.user) {
        UserStatus::LoggedOut =>
          Application.setPage(Page::NotFound)
        UserStatus::LoggedIn user =>
          Application.setPage(Page::HomeLogged)
      }
    }
  }

  /charter {
    Application.initializeWithPage(Page::GuildCharter)
  }

  /contributors {
    sequence {
      Application.initialize()
      Api.Contributors.load()

      case (Application.user) {
        UserStatus::LoggedOut =>
          Application.setPage(Page::NotFound)
        UserStatus::LoggedIn user =>
          Application.setPage(Page::Contributors.Index)
      }
    }
  }

  /contributors/:id (id : Number) {
    sequence {
      Application.initialize()

      case (Application.user) {
        UserStatus::LoggedOut =>
          Application.setPage(Page::NotFound)
        UserStatus::LoggedIn user =>
          Application.setPage(Page::Contributors.Show)
      }
    }
  }
}
