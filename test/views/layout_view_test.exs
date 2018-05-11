defmodule Catcasts.LayoutViewTest do
  use Catcasts.ConnCase, async: true

  	test "shows s sign in with Google link when not signed in", %{conn: conn} do
		conn = get conn, "/"

		assert html_response(conn, 200) =~ "Sign in with Google"
	end
end
