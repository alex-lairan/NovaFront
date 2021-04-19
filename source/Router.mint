routes {
  / {
    Application.setPage(Page::Home)
  }

  /charter {
    Application.setPage(Page::GuildCharter)
  }

  /contributors {
    Application.setPage(Page::Contributors.Index)
  }

  /contributors/:id (id : Number) {
    Application.setPage(Page::Contributors.Show)
  }

}
