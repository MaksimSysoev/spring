package ru.job4j.accident.repository;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import ru.job4j.accident.model.Accident;

import java.util.List;

@Repository
public class AccidentJdbcTemplate {
    private final JdbcTemplate jdbc;

    public AccidentJdbcTemplate(JdbcTemplate jdbc) {
        this.jdbc = jdbc;
        jdbc.execute("create table if not exists accident(" +
                "id serial primary key," +
                "name varchar(2000)," +
                "text varchar(2000)," +
                "address varchar(2000))");
        int rowCount = jdbc.queryForObject("select count(*) from accident", Integer.class);
        if (rowCount == 0) {
            this.save(new Accident("User1", "Text1", "Address1"));
        }

    }

    public Accident save(Accident accident) {
        jdbc.update("insert into accident (name, text, address) values (?, ?, ?)",
                accident.getName(),
                accident.getText(),
                accident.getAddress());
        return accident;
    }


    public List<Accident> getAll() {
        return jdbc.query("select * from accident",
                (rs, row) -> {
                    Accident accident = new Accident();
                    accident.setId(rs.getInt("id"));
                    accident.setName(rs.getString("name"));
                    accident.setText(rs.getString("text"));
                    accident.setAddress(rs.getString("address"));
                    return accident;
                });
    }
}
