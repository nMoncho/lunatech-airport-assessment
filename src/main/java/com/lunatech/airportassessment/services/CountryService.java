package com.lunatech.airportassessment.services;

import com.lunatech.airportassessment.models.Country;
import com.lunatech.airportassessment.models.reports.*;
import com.lunatech.airportassessment.repositories.CountryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;
import java.util.function.Supplier;

@Service
public class CountryService {

  public static final int SEARCH_LIKELINESS = 2;
  public static final int REPORT_TOP_BOTTOM_LIMIT = 10;
  public static final int REPORT_COMMON_LIMIT = 10;

  @Autowired
  private CountryRepository cRepository;

  public Optional<Country> findByCode(String code) {
    return cRepository.findByCode(code);
  }

  public SearchCountry searchCountry(String name, boolean firstFuzzySuggestion) {
    SearchCountry result;
    Optional<Country> countryOpt = cRepository.findByName(name);

    if (countryOpt.isPresent()) {
      result = new SearchCountry(countryOpt);
    } else {
      List<String> suggestions = cRepository.findByFuzzyName(name, SEARCH_LIKELINESS);
      if (firstFuzzySuggestion && !suggestions.isEmpty()) {
        result = searchCountry(suggestions.get(0), false);
      } else {
        result = new SearchCountry(suggestions);
      }
    }

    return result;
  }

  public TopBottomAirports reportTopBottomAirports(Optional<Integer> limitOpt) {
    int limit = limitOpt.orElse(REPORT_TOP_BOTTOM_LIMIT);
    List<ReportRow> top = cRepository.queryTopAirports(limit);
    List<ReportRow> bottom = cRepository.queryBottomAirports(limit);

    return new TopBottomAirports(top, bottom);
  }

  public List<ReportRow> reportTopAirports(Optional<Integer> limitOpt) {
    return cRepository.queryTopAirports(limitOpt.orElse(REPORT_TOP_BOTTOM_LIMIT));
  }

  public List<ReportRow> reportBottomAirports(Optional<Integer> limitOpt) {
    return cRepository.queryBottomAirports(limitOpt.orElse(REPORT_TOP_BOTTOM_LIMIT));
  }

  public RunwayPerCountry reportRunwaysPerCountry() {
    Map<String, List<String>> aggregate = cRepository.queryRunwaysPerCountry().stream().collect(
      (Supplier<TreeMap<String, List<String>>>) TreeMap::new,
      (map, row) -> {
        final List<String> current;
        if (map.containsKey(row.getName())) {
          current = map.get(row.getName());
        } else {
          current = new LinkedList<>();
        }

        current.add(row.getSurface());
        map.put(row.getName(), current);
      },
      TreeMap::putAll);

    return new RunwayPerCountry(aggregate);
  }

  public CommonRunways reportCommonRunways(Optional<Integer> limitOpt) {
    List<ReportRow> comm = cRepository.queryCommonRunways(limitOpt.orElse(REPORT_TOP_BOTTOM_LIMIT));

    return new CommonRunways(comm);
  }

  public static class SearchCountry {
    private final Optional<Country> country;
    private final List<String> suggestions;

    public SearchCountry(Optional<Country> country) {
      this.country = country;
      this.suggestions = Collections.emptyList();
    }

    public SearchCountry(List<String> suggestions) {
      this.suggestions = suggestions;
      this.country = Optional.empty();
    }

    public Optional<Country> getCountry() {
      return country;
    }

    public List<String> getSuggestions() {
      return suggestions;
    }
  }
}
