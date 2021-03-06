require 'bundler'
Bundler.require

module Concerns

  module Findable

    def find_by_name(name)
      self.all.detect {|item| item.name == name} 
    end

    def find_or_create_by_name(name)
      if object =  self.all.detect {|item| item.name == name}
        object
      else
        object= self.new(name)
        object.save
        object
      end
    end

  end
  
end

require_all 'lib'
