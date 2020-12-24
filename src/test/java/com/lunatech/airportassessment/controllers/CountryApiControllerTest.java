package com.lunatech.airportassessment.controllers;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.jdbc.Sql;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.web.servlet.MockMvc;

import static org.hamcrest.Matchers.*;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.content;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

@RunWith(SpringRunner.class)
@SpringBootTest
@AutoConfigureMockMvc
@Sql({"/data.sql"})
public class CountryApiControllerTest {

    @Autowired
    private MockMvc mockMvc;

    @Test
    public void queryCountryByCode() throws Exception {
        mockMvc.perform(get("/api/countries?code=US"))
                .andExpect(status().isOk())
                .andExpect(content().string(containsString("United States")));

        mockMvc.perform(get("/api/countries?code=XX"))
                .andExpect(status().isNotFound());
    }

    @Test
    public void queryCountryByName() throws Exception {
        mockMvc.perform(get("/api/countries").param("name", "United States"))
                .andExpect(status().isOk())
                .andExpect(content().string(containsString("United States")));

        mockMvc.perform(get("/api/countries")
                .param("name", "Unitad States")
                .param("fuzzy", "true"))
                .andExpect(status().isOk())
                .andExpect(content().string(containsString("United States")));

        mockMvc.perform(get("/api/countries")
                .param("name", "Unitad Stetas")
                .param("fuzzy", "true"))
                .andExpect(status().isNotFound());
    }

    @Test
    public void queryTopAirports() throws Exception {
        mockMvc.perform(get("/api/reports/top-airports"))
                .andExpect(status().isOk())
                .andExpect(content().string(containsString("Argentina")));

        mockMvc.perform(get("/api/reports/top-airports").param("limit", "1"))
                .andExpect(status().isOk())
                .andExpect(content().string(not(containsString("Argentina"))));
    }

    @Test
    public void queryBottomAirports() throws Exception {
        mockMvc.perform(get("/api/reports/bottom-airports"))
                .andExpect(status().isOk())
                .andExpect(content().string(containsString("Argentina")));

        mockMvc.perform(get("/api/reports/bottom-airports").param("limit", "1"))
                .andExpect(status().isOk())
                .andExpect(content().string(containsString("Belgium")));
    }

    @Test
    public void queryCommonRunways() throws Exception {
        mockMvc.perform(get("/api/reports/common-runways"))
                .andExpect(status().isOk())
                .andExpect(content().string(containsString("08")));

        mockMvc.perform(get("/api/reports/common-runways").param("limit", "1"))
                .andExpect(status().isOk())
                .andExpect(content().string(containsString("H1")))
                .andExpect(content().string(not(containsString("08"))));
    }
}
