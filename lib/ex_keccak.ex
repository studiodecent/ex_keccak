defmodule ExKeccak do
  @external_resource "README.md"
  @moduledoc "README.md"
             |> File.read!()

  #use Rustler, otp_app: :ex_keccak, crate: :exkeccak, path: "native/exkeccak"
  use RustlerPrecompiled,
    otp_app: :ex_keccak,
    crate: :exkeccak,
    base_url: "https://github.com/spapas/ex_keccak/releases/download/0.3.3",
    version: "0.3.3"

  def hash_256(_data), do: :erlang.nif_error(:nif_not_loaded)
end
