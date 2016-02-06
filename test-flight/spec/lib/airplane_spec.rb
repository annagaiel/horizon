require_relative "../../lib/airplane"

describe Airplane do
  let(:my_plane) { Airplane.new("cesna", 10, 150) }

  describe "#initialization" do
    it "should have the type as cesna" do
      expect(my_plane.type).to eq("cesna")
    end
  end

  describe "#land" do
    it "should give a warning if the engine hasn't started" do
      expect(my_plane.land).to eq("airplane not started, please start")
    end
    it "should give warning if the plane is not flying" do
      my_plane.start
      expect(my_plane.land).to eq("airplane already on the ground")
    end
    it "should land if the plane is flying" do
      my_plane.start
      my_plane.takeoff
      expect(my_plane.land).to eq("airplane landed")
    end
  end

  describe "#takeoff" do
    it "should not takeoff is engine is not on" do
      expect(my_plane.takeoff).to eq("airplane not started, please start")
    end

    it "should takeoff if engine is on" do
      my_plane.start
      expect(my_plane.takeoff).to eq("airplane launched")
    end

    it "should give a warning plane is already flying" do
      my_plane.start
      my_plane.takeoff
      expect(my_plane.takeoff).to eq("airplane is already flying")
    end
  end

  describe "#start" do
    it "should start the engine" do
      expect(my_plane.start).to eq("engine started")
    end
    it "should give a warning message if engine is already started" do
      my_plane.start
      expect(my_plane.start).to eq("airplane already started")
    end
  end

  describe "#fuel" do
    # expect(:my_plane.fuel).to eq("")
  end
end
