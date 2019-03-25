require('minitest/autorun')
require('minitest/rg')
require_relative('../library_class.rb')

class ClassesTest < MiniTest::Test

  def setup
    @book1 = {
      title: "lord of the rings",
      rental_details: {
        student_name: "Jeff",
        date: "29/03/19"
      }
    }
  end


end
