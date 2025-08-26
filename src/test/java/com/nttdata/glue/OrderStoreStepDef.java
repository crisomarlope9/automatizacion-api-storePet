package com.nttdata.glue;

import com.nttdata.steps.StoreOrdenStep;
import io.cucumber.java.PendingException;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import net.thucydides.core.annotations.Steps;

public class OrderStoreStepDef {
    @Steps
    StoreOrdenStep storeOrdenStep;
    @Given("Se define la url {string}")
    public void seDefineLaUrl(String arg0) {
        System.out.println("Se define la url " + arg0);
        storeOrdenStep.definirUrl(arg0);
    }

    @When("se crea la orden")
    public void seCreaLaOrden() {
        storeOrdenStep.crearOrden();
    }


    @Then("code Status sea igual al {string}")
    public void codeStatusSeaIgualAl(String arg0) {
        // Write code here that turns the phrase above into concrete actions
        storeOrdenStep.validarCodeStatus(arg0);
    }

    @When("se consulta la orden por {string}")
    public void seConsultaLaOrdenPor(String id) {
        storeOrdenStep.consultarOrder(id);
    }


    @Then("valido el codigo de respuesta sea igual {string}")
    public void validoElCodigoDeRespuestaSeaIgual(String arg0) {
        // Write code here that turns the phrase above into concrete actions
        storeOrdenStep.validarCodeStatus(arg0);
    }
}
