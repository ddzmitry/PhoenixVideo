defmodule PhoenixVideoStream.Video do
  use PhoenixVideoStream.Web, :model

  schema "videos" do
    field :title, :string
    field :video_file, :any, virtual: true
    field :filename, :string
    field :content_type, :string
    field :path, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title, :filename, :content_type, :path])
    |> validate_required([:title, :filename, :content_type, :path])
  end
end
