class DPDASampleRulebookFactory
  def self.build
    DPDARulebook.new([
                       PDARule.new(1, '(', 2, '$', ['b', '$']),
                       PDARule.new(2, '(', 2, 'b', %w[b b]),
                       PDARule.new(2, ')', 2, 'b', []),
                       PDARule.new(2, nil, 1, '$', ['$'])
                     ])
  end

  def self.build_second
    rulebook = DPDARulebook.new([
                                  PDARule.new(1, 'a', 2, '$', ['a', '$']),
                                  PDARule.new(1, 'b', 2, '$', ['b', '$']),
                                  PDARule.new(2, 'a', 2, 'a', %w[a a]),
                                  PDARule.new(2, 'b', 2, 'b', %w[b b]),
                                  PDARule.new(2, 'a', 2, 'b', []),
                                  PDARule.new(2, 'b', 2, 'a', []),
                                  PDARule.new(2, nil, 1, '$', ['$'])
                                ])
  end
end
