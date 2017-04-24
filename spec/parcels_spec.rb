require('rspec')
require('parcels')

describe(Parcels) do
  describe("#volume") do
    it("returns the volume of the parcel") do
      test_parcel = Parcels.new(20, 10, 10, 500, 2)
      expect(test_parcel.volume()).to(eq(2000))
    end
  end

  describe("#parcel_price") do
    it("returns the price of the parcel") do
      test_parcel = Parcels.new(20, 10, 10, 500, 1)
      expect(test_parcel.parcel_price()).to(eq(15.5))
    end
  end

  describe("#parcel_time_price") do
    it("returns the price based on delivery time") do
      test_parcel = Parcels.new(20, 10, 10, 500, 3)
      expect(test_parcel.parcel_time_price()).to(eq(3))
    end
  end
end
