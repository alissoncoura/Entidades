defmodule Entidades.Network do
  use Ecto.Schema
  import Ecto.Changeset

  alias Entidades.School

  @fields [:nome, :entity_type]

  schema "network" do
    field :name, :string
    field :entity_type, :string

    has_many :school, School

    timestamps()
  end

  def changeset(struct, params) do
    struct
    |> cast(params, @fields)

  end
end
