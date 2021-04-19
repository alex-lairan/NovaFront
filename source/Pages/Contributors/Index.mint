record Aggregate.ContributorsSummary {
  id : Number,
  name : String,
  memberSince : Time using "member_since",
  amount : Number,
  daysLeft : Time using "days_left"
}

component Pages.Contributors.Index {
  fun contributors : Array(Aggregate.ContributorsSummary) {
    [
      {
        id = 1,
        name = "Keily",
        memberSince = Time.from(2021, 4, 10),
        amount = 250,
        daysLeft = Time.from(2021, 6, 20)
      },
      {
        id = 1,
        name = "Kaliur",
        memberSince = Time.from(2021, 4, 10),
        amount = 25,
        daysLeft = Time.from(2021, 4, 20)
      },
      {
        id = 1,
        name = "Nynonn",
        memberSince = Time.from(2021, 3, 10),
        amount = 500,
        daysLeft = Time.from(2021, 7, 30)
      },
      {
        id = 1,
        name = "Davinah",
        memberSince = Time.from(2021, 3, 27),
        amount = 200,
        daysLeft = Time.from(2021, 5, 12)
      },
      {
        id = 1,
        name = "Incognito",
        memberSince = Time.from(2021, 4, 8),
        amount = 100,
        daysLeft = Time.from(2021, 5, 8)
      },
      {
        id = 1,
        name = "Patøpestø",
        memberSince = Time.from(2021, 4, 5),
        amount = 200,
        daysLeft = Time.from(2021, 6, 5)
      }
    ]
  }

  fun tableContributors : Array(Tuple(String, Array(Ui.Cell))) {
    contributors()
    |> Array.map(contributorToRow)
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
        ])
      ]
    }
  }

  fun render : Html {
    <div>
      <h1>"Contributeurs de la guilde"</h1>

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
        rows={tableContributors()}/>
    </div>
  }
}
