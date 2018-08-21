module TodoList
  extend self
  @file = Pathname.new(File.expand_path('../../tmp/list.yml', __FILE__))
  @list = @file.exist? ? YAML.load_file(@file) : []

  def all
    @list.map.with_index do |item, index|
      number = index + 1
      "#{number}. #{item}"
    end
  end

  def add(*items)
    persist { @list.append(*items) }
  end

  def remove(number)
    persist do
      index = number - 1
      @list.delete_at(index)
    end
  end

  private

  def persist
    yield if block_given?
    @file.write(@list.to_yaml)
  end
end
