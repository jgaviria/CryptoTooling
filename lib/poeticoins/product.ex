# lib/poeticoins/product.ex
defmodule Poeticoins.Product do
  defstruct [:exchange_name, :currency_pair]

  @type t() :: %__MODULE__{
                 exchange_name: String.t(),
                 currency_pair: String.t()
               }
  @spec new(String.t(), String.t()) :: t()
  def new(exchange_name, currency_pair) do
    %__MODULE__{
      exchange_name: exchange_name,
      currency_pair: currency_pair
    }
  end

  defimpl String.Chars do
    def to_string(product) do
      product.exchange_name <> ":" <> product.currency_pair
    end
  end

end