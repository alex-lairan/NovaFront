component Login {
  state errors : Map(String, Array(String)) = Map.empty()
  state password : String = ""
  state username : String = ""

  fun submit (event : Html.Event) {
    sequence {
      errors =
        Validation.merge(
          [
            Validation.isNotBlank(username, {"username", "Entrez le pseudo."}),
            Validation.isNotBlank(password, {"password", "Entrez un mot de passe."})
          ])

      next { errors = errors }

      if (Map.isEmpty(errors)) {
        parallel {
          Ui.Notifications.notifyDefault(<{ "Bonjour #{username} 👋" }>)
          Application.login(User(username, true))
        }
      } else {
        next {  }
      }
    }
  }

  fun render : Html {
    <Ui.Layout.Centered maxContentWidth="320px">
      <Ui.Container
        justify="stretch"
        orientation="vertical"
        gap={Ui.Size::Em(1.5)}>

        <Ui.Box title=<{ "Login" }>>
          <Ui.Container
            orientation="vertical"
            gap={Ui.Size::Em(1)}
            align="stretch">

            <Ui.Field
              error={Validation.getFirstError("username", errors)}
              label="Pseudo">

              <Ui.Input
                onChange={(value : String) { next { username = value } }}
                invalid={Map.has("username", errors)}
                placeholder="john@doe.com"
                value={username}
                type="text"/>

            </Ui.Field>

            <Ui.Field
              error={Validation.getFirstError("password", errors)}
              label="Mot de passe">

              <Ui.Input
                onChange={(value : String) { next { password = value } }}
                invalid={Map.has("password", errors)}
                placeholder="12345678"
                value={password}
                type="password"/>

            </Ui.Field>

            <Ui.Button
              iconAfter={Ui.Icons:ARROW_RIGHT}
              onClick={submit}
              label="Continuer"/>

          </Ui.Container>
        </Ui.Box>
      </Ui.Container>
    </Ui.Layout.Centered>
  }
}
