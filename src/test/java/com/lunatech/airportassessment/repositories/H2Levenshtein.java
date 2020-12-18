package com.lunatech.airportassessment.repositories;

import org.apache.commons.text.similarity.LevenshteinDistance;

public class H2Levenshtein {
    public static int apply(String left, String right) {
        return LevenshteinDistance.getDefaultInstance().apply(left, right);
    }
}
