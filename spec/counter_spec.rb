require 'spec_helper'
require_relative '../lib/counter'
require 'json'

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
        "brand sexy people",
        "BENCHMARK 24/7 PARADIGMS"
      ]
    }
  }


  it 'returns the words as a hash of another hash with how many times that word was said and who said it' do

    expect(Counter.new(data).words).to eq(
                                         {"optimize" => {:count => 1, :people => ["Ila Huels"]},
                                          "web-enabled" => {:count => 1, :people => ["Ila Huels"]},
                                          "supply-chains" => {:count => 1, :people => ["Ila Huels"]},
                                          "brand" => {:count => 2, :people => ["Ila Huels", "Cristopher Feest"]},
                                          "sexy" => {:count => 2, :people => ["Ila Huels", "Cristopher Feest"]},
                                          "channels" => {:count => 1, :people => ["Ila Huels"]},
                                          "envisioneer" => {:count => 1, :people => ["Ila Huels"]},
                                          "robust" => {:count => 1, :people => ["Ila Huels"]},
                                          "e-commerce" => {:count => 1, :people => ["Ila Huels"]},
                                          "transform" => {:count => 1, :people => ["Ila Huels"]},
                                          "wireless" => {:count => 1, :people => ["Ila Huels"]},
                                          "architectures" => {:count => 1, :people => ["Ila Huels"]},
                                          "benchmark" =>
                                            {:count => 3, :people => ["Ila Huels", "Cristopher Feest", "Cristopher Feest"]},
                                          "cross-platform" => {:count => 2, :people => ["Ila Huels", "Cristopher Feest"]},
                                          "partnerships" => {:count => 2, :people => ["Ila Huels", "Cristopher Feest"]},
                                          "people" => {:count => 1, :people => ["Cristopher Feest"]},
                                          "24/7" => {:count => 1, :people => ["Cristopher Feest"]},
                                          "paradigms" => {:count => 1, :people => ["Cristopher Feest"]}}
                                       )
  end

  it 'Works with a JSON file' do
    json_data = File.read('data/quotes.json')
    data = JSON.parse(json_data)
    expect(Counter.new(data).words).to include(
                                         {"bricks-and-clicks" => {:count => 6, :people => ["Josefa McGlynn", "Avis McCullough Jr.", "Shana Kutch", "Joanny Barton", "Shad Muller", "Stephon Wehner MD"]},
                                          "channels" => {:count => 8, :people => ["Cristopher Feest", "Mrs. Ken Brown", "Mrs. Ken Brown", "Alvah Jacobi", "Kobe Hansen II", "Shad Muller", "Dr. Halle McDermott", "Mr. German Buckridge"]},
                                          "clicks-and-mortar" => {:count => 5, :people => ["Mrs. Ken Brown", "Kobe Hansen II", "Gertrude Heaney", "Mr. German Buckridge", "Mr. German Buckridge"]},
                                          "collaborative" => {:count => 4, :people => ["Teagan Gutkowski", "Earl Prosacco", "Elias Conn I", "Dariana Ondricka"]},
                                          "communities" => {:count => 12, :people => ["Ila Huels", "Cristopher Feest", "Mr. Maryam Bradtke", "Shana Kutch", "Joanny Barton", "Joanny Barton", "Kobe Hansen II", "Dariana Ondricka", "Kailey Davis", "Aryanna Mohr", "Emilia Schaefer", "Emilia Schaefer"]},
                                          "compelling" => {:count => 4, :people => ["Ila Huels", "Kobe Hansen II", "Ara Walsh", "Emilia Schaefer"]},
                                          "content" => {:count => 10, :people => ["Avis McCullough Jr.", "Dallin Schiller", "Alvah Jacobi", "Mr. Maryam Bradtke", "Shad Muller", "Elias Conn I", "Ara Walsh", "Gertrude Heaney", "Mr. German Buckridge", "Emilia Schaefer"]},
                                          "convergence" => {:count => 8, :people => ["Gennaro Moore DDS", "Teagan Gutkowski", "Joanny Barton", "Dariana Ondricka", "Dr. Halle McDermott", "Ara Walsh", "Elvis Rodriguez", "Emilia Schaefer"]},
                                          "cross-media" => {:count => 7, :people => ["Mrs. Ken Brown", "Mrs. Ken Brown", "Orpha Predovic", "Elvis Rodriguez", "Elvis Rodriguez", "Gertrude Heaney", "Gertrude Heaney"]},
                                          "cross-platform" => {:count => 4, :people => ["Cristopher Feest", "Shana Kutch", "Shad Muller", "Vance Rowe"]},
                                          "cultivate" => {:count => 4, :people => ["Mrs. Ken Brown", "Avis McCullough Jr.", "Avis McCullough Jr.", "Gertrude Heaney"]},
                                          "customized" => {:count => 5, :people => ["Shana Kutch", "Shana Kutch", "Shad Muller", "Kailey Davis", "Elvis Rodriguez"]},
                                          "cutting-edge" => {:count => 6, :people => ["Mrs. Ken Brown", "Mrs. Ken Brown", "Kobe Hansen II", "Elias Conn I", "Dariana Ondricka", "Emilia Schaefer"]},
                                          "deliver" => {:count => 7, :people => ["Alvah Jacobi", "Shana Kutch", "Orpha Predovic", "Dariana Ondricka", "Brisa Kub", "Stephon Wehner MD", "Mr. German Buckridge"]},
                                          "deliverables" => {:count => 8, :people => ["Mrs. Ken Brown", "Mr. Maryam Bradtke", "Mr. Maryam Bradtke", "Mr. Maryam Bradtke", "Dariana Ondricka", "Dr. Halle McDermott", "Vance Rowe", "Elvis Rodriguez"]},
                                          "deploy" => {:count => 7, :people => ["Gennaro Moore DDS", "Mrs. Ken Brown", "Avis McCullough Jr.", "Joanny Barton", "Earl Prosacco", "Earl Prosacco", "Dr. Halle McDermott"]},
                                          "disintermediate" => {:count => 5, :people => ["Alvah Jacobi", "Mr. Maryam Bradtke", "Orpha Predovic", "Elias Conn I", "Elvis Rodriguez"]},
                                          "distributed" => {:count => 4, :people => ["Alvah Jacobi", "Shad Muller", "Ara Walsh", "Emilia Schaefer"]},
                                          "dot-com" => {:count => 2, :people => ["Joanny Barton", "Dariana Ondricka"]}}
                                       )
  end
end