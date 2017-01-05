require('rspec')
require('word_count')

describe('String#word_count') do
  it("counts how often a word appears in a sentence") do
    expect(("dog").word_count("dog")).to(eq(1))
  end
  it("counts how often a word appears in a sentence case insensitive") do
    expect(("DoG").word_count("dOg")).to(eq(1))
  end
end
