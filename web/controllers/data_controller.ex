defmodule TddEx.DataController do
  use TddEx.Web, :controller
  
  def index(conn, _params) do
    render conn, data: []
  end
end