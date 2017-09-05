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

  it("capitalizes the first letter of each word in a string") do
    expect(("twin peaks").title_case()).to(eq("Twin Peaks"))
  end

  it("does nothing to: a, an, the, at, by, for, in, of, on, to, up, and, as, but, or, nor unless first letter of string") do
    expect(("it was the worst of times").title_case()).to(eq("It Was the Worst of Times"))
  end
end
