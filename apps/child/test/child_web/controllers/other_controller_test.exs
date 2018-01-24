defmodule ChildWeb.OtherControllerTest do
  use ChildWeb.ConnCase

  test "path", %{conn: conn} do
    assert other_path(conn, :index) == "/child/other"
  end
end
