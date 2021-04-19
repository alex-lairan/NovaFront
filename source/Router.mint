routes {
  / {
    Application.initializeWithPage(Page::Home)
  }

  /charter {
    Application.initializeWithPage(Page::GuildCharter)
  }

  /contributors {
    sequence {
      Application.initialize()

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
