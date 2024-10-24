defmodule Xitter.Accounts do
  use Ash.Domain

  resources do
    resource Xitter.Accounts.Token
    resource Xitter.Accounts.User
  end
end
