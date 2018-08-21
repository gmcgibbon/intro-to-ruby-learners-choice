require 'todo'

module Todo
  module Commands
    class Add < Todo::Command
      def call(args, _name)
        TodoList.add(*args)
      end

      def self.help
        "Adds an item to the todo list"
      end
    end
  end
end
