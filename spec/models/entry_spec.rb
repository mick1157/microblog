require 'spec_helper'

describe Entry do

  context 'relationship' do
    it { should belong_to :user}
  end


  pending "add some examples to (or delete) #{__FILE__}"
end
