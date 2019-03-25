require('minitest/autorun')
require('minitest/rg')
require_relative('../library_class.rb')

class ClassesTest < MiniTest::Test

  def setup
    @library = Library.new([
      {title: "lord of the rings", rental_details: {student_name: "Jeff", date: "29/03/19"}},
      # {title: "of mice and men", rental_details: {student_name: "", date: ""}}
      ])
  end


def test_return_by_name
  found_book = @library.return_by_name("lord of the rings")
  assert_equal("lord of the rings", found_book[:title])
end

def test_return_rental_details
  found_rental = @library.return_rental_details("lord of the rings")
  assert_equal({student_name: "Jeff", date: "29/03/19"}, found_rental)
end

def test_add_new_book
  book_list = @library.add_new_book("of mice and men")
  assert_equal(2, book_list)
end

def test_change_rental_details
  new_loanee = @library.change_rental_details("lord of the rings", "David", "20/06/19")
assert_equal({student_name: "David", date: "20/06/19"}, new_loanee)
end


end
