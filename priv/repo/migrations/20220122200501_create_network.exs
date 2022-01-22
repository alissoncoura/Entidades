defmodule Entidades.Repo.Migrations.CreateNetwork do
  use Ecto.Migration

  def change do
    create table(:network) do
      add :name, :string, null: false
      add :entity_type, :string, null: false

      timestamps()

    end
  end
end
