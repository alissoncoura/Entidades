defmodule Entidades.Repo.Migrations.CreateSchool do
  use Ecto.Migration

  def change do
    create table(:school) do
      add :name, :string, null: false
      add :entity_type, :string, null: false
      add :inep, :integer
      add :network_id, references(:network)

      timestamps()
    end

  end
end
