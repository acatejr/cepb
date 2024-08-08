defmodule DiscussWeb.TopicController do
  use DiscussWeb, :controller
  alias Discuss.Topic
  alias Discuss.Repo

  @doc """
  Handles the new topic request.

  conn is the request object
  params used to parse url
  """
  def new(conn, _params) do
    changeset = Topic.changeset(%Topic{}, %{})
    render(conn, :new, template: false, changeset: changeset)
  end

  def create(conn, %{"topic" => topic}) do

    changeset = Topic.changeset(%Topic{}, topic)
    case Repo.insert(changeset) do
      {:ok, post} -> IO.inspect(post)
      {:error, changeset} -> render conn, :new, changeset
    end

  end

end
