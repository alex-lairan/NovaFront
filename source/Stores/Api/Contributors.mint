store Api.Contributors {
  state status : Api.Status(Array(Aggregate.ContributorsSummary)) = Api.Status::Initial

  fun load : Promise(Never, Void) {
    sequence {
      next { status = Api.Status::Ok(stub()) }
    }
  }

  fun stub : Array(Aggregate.ContributorsSummary) {
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
}
