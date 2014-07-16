require 'spec_helper'

describe User do
  let(:valid_attributes) {
  	{ 
  		first_name: "Chad",
  		last_name: "Flores",
  		email: "chadwickflores@gmail.com",
      password: "treehouse1234",
      password_confirmation: "treehouse1234"
  	}
  }

  context "relationships" do
    it { should have_many(:todo_lists) } 
  end
  
  context "validations" do
  	let(:user) { User.new(valid_attributes) }	
  	
  	before do
  		User.create(valid_attributes)
  	end

  	it "requires and email" do
  		expect(user).to validate_presence_of(:email)
  	end

  	it "requires a unique email" do
  		expect(user).to validate_uniqueness_of(:email)
  	end

    it "requires a unique email (case insensitive)" do
      user.email = "CHADWICKFLORES@GMAIL.COM"
      expect(user).to validate_uniqueness_of(:email)
    end

    it "requires the email address to look like an email" do
      user.email = "chad"
      expect(user).to_not be_valid
    end
  end

  describe "#downcase_email" do
  	it "makes the email attribute lower case" do
  		user = User.new(valid_attributes.merge(email: "CHADWICKFLORES@GMAIL.COM"))
  		#user.downcase_email
  		#expect(user.email).to eq("chadwickflores@gmail.com")
      expect{ user.downcase_email }.to change{ user.email }.
        from("CHADWICKFLORES@GMAIL.COM").
        to("chadwickflores@gmail.com")
  	end

    it "downcases an email before saving" do
      user = User.new(valid_attributes)
      user.email = "CHADWICKFLORES@GMAIL.COM"
      expect(user.save).to be_true
      expect(user.email).to eq("chadwickflores@gmail.com")
    end
  end
end
