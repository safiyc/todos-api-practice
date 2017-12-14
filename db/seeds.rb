class Seed

  def self.begin
    seed = Seed.new
    seed.generate_todos
  end

  def generate_todos
    Todo.destroy_all

    20.times do |i|
      todo = Todo.create!(
      title: Faker::Lorem.word,
      created_by: Faker::Number.number(10)
      )
      puts "Todo #{i}: Title is #{todo.title} and quotation is '#{todo.created_by}'."
    end
  end

end

Seed.begin
