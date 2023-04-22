require 'cat_facts'

RSpec.describe CatFacts do
  it 'provides a cat fact' do
    fake_requester = double :requester
    allow(fake_requester).to receive(:get).with(URI(
      "https://catfact.ninja/fact")
    ).and_return('{"fact":"Isaac Newton invented the cat flap. Newton was experimenting in a pitch-black room. Spithead, one of his cats, kept opening the door and wrecking his experiment. The cat flap kept both Newton and Spithead happy.","length":211}')
    fact = "Isaac Newton invented the cat flap. Newton was experimenting in a pitch-black room. Spithead, one of his cats, kept opening the door and wrecking his experiment. The cat flap kept both Newton and Spithead happy."
    catfact = CatFacts.new(fake_requester)
    expect(catfact.provide).to eq ("Cat fact: Isaac Newton invented the cat flap. Newton was experimenting in a pitch-black room. Spithead, one of his cats, kept opening the door and wrecking his experiment. The cat flap kept both Newton and Spithead happy.")
  end
end