require "spec_helper"

describe 'Game' do
      
  before do
    @player1 = Player.new("Mark")
    @player2 = Player.new("Lindsey")
    @game = Game.new(@player1, @player2)
  end

  it "exists" do
    expect(@game).to be_a(Game)
  end

  it "initializes with player1 and player2" do 
    expect(game.player1).to eq("Mark")
    expect(game.player2).to eq("Lindsey")
  end

  it "produces a winner" do
    expect(game.winner).to eq("Mark")
  end

end