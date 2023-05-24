defmodule KVStore do
  @moduledoc false

  use Application

  def start(_type, _args) do
    KVStore.Supervisor.start_link()
  end

  def stop(_state) do
    :ok
  end
end
