defmodule Xitter.Tweets.Tweet do
  use Ash.Resource, otp_app: :xitter, domain: Xitter.Tweets, data_layer: AshPostgres.DataLayer

  postgres do
    table "tweets"
    repo Xitter.Repo
  end

  actions do
    defaults [:read, create: [:content]]
  end

  attributes do
    uuid_v7_primary_key :id

    attribute :content, :string do
      allow_nil? false
      public? true
    end

    timestamps()
  end

  relationships do
    belongs_to :user, Xitter.Accounts.User do
      allow_nil? false
    end
  end
end
