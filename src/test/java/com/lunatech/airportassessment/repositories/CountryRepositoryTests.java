package com.lunatech.airportassessment.repositories;

import com.lunatech.airportassessment.models.Country;

import com.lunatech.airportassessment.models.reports.ReportRow;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.jdbc.Sql;
import org.springframework.test.context.junit4.SpringRunner;

import static org.junit.Assert.*;

import java.util.Arrays;
import java.util.List;
import java.util.Optional;
import java.util.UUID;
import java.util.stream.Collectors;

@RunWith(SpringRunner.class)
@SpringBootTest
@Sql({"/data.sql"})
public class CountryRepositoryTests {

    @Autowired
    private CountryRepository repository;

    @Test
    public void testFindCountryByCode() {
        Optional<Country> us = repository.findByCode("US");
        assertTrue("USA should be found by code", us.isPresent());

        Optional<Country> random = repository.findByCode("XX");
        assertFalse("Random country should not be found by code", random.isPresent());
    }

    @Test
    public void testFindCountryByName() {
        Optional<Country> us = repository.findByName("United States");
        assertTrue("USA should be found by name", us.isPresent());

        Optional<Country> random = repository.findByName(UUID.randomUUID().toString());
        assertFalse("Random country should not be found by name", random.isPresent());
    }

    @Test
    public void testFindCountryByFuzzyName() {
        List<String> us = repository.findByFuzzyName("United Statas", 2);
        assertFalse("USA should be found by fuzzy search", us.isEmpty());

        List<String> notFound = repository.findByFuzzyName("Un3ted Statas", 2);
        assertTrue("USA should be not found by fuzzy search", notFound.isEmpty());
    }

    @Test
    public void testTopAirports() {
        List<ReportRow> topAirports = repository.queryTopAirports(10);
        assertFalse("Top airports shouldn't be empty", topAirports.isEmpty());

        List<String> topNames = topAirports.stream().map(ReportRow::getName).collect(Collectors.toList());
        List<String> expectedNames = Arrays.asList("United States", "Argentina", "Netherlands", "Belgium");
        assertEquals(topNames, expectedNames);
    }

    @Test
    public void testBottomAirports() {
        List<ReportRow> bottomAirports = repository.queryBottomAirports(10);
        assertFalse("Bottom airports shouldn't be empty", bottomAirports.isEmpty());

        List<String> bottomNames = bottomAirports.stream().map(ReportRow::getName).collect(Collectors.toList());
        List<String> expectedNames = Arrays.asList("Belgium", "Netherlands", "Argentina", "United States");
        assertEquals(bottomNames, expectedNames);
    }

    @Test
    public void testCommonRunways() {
        List<ReportRow> commonRunways = repository.queryCommonRunways(2);
        assertFalse("Common runways shouldn't be empty", commonRunways.isEmpty());

        List<String> runwayNames = commonRunways.stream().map(ReportRow::getName).collect(Collectors.toList());
        List<String> expectedNames = Arrays.asList("H1", "08");
        assertEquals(runwayNames, expectedNames);
    }
}
