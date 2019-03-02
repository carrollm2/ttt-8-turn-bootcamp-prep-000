def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)

  while valid_move?(board, index) == false
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
  end

  if valid_move?(board, index) == true
    move(board, index, "X")
    display_board(board)
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(gets)
  index = gets.to_i - 1
end

def move(board, index, value = "X")
  board[index] = value
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  else
    return true
  end
end

def valid_move?(board, index)

  if index.equal?. -1
    position = 0
  else
    position = index
  end

  if position.between?(0, 8)
    if position_taken?(board, position) == false
      return true
    else
      return false
    end
  else
    return false
  end
end
