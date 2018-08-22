## CLI

### Todo List

A todo list CLI app that lets you list items, add items, and remove them too!

### Usage

- List all items with `./exe/todo` or `./exe/todo list`
- Add todo list items with `./exe/todo add "some item" "another optional item"`
- Remove a todo list item with `./exe/todo remove 1` (where 1 is the item number you want to remove)

### Note

Object persistence is done with ruby's YAML library. Here's the [gist of how it works](https://gist.github.com/gmcgibbon/baac875641493865ac415a73ef2c0701).
