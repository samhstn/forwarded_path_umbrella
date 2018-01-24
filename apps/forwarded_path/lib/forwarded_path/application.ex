defmodule ForwardedPath.Application do
  @moduledoc """
  The ForwardedPath Application Service.

  The forwarded_path system business domain lives in this application.

  Exposes API to clients such as the `ForwardedPathWeb` application
  for use in channels, controllers, and elsewhere.
  """
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    Supervisor.start_link([
      
    ], strategy: :one_for_one, name: ForwardedPath.Supervisor)
  end
end
