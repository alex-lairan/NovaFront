store Application {
  state page : Page = Page::Initial
  state user : UserStatus = UserStatus::LoggedOut

  fun initializeWithPage (page : Page) : Promise(Never, Void) {
    sequence {
      setPage(page)
      initialize()
    }
  }

  fun setPage (page : Page) : Promise(Never, Void) {
    next { page = page }
  }

  fun initialize : Promise(Never, Void) {
    sequence {
      Http.abortAll()

      try {
        data =
          Storage.Local.get("user")

        object =
          Json.parse(data)
          |> Maybe.toResult("")

        currentUser =
          decode object as User

        next { user = UserStatus::LoggedIn(currentUser) }
      } catch Storage.Error => error {
        next { user = UserStatus::LoggedOut }
      } catch Object.Error => error {
        next { user = UserStatus::LoggedOut }
      } catch String => error {
        next { user = UserStatus::LoggedOut }
      }
    }
  }

  fun setUser (user : User) : Promise(Never, Void) {
    next { user = UserStatus::LoggedIn(user) }
  }

  fun logout : Promise(Never, Void) {
    parallel {
      Storage.Local.remove("user")

      resetStores()

      next { user = UserStatus::LoggedOut }

      Window.navigate("/")
    } catch Storage.Error => error {
      Promise.never()
    }
  }

  fun login (user : User) : Promise(Never, Void) {
    parallel {
      Storage.Local.set("user", Json.stringify(encode user))

      resetStores()

      next { user = UserStatus::LoggedIn(user) }

      Window.navigate("/home")
    } catch Storage.Error => error {
      Promise.never()
    }
  }

  fun resetStores : Promise(Never, Void) {
    next {}
  }
}
