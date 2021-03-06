require 'spec_helper'

describe Assignment do
  it { should belong_to :user }
  it { should belong_to :role }

  it { should validate_presence_of :user_id }
  it { should validate_presence_of :role_id }
end
