require 'spec_helper'

describe User do
  before { @user = User.new(name: "Joy Doe",email:"joy@gmail.com",
  	                        password: "psuphuket",
  	                        password_confirmation: "psuphuket")}


  subject  {@user}

  it { should respond_to(:name) }
  it { should respond_to(:email) }
  it { should respond_to(:password) }
  it { should respond_to(:password_confirmation) }
  it { should respond_to(:password_digest) }



	describe "when user is not present"  do
 		before { @user.name = "" }
 		it { should_not be_valid }
	end

	describe "when email is not present" do
		before { @user.email = "" }
 		it { should_not be_valid }
 	end 
  describe "when name is too long"  do
  	before { @user.name = "a" *60} 
  	it {should_not be_valid}   
  end


  describe "when email format is invalid" do 
  	before { @user.email = "foo.gmail.co m"}
  	it {should_not be_valid}
  end 	

  describe "when email format  is valid" do 
  	before { @user.email = "foo@gmail.com"}
  	it { should be_valid }
  end 	

end
