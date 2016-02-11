require 'spec_helper'
require_relative '../lib/board'

RSpec.describe Board do
  let(:board) { Board.new(row = 10, col = 10) }

  describe ".new" do
    it "can take a custom row and column as an argument" do
      custom_board = Board.new(6, 7)
      expect(custom_board).to be_a(Board)
      expect(board.full?).to eq(false)
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

  it 'should have horizontal match winner' do
    board.add_turn('x', 'B')
    board.add_turn('o', 'C')
    board.add_turn('x', 'B')
    board.add_turn('o', 'D')
    board.add_turn('x', 'B')
    board.add_turn('o', 'E')
    board.add_turn('x', 'A')
    board.add_turn('o', 'F')
    board_printout =
      "|                   |\n" +
      "|                   |\n" +
      "|                   |\n" +
      "|                   |\n" +
      "|                   |\n" +
      "|                   |\n" +
      "|                   |\n" +
      "|  x                |\n" +
      "|  x                |\n" +
      "|x x o o o o        |\n" +
      " A B C D E F G H I J \n"
    expect(board.print).to eq(board_printout)
    expect(board.winner?).to eq(true)
  end

  it 'should be full and stalemate' do
    small_board = Board.new(4, 4)
    small_board.add_turn('x', 'A')
    small_board.add_turn('x', 'A')
    small_board.add_turn('x', 'A')
    small_board.add_turn('o', 'A')
    small_board.add_turn('x', 'B')
    small_board.add_turn('o', 'B')
    small_board.add_turn('o', 'B')
    small_board.add_turn('x', 'B')
    small_board.add_turn('o', 'C')
    small_board.add_turn('x', 'C')
    small_board.add_turn('x', 'C')
    small_board.add_turn('o', 'C')
    small_board.add_turn('o', 'D')
    small_board.add_turn('o', 'D')
    small_board.add_turn('x', 'D')
    small_board.add_turn('o', 'D')
    small_board_printout =
      "|o x o o|\n" +
      "|x o x x|\n" +
      "|x o x o|\n" +
      "|x x o o|\n" +
      " A B C D \n"
    expect(small_board.full?).to eq(true)
    expect(small_board.stalemate?).to eq(true)
  end

  it 'should have right diagonal' do
    board = Board.new(6, 7)
    board.add_turn('x', 'B')
    board.add_turn('o', 'A')
    board.add_turn('x', 'E')
    board.add_turn('o', 'C')
    board.add_turn('x', 'F')
    board.add_turn('o', 'D')
    board.add_turn('x', 'C')
    board.add_turn('o', 'D')
    board.add_turn('x', 'D')
    board.add_turn('o', 'E')
    board.add_turn('x', 'A')
    board.add_turn('o', 'E')
    board.add_turn('x', 'E')
    board_printout =
      "|             |\n" +
      "|             |\n" +
      "|        x    |\n" +
      "|      x o    |\n" +
      "|x   x o o    |\n" +
      "|o x o o x x  |\n" +
      " A B C D E F G \n"
    expect(board.print).to eq(board_printout)
  end

  it 'should have left diagonal' do
    board = Board.new(6, 7)
    board.add_turn('x', 'A')
    board.add_turn('o', 'C')
    board.add_turn('x', 'B')
    board.add_turn('o', 'D')
    board.add_turn('x', 'A')
    board.add_turn('o', 'C')
    board.add_turn('x', 'B')
    board.add_turn('o', 'B')
    board.add_turn('x', 'A')
    board.add_turn('o', 'A')

    board_printout =
      "|             |\n" +
      "|             |\n" +
      "|o            |\n" +
      "|x o          |\n" +
      "|x x o        |\n" +
      "|x x o o      |\n" +
      " A B C D E F G \n"
    expect(board.print).to eq(board_printout)
  end

end
