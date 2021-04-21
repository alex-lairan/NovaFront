component Pages.HomeLogged {
  connect Application exposing { user }
  
  get userConnected {
    case (user) {
      UserStatus::LoggedOut => User("", false)
      UserStatus::LoggedIn user => user
    }
  }

  fun render : Html {
    <p> "Welcome #{userConnected.username}" </p>
  }
}
