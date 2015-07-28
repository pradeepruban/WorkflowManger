
package org.apache.ode.pmapi;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlElementDecl;
import javax.xml.bind.annotation.XmlRegistry;
import javax.xml.namespace.QName;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the org.apache.ode.pmapi package. 
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

    private final static QName _ManagementFault_QNAME = new QName("http://www.apache.org/ode/pmapi", "ManagementFault");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: org.apache.ode.pmapi
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link ListType }
     * 
     */
    public ListType createListType() {
        return new ListType();
    }

    /**
     * Create an instance of {@link AidsType }
     * 
     */
    public AidsType createAidsType() {
        return new AidsType();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://www.apache.org/ode/pmapi", name = "ManagementFault")
    public JAXBElement<String> createManagementFault(String value) {
        return new JAXBElement<String>(_ManagementFault_QNAME, String.class, null, value);
    }

}
