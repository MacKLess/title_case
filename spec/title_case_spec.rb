require('rspec')
require('title_case')

describe('#title_case') do
  it("does nothing to non-alphabetical characters") do
    expect(('1@#$%!').title_case()).to(eq('1@#$%!'))
  end

  it("capitalizes the first letter of a string") do
    expect(("bioshock").title_case()).to(eq("Bioshock"))
  end

  it("changes all other letters in a string to lowercase") do
    expect(("BIOSHOCK").title_case()).to(eq("Bioshock"))
  end
end
