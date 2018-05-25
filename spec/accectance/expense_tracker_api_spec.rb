require "rack/test"
require "json"

module ExpenseTracker
  Rspec.describe "Expense Tracker API" do
    include Rack::Test::Methods

    it "records submitted expense" do
      coffee = {
        payee: "Starbucks",
        amount: 5.75,
        date: "2018-06-10"
      }

      post "/expenses", JSON.generate(coffee)
    end
  end
end
