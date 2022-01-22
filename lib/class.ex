defmodule Entidades.Class do
  use Ecto.Schema
  import Ecto.Changeset

  alias Entidades.School

  @fields [:nome, :entity_type]

  schema "school" do
    field :name, :string
    field :entity_type, :string

    belongs_to :school, School

    timestamps()
  end

  def changeset(struct, params) do
    struct
    |> cast(params, @fields)

  end
end
