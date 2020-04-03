package com.barrettotte.premium.repository;

import java.util.List;

import com.barrettotte.premium.model.Vehicle;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;


@Repository
public class VehicleRepository {

    @Autowired
    JdbcTemplate jdbcTemplate;


    public List<Vehicle> findVehicle(final String make, final String model, final Integer year){
        final String sql = "select * from vehicles where make=? and model=? and year=?";
        return jdbcTemplate.queryForList(sql, new Object[]{make, model, year}, Vehicle.class);
    }

}
