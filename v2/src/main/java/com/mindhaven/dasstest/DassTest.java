package com.mindhaven.dasstest;

public class DassTest {
    private int questionId;
    private int score;

    public DassTest(int questionId, int score) {
        this.questionId = questionId;
        this.score = score;
    }

    public int getQuestionId() {
        return questionId;
    }

    public void setQuestionId(int questionId) {
        this.questionId = questionId;
    }

    public int getScore() {
        return score;
    }

    public void setScore(int score) {
        this.score = score;
    }
}
