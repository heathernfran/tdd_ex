defmodule TddEx.DataTest do
  use TddEx.ModelCase

  alias TddEx.Data

  @valid_attrs %{description: "some content", name: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Data.changeset(%Data{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Data.changeset(%Data{}, @invalid_attrs)
    refute changeset.valid?
  end
end
