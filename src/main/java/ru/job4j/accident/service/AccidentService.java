package ru.job4j.accident.service;

import org.springframework.stereotype.Service;
import ru.job4j.accident.model.Accident;
import ru.job4j.accident.repository.AccidentMem;

import java.util.Map;

@Service
public class AccidentService {

    private AccidentMem am = new AccidentMem();

    public AccidentService() {
        Accident ac1 = new Accident();
        ac1.setId(0);
        ac1.setName("User1");
        ac1.setText("Accident 1");
        ac1.setAddress("Address 1");

        Accident ac2 = new Accident();
        ac2.setId(1);
        ac2.setName("User2");
        ac2.setText("Accident 2");
        ac2.setAddress("Address 2");


       am.add(ac1);
       am.add(ac2);
    }

    public Map getAm() {
        return am.getAccidents();
    }

}
