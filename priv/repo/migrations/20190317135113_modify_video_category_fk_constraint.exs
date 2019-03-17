defmodule Rumbl.Repo.Migrations.ModifyVideoCategoryFkConstraint do
  use Ecto.Migration

  def change do
    drop_if_exists constraint("videos", "videos_category_id_fkey")
    alter table(:videos) do
      modify :category_id, references(:categories, on_delete: :nilify_all)
    end
  end
end
