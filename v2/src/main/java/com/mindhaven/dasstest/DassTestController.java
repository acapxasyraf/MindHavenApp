package com.mindhaven.dasstest;

import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

public class DassTestController {

    public List<DassTest> processAnswers(HttpServletRequest request) {
        List<DassTest> responses = new ArrayList<>();
        for (int i = 1; i <= 12; i++) {
            String param = request.getParameter("q" + i);
            if (param != null) {
                int score = Integer.parseInt(param);
                responses.add(new DassTest(i, score));
            }
        }
        return responses;
    }

    public String calculateResult(List<DassTest> responses) {
        int totalScore = responses.stream().mapToInt(DassTest::getScore).sum();
        if (totalScore <= 18) {
            return "Normal";
        } else if (totalScore <= 24) {
            return "Mild";
        } else if (totalScore <= 35) {
            return "Moderate";
        } else if (totalScore <= 42) {
            return "Severe";
        } else {
            return "Extremely Severe";
        }
    }
}
