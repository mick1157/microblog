require 'spec_helper'

describe User do

  it { should validate_presence_of(:user_name)}     # mrt
  it { should validate_presence_of(:email)}      # mrt

  context 'relationships' do                        # mrt
    should have_many :entries                       # mrt
   end                                              # mrt

end
