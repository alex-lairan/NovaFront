component Main {
  connect Application exposing { page }

  use Provider.Url { changes = setTitle }

  fun setTitle (url : Url) : Promise(Never, Void) {
    Window.setTitle("Supernøva")
  }

  get content : Html {
    case (page) {
      Page::Initial => <{  }>
      Page::Home => <Pages.Home />
      Page::HomeLogged => <Pages.HomeLogged />
      Page::GuildCharter => <Pages.GuildCharter/>
      Page::Contributors.Index => <Pages.Contributors.Index/>
      Page::Contributors.Show => <Pages.Contributors.Show/>
      Page::NotFound => <Pages.NotFound />
    }
  }

  fun render : Html {
    <Ui.Theme.Root
      fontConfiguration={Ui:DEFAULT_FONT_CONFIGURATION}
      tokens={Ui:DEFAULT_TOKENS}>

      <Ui.ScrollToTop/>

      <Ui.Layout.Website
        content={content}
        footer={<Footer/>}
        header={<Header/>}/>

    </Ui.Theme.Root>
  }
}
