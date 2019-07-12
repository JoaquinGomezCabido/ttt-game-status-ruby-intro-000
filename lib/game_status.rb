# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

def won?(board)
  WIN_COMBINATIONS.each do |array|
    if (board[array[0]] == board[array[1]] && board[array[1]] == board[array[2]])
      return array
    end
  end
end

def full?(board)
  board.all? do |cell|
    cell == "X" || cell = "O"
  end
end

def draw?(board)
  if full?(board)
    if(!won?(board))
      return true
    end
  else
    return false
  end
end

def over?(board)
  if (won?(board) || draw?(board) || full?(board))
    return true
  else
    return false
  end
end

def winner(board)
  cells = won?(board)
  return board(cells[0])
end
