import ballerina/http;

// The service-level CORS config applies globally to each `resource`.


public type InputData record {|
    int a;
    int b;
|};

public type OutputData record {|
    int result;
|};

service /petstore on new http:Listener(9090) {
    //private final mysql:Client dbClient;



    function init() returns error? {

    }

    resource function post add (@http:Payload InputData inputData) returns OutputData {
        return {result: inputData.a + inputData.b};
    }
        
}