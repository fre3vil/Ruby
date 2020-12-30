module SampleModule
  
  def self.included(base)
    base.extend ClassMethods
  end

  module ClassMethods
    
    def method_staic
      puts "This is static method"
    end
  end

  def instance_method
    puts "This is an instance method"
  end
end

