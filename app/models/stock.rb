class Stock < ApplicationRecord

  def self.new_lookup(ticker_symbol)
    client = IEX::Api::Client.new(publishable_token: 'Tpk_0cfd064d968a4ec5bb980db4edcc818c',
                                  endpoint: 'https://sandbox.iexapis.com/v1')
    client.price(ticker_symbol)
  end
end
