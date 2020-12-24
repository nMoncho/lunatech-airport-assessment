package com.lunatech.airportassessment.controllers;

import com.lunatech.airportassessment.models.Country;
import com.lunatech.airportassessment.models.reports.CommonRunways;
import com.lunatech.airportassessment.models.reports.ReportRow;
import com.lunatech.airportassessment.models.reports.RunwayPerCountry;
import com.lunatech.airportassessment.services.CountryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.server.ResponseStatusException;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("api")
public class CountryApiController {

    @Autowired
    private CountryService service;

    @GetMapping(value = "/countries", produces = "application/json")
    public Country findCountry(@RequestParam(name = "code", required = false) Optional<String> code,
                               @RequestParam(name = "name", required = false) Optional<String> name,
                               @RequestParam(name = "fuzzy", required = false, defaultValue = "false") Boolean fuzzy) {
        Optional<Country> byCode = code.flatMap(c -> service.findByCode(c));

        return byCode.orElseGet(
                () -> name.flatMap(n -> service.searchCountry(n, fuzzy).getCountry())
                        .orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND, "Country not found")));
    }

    @GetMapping(value = "/reports/top-airports", produces = "application/json")
    public List<ReportRow> getTopAirports(@RequestParam(name = "limit", required = false, defaultValue = "10") Optional<Integer> limit) {
        return service.reportTopAirports(limit);
    }

    @GetMapping(value = "/reports/bottom-airports", produces = "application/json")
    public List<ReportRow> getBottomAirports(@RequestParam(name = "limit", required = false, defaultValue = "10") Optional<Integer> limit) {
        return service.reportBottomAirports(limit);
    }

    @GetMapping(value = "/reports/runways", produces = "application/json")
    public RunwayPerCountry getRunwaysPerCountry() {
        return service.reportRunwaysPerCountry();
    }

    @GetMapping(value = "/reports/common-runways", produces = "application/json")
    public CommonRunways getCommonRunways(@RequestParam(name = "limit", required = false, defaultValue = "10") Optional<Integer> limit) {
        return service.reportCommonRunways(limit);
    }

}
