package patients;

/**
 * Class that contains all the patients info: blood type, rh, height, weight, name... 
 * @author alumne
 */
public class Patient {
    private String name;
    private String surnames;
    /** 
     * Gender can be: woman, man, or undefined.
     */
    private String gender;
    /** 
     * Blood Type can be: A, O, AB, B.
     */
    private char bloodType;
    /** 
     * RH can be +, -.
     */
    private char RH;
    /** 
     * Weight in Kgs
     */
    private int weight;
    /** 
     * Height in cms
     */
    private int height;

    
    public Patient(String name, String surnames, String gender, char bloodType, char RH, int weight, int height) {
        this.name = name;
        this.surnames = surnames;
        this.gender = gender;
        this.bloodType = bloodType;
        this.RH = RH;
        this.weight = weight;
        this.height = height;
    }
    
    
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurnames() {
        return surnames;
    }

    public void setSurnames(String surnames) {
        this.surnames = surnames;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public char getBloodType() {
        return bloodType;
    }

    public void setBloodType(char bloodType) {
        this.bloodType = bloodType;
    }

    public char getRH() {
        return RH;
    }

    public void setRH(char RH) {
        this.RH = RH;
    }

    public int getWeight() {
        return weight;
    }

    public void setWeight(int weight) {
        this.weight = weight;
    }

    public int getHeight() {
        return height;
    }

    public void setHeight(int height) {
        this.height = height;
    }

    @Override
    public String toString() {
        return "Patient{" + "name=" + name + ", surnames=" + surnames + ", gender=" + gender + ", bloodType=" + bloodType + ", RH=" + RH + ", weight=" + weight + ", height=" + height + '}';
    }
    
    
}
