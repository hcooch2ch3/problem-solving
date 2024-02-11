class ParkingSystem {
    private int[] carTypes;

    public ParkingSystem(int big, int medium, int small) {
        carTypes = new int[]{big, medium, small};
    }
    
    public boolean addCar(int carType) {
        if(carTypes[carType - 1] > 0) {
            carTypes[carType - 1] -= 1;
            return true;
        } 
        return false;
    }
}

/**
 * Your ParkingSystem object will be instantiated and called as such:
 * ParkingSystem obj = new ParkingSystem(big, medium, small);
 * boolean param_1 = obj.addCar(carType);
 */