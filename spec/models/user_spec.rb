require 'rails_helper'

describe User do

  it { should have_many :todos }
  it { should validate_presence_of :name }
  it { should validate_presence_of :email }
  it { should validate_presence_of :password_digest }

end
