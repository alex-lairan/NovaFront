component Main {
  connect Application exposing { page }

  use Provider.Url { changes = setTitle }

  fun setTitle (url : Url) : Promise(Never, Void) {
    Window.setTitle("Supernøva")
  }

  get content : Html {
    case (page) {
      Page::Initial => <{  }>
      Page::Home => <></>
      Page::GuildCharter => <Pages.GuildCharter/>
      Page::Contributions.Index => <Pages.Contributions.Index/>
      Page::NotFound => <></>
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
