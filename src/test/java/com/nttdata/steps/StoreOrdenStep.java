package com.nttdata.steps;

import io.restassured.RestAssured;
import io.restassured.response.Response;
import org.junit.Assert;

import java.time.LocalDateTime;

import static net.serenitybdd.rest.SerenityRest.restAssuredThat;

public class StoreOrdenStep {
    private static String URL = null;
    Response response;
    public void definirUrl(String url) {
        URL = url;
    }

    public void crearOrden() {
        LocalDateTime ahora = LocalDateTime.now();//se obtiene la fecha y hora local-
        String body = "{\n" +
                "  \"id\": 1,\n" +
                "  \"petId\": 10,\n" +
                "  \"quantity\": 2,\n" +
                "  \"shipDate\": \""+ahora+"\",\n" +
                "  \"status\": \"placed\",\n" +
                "  \"complete\": true\n" +
                "}";

        response= RestAssured.given()
                .contentType("application/json")
                .log()
                .all()
                .body(body)
                .when()
                .baseUri(URL)
                .post("/store/order")
                .then()
                .log().all()
                .extract().response();
        ;
    }



    public void validarCodeStatus(String statusCode) {

        Assert.assertEquals("Status code",Integer.parseInt(statusCode),response.getStatusCode());
    }

    public void consultarOrder(String id) {
        response= RestAssured.given()
                .contentType("application/json")
                .log()
                .all()
                .when()
                .baseUri(URL)
                .get("/store/order/"+id)
                .then()
                .log().all()
                .extract().response();

    }

    public void validarOrden(String body) {
        Assert.assertEquals("No tiene estado placed",
                body,
                response.jsonPath().getString("status"));


    }

    public void validarOrdenId(String id) {
        Assert.assertEquals("No coincide con el id",
                id,
                response.jsonPath().getString("id"));
    }
}
