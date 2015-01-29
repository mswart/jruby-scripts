module Benchmark
  class << self
    attr_accessor :passes

    def passes
      @passes ||= 10
    end

    def run(name)
      puts name

      for pass in (1..10)
        start = Time.now
        yield

        puts "  Pass %3d: %5.2f ms" % [pass, (Time.now - start) * 1000]
      end

      puts
    end
  end
end
