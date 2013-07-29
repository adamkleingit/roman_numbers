require './roman_numbers'
describe "roman_numbers" do
  it {1.roman.should == 'I'}
  it {2.roman.should == 'II'}
  it {4.roman.should == 'IV'}
  it {5.roman.should == 'V'}
  it {6.roman.should == 'VI'}
  it {9.roman.should == 'IX'}
  it {11.roman.should == 'XI'}
  it {19.roman.should == 'XIX'}
  it {31.roman.should == 'XXXI'}
  it {79.roman.should == 'LXXIX'}
  it {40.roman.should == 'XL'}
  it {101.roman.should == 'CI'}
  it {90.roman.should == 'XC'}
  it {294.roman.should == 'CCXCIV'}
end