require('rspec')
require('title_case')

describe('#title_case') do
  it("does nothing to non-alphabetical characters") do
    expect(('1@#$%!').title_case()).to(eq('1@#$%!'))
  end
end
