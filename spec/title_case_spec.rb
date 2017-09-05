require('rspec')
require('title_case')

describe('#title_case') do
  it("does nothing to non-alphabetical characters") do
    expect(('1@#$%!').title_case()).to(eq('1@#$%!'))
  end

  it("changes all letters in a string to lowercase") do
    expect(("IT WAS THE WORST OF TIMES").title_case()).to(eq("it was the worst of times"))
  end
end
