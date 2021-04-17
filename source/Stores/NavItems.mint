store NavItems {
  const HOME =
    Ui.NavItem::Link(
      iconBefore = Ui.Icons:HOME,
      iconAfter = <></>,
      label = "Home",
      target = "",
      href = "/")


  const GUILD_CHARTER =
    Ui.NavItem::Link(
      iconBefore = Ui.Icons:BOOK,
      iconAfter = <></>,
      label = "Charte de Guilde",
      target = "",
      href = "/charter")

  const DISCORD =
    Ui.NavItem::Link(
      iconBefore = @svg(../../assets/svg/discord-icon.svg),
      iconAfter = <></>,
      href = "https://discord.gg/wZNXvyshx5",
      label = "Discord",
      target = "_blank")

  const REPOSITORY =
    Ui.NavItem::Link(
      iconBefore = Ui.Icons:REPO,
      iconAfter = <></>,
      href = "https://github.com/alex-lairan/GoldivoreFront",
      target = "_blank",
      label = "Source")
}