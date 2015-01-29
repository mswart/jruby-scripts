#!/usr/bin/env ruby

require_relative './lib/benchmark'

n = 500_000

def method_ref_0
  false
end

def method_ref_1(a, b, c)
  false
end

def method_kw_0(a, b: 0)
  false
end

def method_kw_1(a:,b:,c:0,d:0,e:,f:0)
  false
end


Benchmark.run("Reference I Method Invoke") do
  n.times { method_ref_0 }
end

Benchmark.run("Reference II Method Invoke") do
  n.times { method_ref_1(1, 2, a: 1, b: 2) }
end

Benchmark.run("Keyword I Method Invoke") do
  n.times { method_kw_0(a: 1) }
end

Benchmark.run("Keyword II Method Invoke") do
  n.times { method_kw_1(a: 1, b: 2, c: 3, e: 4, f: 5) }
end
