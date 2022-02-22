defmodule ExKeccak do
  @external_resource "README.md"
  @moduledoc "README.md"
             |> File.read!()

  #use Rustler, otp_app: :ex_keccak, crate: :exkeccak, path: "native/exkeccak"
  use RustlerPrecompiled,
    otp_app: :ex_keccak,
    crate: :exkeccak,
    base_url: "https://github.com/me/my_project/releases/download/v0.3.1",
    version: "0.3.1"

  def hash_256(_data), do: :erlang.nif_error(:nif_not_loaded)
end
