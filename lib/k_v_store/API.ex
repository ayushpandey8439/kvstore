defmodule KVstore.API do
  require Logger
  @moduledoc """
  A simple In memory journal based key-value store.
  """

  def doBegin() do
    # Start a transaction coordinator and return its pid.
    # This will be the transaction reference used for future operations
    case KVStore.Coordinator.start_link([],[]) do
      {:ok, pid} ->
        Logger.info("Transaction coordinator started with pid #{inspect pid}")
        {:ok, pid}
      {:error, reason} ->
        Logger.error("Transaction coordinator failed to start: #{inspect reason}")
        {:error, reason}
    end

  end

  def doUpdate(txn, key, value) do
    # Update the value of a key in the store
  end

  def lookup(txn, key) do
    # Lookup the value of a key in the store
  end

  def doCommit(txn) do
    # Commit the transaction
  end

  def doAbort(txn) do
    # Abort the transaction
  end


end
