defmodule HelloPhoenixDbWeb.HelloController do
    use HelloPhoenixDbWeb, :controller

    def index(conn, _params) do
        render(conn, "index.html")
    end
end