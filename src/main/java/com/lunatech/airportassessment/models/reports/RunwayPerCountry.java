package com.lunatech.airportassessment.models.reports;

import java.util.List;
import java.util.Map;

public class RunwayPerCountry {
    private final Map<String, List<String>> runwaysPerCountry;

    public RunwayPerCountry(Map<String, List<String>> runwaysPerCountry) {
        this.runwaysPerCountry = runwaysPerCountry;
    }

    public Map<String, List<String>> getRunwaysPerCountry() {
        return runwaysPerCountry;
    }
}
