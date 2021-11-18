/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package patients;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author alumne
 */
public class PatientsMemoryDAO implements IPatientsDAO{
    
    private List<Patient> patients;

    public PatientsMemoryDAO() {
        patients = new ArrayList<Patient>();
        patients.add(
            new Patient("Flavio","Larrea Ayala","Hombre",'A','+',165,80));
        patients.add(
            new Patient("Débora","Aramburu Galvez","Mujer",'O','+',170,70));
        /* 
            patients.add(
                new Patient("Albano","Danilo Pla Gallo","NoContesta",'AB','-',180,75));
        */
        
    }
    
    @Override
    public List<Patient> listAllPatients() {
        return patients;
    }

    @Override
    public boolean addPatient(Patient patient) {
        // NOTA: Faltaria validar cas de si el pacient ja existeix al sistema.
        return patients.add(patient);
    }
    
}
