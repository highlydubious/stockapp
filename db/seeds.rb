# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.create([
  {
    name: 'Alex',
    email: 'alex@alex.com',
    password_digest: 'alex'
  }

  ]);



stock = Stock.create ([
  {
    name: 'Apple',
    symbol: 'AAPL'
  },
  {
    name: 'Facebook',
    symbol: 'FB'
  },
  {
    name: 'Nike',
    symbol: 'NKE'
  }

  ]);

note = Note.create([
  {
    market: "NKE",
    date: "September 15, 2014, 11:33am",
    timeframe: "Daily",
    comment: "Market looks strong, lots of intersting stuff going on here",

    stock: stock[2]
  },
   {
    market: "AAPL",
    date: "September 16, 2014, 11:33am",
    timeframe: "Daily",
    comment: "Crazy AHHHH",

    stock: stock[0]
  },
  {
    market: "FB",
    date: "September 15, 2014, 11:33am",
    timeframe: "60m",
    comment: "Market looks strong, lots of intersting stuff going on here",

    stock: stock[1]
  },
  {
    market: "AAPL",
    date: "September 15, 2014, 11:33am",
    timeframe: "15m",
    comment: "UHOH",

    stock: stock[0]
  },
  ]);


