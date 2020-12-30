#!/usr/bin/env ruby
# code by fre3vil





class SampleClass
  include SampleModule
end

sc = SampleClass.new
sc.instance_method
sc.class.method_static
