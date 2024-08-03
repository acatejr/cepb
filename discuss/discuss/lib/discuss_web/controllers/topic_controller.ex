defmodule DiscussWeb.TopicController do
  use DiscussWeb, :controller
  alias Discuss.Topic
  @doc """
  Handles the new topic request.

  conn is the request object
  params used to parse url
  """
  def new(conn, params) do
    changeset = Topic.changeset(%Topic{}, %{})
    render(conn, :index)
  end

end
