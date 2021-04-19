component Login {
  state errors : Map(String, Array(String)) = Map.empty()
  state password : String = ""
  state email : String = ""

  fun submit (event : Html.Event) {
    sequence {
      errors =
        Validation.merge(
          [
            Validation.isNotBlank(email, {"email", "Please enter the email address."}),
            Validation.isValidEmail(email, {"email", "Please enter a valid email address."}),
            Validation.isNotBlank(password, {"password", "Please enter the password."})
          ])

      next { errors = errors }

      if (Map.isEmpty(errors)) {
        parallel {
          Ui.Notifications.notifyDefault(<{ "Bonjour #{email} 👋" }>)
          Application.login(User(email, true))
          Window.navigate("/")
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
              error={Validation.getFirstError("email", errors)}
              label="Email *">

              <Ui.Input
                onChange={(value : String) { next { email = value } }}
                invalid={Map.has("email", errors)}
                placeholder="john@doe.com"
                value={email}
                type="email"/>

            </Ui.Field>

            <Ui.Field
              error={Validation.getFirstError("password", errors)}
              label="Password *">

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
              label="Continue"/>

          </Ui.Container>
        </Ui.Box>
      </Ui.Container>
    </Ui.Layout.Centered>
  }
}
