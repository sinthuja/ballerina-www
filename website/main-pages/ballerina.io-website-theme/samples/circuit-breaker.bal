// circuit breaker example
endpoint http:Client backendClientEP {
    circuitBreaker: {
        rollingWindow: {
            timeWindowMillis:10000,
            bucketSizeMillis:2000
        },
        failureThreshold:0.2,
        resetTimeMillis:10000,
        statusCodes:[400, 404, 500]
    }
    url: "http://localhost:8080",
    timeoutMillis:2000,
};