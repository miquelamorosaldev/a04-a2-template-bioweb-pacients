/*
 * We used this Java Patters to design this class:
 * DAO 
 * https://www.oscarblancarteblog.com/2018/12/10/data-access-object-dao-pattern/
 * Singleton 
 * https://www.journaldev.com/1377/java-singleton-design-pattern-best-practices-examples#lazy-initialization
 */
package patients;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author alumne
 */
public class PatientsMemoryDAO implements IPatientsDAO{
    
    private static List<Patient> patients;

    public PatientsMemoryDAO() {
        if (patients == null) {
            patients = new ArrayList<>();
            patients.add(
                new Patient("Flavio","Larrea Ayala","Hombre","A",'+',165,80));
            patients.add(
                new Patient("Débora","Aramburu Galvez","Mujer","O",'+',170,70));
            patients.add(
                new Patient("Albano","Danilo Pla Gallo","NoContesta","AB",'-',180,71));
        }
    }
    
    
    @Override
    public List<Patient> listAllPatients() {
        return patients;
    }

    @Override
    public boolean addPatient(Patient patient) {
        // NOTA: Pending to validate Patient if exist or not.
        return patients.add(patient);
    }
    
}
