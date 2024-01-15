package com.bdd.runner;

import com.intuit.karate.junit5.Karate;

public class runner {

    @Karate.Test
    Karate testSystemProperty() {
        return Karate.run("classpath:com/bdd/features")
                .karateEnv("cert");
    }
}
