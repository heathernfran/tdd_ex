defmodule TddEx.Repo.Migrations.CreateData do
  use Ecto.Migration

  def change do
    create table(:data) do
      add :name, :string
      add :description, :string

      timestamps()
    end

  end
end
