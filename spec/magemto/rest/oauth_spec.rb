require "spec_helper"
require "magemto/rest/oauth"

describe "Magemto::REST::OAuth" do
  it "should instantiate without arguments" do
    lambda { Magemto::REST::OAuth.new }.should_not raise_error(ArgumentError)
  end
  
  describe ".configure" do
    before(:all) do
      @oauth = Magemto::REST::OAuth.new
    end

    context "setting class variables" do
      it "should set name" do
        @oauth.name = "magemto"
        @oauth.name.should match "magemto"
      end

      it "should set key" do
        @oauth.key = "zjlbw63tvqcn7f43pt2xedzabi42ridj"
        @oauth.key.should match "zjlbw63tvqcn7f43pt2xedzabi42ridj"
      end

      it "should set secret" do
        @oauth.secret = "5qx7cwen4exziq58oieftu3qirwzp8vu"
        @oauth.secret.should match "5qx7cwen4exziq58oieftu3qirwzp8vu"
      end
    end
  end
end
