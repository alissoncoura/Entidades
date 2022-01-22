defmodule Entidades.School do
  use Ecto.Schema
  import Ecto.Changeset

  alias Entidades.Network

  @fields [:nome, :entity_type, :inep]

  schema "school" do
    field :name, :string
    field :entity_type, :string
    field :inep, :integer

    belongs_to :network, Network

    timestamps()
  end

  def changeset(struct, params) do
    struct
    |> cast(params, @fields)
    |> validate_number(:inep, greater_than_or_equal_to: 0)

  end
end
