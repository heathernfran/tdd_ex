defmodule ListingDataIntegrationTest do
  use ExUnit.Case, async: true
  use Plug.Test
  alias TddEx.Router
  
  @opts Router.init([])
  test 'listing data' do
    conn = conn(:get, "/data")
    response = Router.call(conn, @opts)
    assert response.status == 200
    assert response.resp_body == "[]"
  end
end