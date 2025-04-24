class Circuit
  def initialize(instructions)
    @wires = {}
    @cache = {}

    instructions.each do |line|
      expr, target = line.split(' -> ')
      @wires[target.strip] = expr.strip
    end
  end

  def signal(wire)
    return wire.to_i if wire.match?(/^\d+$/)
    return @cache[wire] if @cache.key?(wire)

    expr = @wires[wire]

    value = case expr
    when /^NOT (.+)$/
      ~signal($1)
    when /^(.+) AND (.+)$/
      signal($1) & signal($2)
    when /^(.+) OR (.+)$/
      signal($1) | signal($2)
    when /^(.+) LSHIFT (.+)$/
      signal($1) << signal($2)
    when /^(.+) RSHIFT (.+)$/
      signal($1) >> signal($2)
    else
      signal(expr)
    end

    @cache[wire] = value & 0xFFFF
  end
end
