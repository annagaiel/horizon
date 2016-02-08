require 'spec_helper'
require_relative '../lib/board'


RSpec.describe Board do
  let(:board) { Board.new(row = 10, col = 10) }

  describe ".new" do
    it "can take a custom row and column as an argument" do
      custom_board = Board.new(6, 7)
      expect(custom_board).to be_a(Board)
    end

    it 'can be initialized with 10 rows and columns by default' do
      expect(board).to be_a(Board)
      expect(board.rows.size).to eq(10)
      expect(board.rows[0].size).to eq(10)
    end
  end

  it 'prints 10 rows and columns for a row board' do
    board_printout =
      "|                   |\n" +
      "|                   |\n" +
      "|                   |\n" +
      "|                   |\n" +
      "|                   |\n" +
      "|                   |\n" +
      "|                   |\n" +
      "|                   |\n" +
      "|                   |\n" +
      "|                   |\n" +
      " A B C D E F G H I J \n"
    expect(board.print).to eq(board_printout)
  end

  it 'places a player token on the board' do
    board.add_turn('x', 'B')
    board_printout =
      "|                   |\n" +
      "|                   |\n" +
      "|                   |\n" +
      "|                   |\n" +
      "|                   |\n" +
      "|                   |\n" +
      "|                   |\n" +
      "|                   |\n" +
      "|                   |\n" +
      "|  x                |\n" +
      " A B C D E F G H I J \n"
    expect(board.print).to eq(board_printout)
  end

  it 'should have vertical match winner' do
    board.add_turn('x', 'B')
    board.add_turn('o', 'A')
    board.add_turn('x', 'B')
    board.add_turn('o', 'C')
    board.add_turn('x', 'B')
    board.add_turn('o', 'D')
    board.add_turn('x', 'B')
    board_printout =
      "|                   |\n" +
      "|                   |\n" +
      "|                   |\n" +
      "|                   |\n" +
      "|                   |\n" +
      "|                   |\n" +
      "|  x                |\n" +
      "|  x                |\n" +
      "|  x                |\n" +
      "|o x o o            |\n" +
      " A B C D E F G H I J \n"
    expect(board.print).to eq(board_printout)
    expect(board.winner?).to eq(true)
  end



end


