require 'pry-byebug'


class MultiTable

  def initialize(rows, columns)
    @rows = rows
    @columns = columns
    @table = []
  end

  def multiplication_table
    row_count = 1
    column_count = 1
    temp_array = []
    @rows.times do |row|
      @columns.times do |col|
        temp_array << row_count * column_count
        column_count += 1
      end
      @table << temp_array
      row_count += 1
      column_count = 1
      temp_array = []
    end
    @table
  end

end


# MultiTable.new(3,3).multiplication_table

    #populatating the empty array with rows of integers
    #iterate over number of rows
      #iterating over the number of columns
    # => adding numbers into the array - by row[index + 1] * colum [index + 1]
