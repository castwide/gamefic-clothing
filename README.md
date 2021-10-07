# gamefic-clothing

A Gamefic extension for wearable clothing

The extension creates a `Clothing` entity with several subclasses: `Coat`, `Gloves`, `Hat`, `Pants`, `Shirt`, and `Shoes`. Only one entity of any class can be worn at a time.

## Installation

Add this line to your Gamefic project's Gemfile:

```ruby
gem 'gamefic-clothing'
```

And then execute:

    $ bundle install

## Usage

Example code:

```ruby
require 'gamefic-standard'
require 'gamefic-clothing'

Gamefic.script do
  @room = make Room, name: 'room'
  @shirt = make Shirt, name: 'shirt', parent: @room

  introduction do |actor|
    actor.parent = @room
    actor.execute :look
  end
end
```

Gameplay:

```
Room

You see a shirt.

> wear shirt

You take the shirt.

You put on the shirt.

> inventory   

You are wearing a shirt.

> remove shirt

You take off the shirt.

>
```
