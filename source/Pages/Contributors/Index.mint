record Aggregate.ContributorsSummary {
  id : Number,
  name : String,
  memberSince : Time using "member_since",
  amount : Number,
  daysLeft : Time using "days_left"
}

component Pages.Contributors.Index {
  connect Api.Contributors exposing { status }

  fun contributors : Array(Aggregate.ContributorsSummary) {
    Api.withDefault([], status)
  }

  fun contributorToRow (contributor : Aggregate.ContributorsSummary) : Tuple(String, Array(Ui.Cell)) {
    {
      contributor.name,
      [
        Ui.Cell::String(contributor.name),
        Ui.Cell::HtmlItems([<Ui.RelativeTime date={contributor.memberSince}/>]),
        Ui.Cell::Number(contributor.amount),
        Ui.Cell::HtmlItems([<Ui.RelativeTime date={contributor.daysLeft}/>]),
        Ui.Cell::HtmlItems([
          <Ui.FloatingButton
            size={Ui.Size::Px(24)}
            icon={Ui.Icons:EYE}
            onClick={((event : Html.Event) : Promise(Never, Void) { Window.navigate("/contributors/#{contributor.id}") })}/>
        ])
      ]
    }
  }

  get contributorRows : Array(Tuple(String, Array(Ui.Cell))) {
    contributors()
    |> Array.map(contributorToRow)
  }

  get contributorTable : Html {
    <Ui.Table
      headers=[
        {
          sortKey = "Name",
          sortable = true,
          label = "Name",
          shrink = false
        },
        {
          sortKey = "Member Since",
          sortable = true,
          label = "Member Since",
          shrink = true
        },
        {
          sortKey = "Amount",
          sortable = true,
          label = "Amount",
          shrink = true
        },
        {
          sortKey = "Day Left",
          sortable = true,
          label = "Day Left",
          shrink = true
        },
        {
          sortKey = "",
          sortable = false,
          label = "Actions",
          shrink = true
        }
      ]
      rows={contributorRows} />
  }

  fun render : Html {
    <div>
      <h1>"Contributeurs de la guilde"</h1>

      <Molecules.Status
        message="Une erreur est survenue au chargement des contributeurs"
        loadingMessage="Chargement des contributeurs..."
        status={Api.toStatus(status)}>

        <{ contributorTable }>
      </Molecules.Status>
    </div>
  }
}
