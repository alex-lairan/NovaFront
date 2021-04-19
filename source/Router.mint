routes {
  / {
    Application.setPage(Page::Home)
  }

  /charter {
    Application.setPage(Page::GuildCharter)
  }

  /contributions {
    Application.setPage(Page::Contributions.Index)
  }
}
