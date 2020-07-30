package ru.job4j.accident.repository;
import org.springframework.stereotype.Repository;
import ru.job4j.accident.model.Accident;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;


//@Repository
public class AccidentMem {

    private ConcurrentHashMap<Integer, Accident> accidents = new ConcurrentHashMap<>();
    private AtomicInteger id = new AtomicInteger(1);

    public void add(Accident accident) {
        accidents.put(id.getAndIncrement(), accident);
    }

    public Map getAccidents() {
        return accidents;
    }

}

