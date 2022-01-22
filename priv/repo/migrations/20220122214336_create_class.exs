defmodule Entidades.Repo.Migrations.CreateClass do
  use Ecto.Migration

  def change do
    create table(:class) do
      add :name, :string, null: false
      add :entity_type, :string, null: false
      add :school_id, references(:school)

      timestamps()
    end

  end
end
