#!/usr/bin/env ruby
# code by fre3vil





r1 = Rational(2, 3)
p r1
r2 = 2.5.to_r
p r2
r3 = r1 + r2
p r3
p r3.numerator
p r3.denominator


p Rational('2/3')
p Rational(3)
p Rational(3, -5)
p Rational(0.2)
p Rational('0.2')
p 0.2.to_r
p 0.2.rationalize
p '1/4'.to_r
