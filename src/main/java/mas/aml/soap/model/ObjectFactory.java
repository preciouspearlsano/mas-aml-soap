//
// This file was generated by the Eclipse Implementation of JAXB, v3.0.0 
// See https://eclipse-ee4j.github.io/jaxb-ri 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2023.02.18 at 06:20:14 PM CST 
//


package mas.aml.soap.model;

import javax.xml.bind.annotation.XmlRegistry;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the mas.aml.soap.model package. 
 * <p>An ObjectFactory allows you to programatically 
 * construct new instances of the Java representation 
 * for XML content. The Java representation of XML 
 * content can consist of schema derived interfaces 
 * and classes representing the binding of schema 
 * type definitions, element declarations and model 
 * groups.  Factory methods for each of these are 
 * provided in this class.
 * 
 */
@XmlRegistry
public class ObjectFactory {


    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: mas.aml.soap.model
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link GetCustomerFormCommandRequest }
     * 
     */
    public GetCustomerFormCommandRequest createGetCustomerFormCommandRequest() {
        return new GetCustomerFormCommandRequest();
    }

    /**
     * Create an instance of {@link CustomerFormReply }
     * 
     */
    public CustomerFormReply createCustomerFormReply() {
        return new CustomerFormReply();
    }

    /**
     * Create an instance of {@link ScreeningResult }
     * 
     */
    public ScreeningResult createScreeningResult() {
        return new ScreeningResult();
    }

    /**
     * Create an instance of {@link GetRequestSuccessResponse }
     * 
     */
    public GetRequestSuccessResponse createGetRequestSuccessResponse() {
        return new GetRequestSuccessResponse();
    }

    /**
     * Create an instance of {@link Hits }
     * 
     */
    public Hits createHits() {
        return new Hits();
    }

    /**
     * Create an instance of {@link Input }
     * 
     */
    public Input createInput() {
        return new Input();
    }

    /**
     * Create an instance of {@link Outbox }
     * 
     */
    public Outbox createOutbox() {
        return new Outbox();
    }

}
