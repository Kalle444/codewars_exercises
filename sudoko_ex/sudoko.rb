require 'pry-byebug'

class Sudoko

  def initialize(board)
    @board = board
    @right_numb = Array(1..9)
    @columns = Array.new(9) { [] }
    @regions = Array.new(9) { [] }
    @result = true
    populate_columns_regions
  end

  def done_or_not
    check_rows
    check_columns
    check_regions
    return @result ? "Finished!" : "Try again!"
  end

  def populate_columns_regions
    @board.each_with_index do |row, ind|
      add_to_column(row)
      add_to_region(row, ind)
    end
  end

  def add_to_column(row)
    row.each_with_index { |num, ind| @columns[ind] << num }
  end

  def check_rows
    @board.each { |row| @result = false if row.sort != @right_numb.sort }
  end

  def check_columns
    @columns.each { |column| @result = false if column.sort != @right_numb.sort }
  end

  def check_regions
    @regions.each { |region| @result = false if region.flatten.sort != @right_numb.sort }
  end

  def add_to_region(row, ind)
    if ind <= 2
      @regions[0] << row[0..2]
      @regions[1] << row[3..5]
      @regions[2] << row[6..8]
    elsif ind <= 5
      @regions[3] << row[0..2]
      @regions[4] << row[3..5]
      @regions[5] << row[6..8]
    else
      @regions[6] << row[0..2]
      @regions[7] << row[3..5]
      @regions[8] << row[6..8]
    end
  end

end



