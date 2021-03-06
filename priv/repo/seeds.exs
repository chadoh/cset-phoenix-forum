# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Forum.Repo.insert!(%Forum.SomeModel{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
alias Forum.Repo
alias Forum.Category

for category <- ~w(General Anime Sports Life Education) do
  Repo.insert!(%Category{name: category})
end
