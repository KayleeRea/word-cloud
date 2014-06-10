require 'spec_helper'
require_relative '../lib/counter'

describe Counter do
  let(:data) {
    {
      "Ila Huels" => [
        "OPTIMIZE WEB-ENABLED SUPPLY-CHAINS",
        "brand sexy channels",
        "ENVISIONEER ROBUST E-COMMERCE",
        "TRANSFORM WIRELESS ARCHITECTURES",
        "BENCHMARK CROSS-PLATFORM PARTNERSHIPS"
      ],
      "Cristopher Feest" => [
        "BENCHMARK CROSS-PLATFORM PARTNERSHIPS",
        "brand sexy channels",
        "BENCHMARK 24/7 PARADIGMS"
      ]
    }
  }
  it 'returns a list of the words that are in the sentences' do
    expect(Counter.new(data).words).to eq (
                                            ["brand", "sexy", "channels"]
                                          )
  end


  it 'returns the count and people that said the word' do

    expect(Counter.new(data)).word_counter.to eq(
                                                {
                                                  "optimize" => {:count => 1, :people => ["Ila Huels"]},
                                                  "web-enabled" => {:count => 1, :people => ["Ila Huels"]},
                                                  "supply-chains" => {:count => 1, :people => ["Ila Huels"]},
                                                  "brand" => {:count => 2, :people => ["Ila Huels", "Cristopher Feest"]},
                                                }
                                              )
  end
end