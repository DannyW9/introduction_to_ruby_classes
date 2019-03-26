class Library

  attr_accessor :books

  def initialize(books)
    @books = books
  end

  def return_by_name(title)
    for book in @books
      if book[:title] == title
        return book
      end
    end
    return nil
  end

  def return_rental_details(title)
    book = return_by_name(title)
    return book[:rental_details] if book != nil
  end

  def add_new_book(title)
    @books.push({title: title, rental_details: {student_name: "", date: ""}})
  end

  def change_rental_details(title, new_name, new_date)
    book = return_by_name(title)
      book[:rental_details] = {student_name: new_name, date: new_date}
  end


  # for book in @books
  #   if book[:title] == title
        # book[:rental_details][:name] = new_name
        # book[:rental_details][:date] = new_date
        # return book[:rental_details]
        # end
      # end

  end
