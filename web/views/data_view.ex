defmodule TddEx.DataView do
  use TddEx.Web, :view
  
  def render("index.json", %{data: data}) do
    data
  end
end