
package model;

public class Cars {
    
    private int carID;
    private String carMake;
    private String carModel; 
    private String favColor;
    private int carYear;
    private String carType;

    
    public Cars() {
        this.carID = 0;
        this.carMake = "";
        this.carModel = "";
        this.favColor = "";
        this.carYear = 0;
        this.carType = "";
    }
        
    public Cars(int carID, String carMake, String carModel, String favColor, int carYear, String carType) {
        this.carID = carID;
        this.carMake = carMake;
        this.carModel = carModel;
        this.favColor = favColor;
        this.carYear = carYear;
        this.carType = carType;
    }

    public int getCarID() {
        return carID;
    }

    public void setCarID(int carID) {
        this.carID = carID;
    }

    public String getCarMake() {
        return carMake;
    }

    public void setCarMake(String carMake) {
        this.carMake = carMake;
    }

    public String getCarModel() {
        return carModel;
    }

    public void setCarModel(String carModel) {
        this.carModel = carModel;
    }

    public String getFavColor() {
        return favColor;
    }

    public void setFavColor(String favColor) {
        this.favColor = favColor;
    }

    public int getCarYear() {
        return carYear;
    }

    public void setCarYear(int carYear) {
        this.carYear = carYear;
    }

    public String getCarType() {
        return carType;
    }

    public void setCarType(String carType) {
        this.carType = carType;
    }

    @Override
    public String toString() {
        return "Cars{" + "carID=" + carID + ", carMake=" + carMake + ", carModel=" + carModel + ", favColor=" + favColor + ", carYear=" + carYear + ", carType=" + carType + '}';
    }
    
    
    
}
