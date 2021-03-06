
package org.apache.ode.pmapi;

import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebResult;
import javax.jws.WebService;
import javax.jws.soap.SOAPBinding;
import javax.xml.bind.annotation.XmlSeeAlso;
import javax.xml.namespace.QName;
import org.apache.ode.pmapi.types._2006._08._02.TProcessInfo;
import org.apache.ode.pmapi.types._2006._08._02.TProcessInfoList;


/**
 * This class was generated by the JAX-WS RI.
 * JAX-WS RI 2.2.4-b01
 * Generated source version: 2.2
 * 
 */
@WebService(name = "ProcessManagementPortType", targetNamespace = "http://www.apache.org/ode/pmapi")
@SOAPBinding(style = SOAPBinding.Style.RPC)
@XmlSeeAlso({
    org.apache.ode.pmapi.types._2006._08._02.ObjectFactory.class,
    org.apache.ode.pmapi.ObjectFactory.class
})
public interface ProcessManagementPortType {


    /**
     * 
     * @param orderKeys
     * @param filter
     * @return
     *     returns org.apache.ode.pmapi.types._2006._08._02.TProcessInfoList
     * @throws ManagementFault
     */
    @WebMethod
    @WebResult(name = "process-info-list", partName = "process-info-list")
    public TProcessInfoList listProcesses(
        @WebParam(name = "filter", partName = "filter")
        String filter,
        @WebParam(name = "orderKeys", partName = "orderKeys")
        String orderKeys)
        throws ManagementFault
    ;

    /**
     * 
     * @return
     *     returns org.apache.ode.pmapi.types._2006._08._02.TProcessInfoList
     * @throws ManagementFault
     */
    @WebMethod
    @WebResult(name = "process-info-list", partName = "process-info-list")
    public TProcessInfoList listAllProcesses()
        throws ManagementFault
    ;

    /**
     * 
     * @param customizer
     * @param orderKeys
     * @param filter
     * @return
     *     returns org.apache.ode.pmapi.types._2006._08._02.TProcessInfoList
     * @throws ManagementFault
     */
    @WebMethod
    @WebResult(name = "process-info-list", partName = "process-info-list")
    public TProcessInfoList listProcessesCustom(
        @WebParam(name = "filter", partName = "filter")
        String filter,
        @WebParam(name = "orderKeys", partName = "orderKeys")
        String orderKeys,
        @WebParam(name = "customizer", partName = "customizer")
        String customizer)
        throws ManagementFault
    ;

    /**
     * 
     * @param pid
     * @return
     *     returns org.apache.ode.pmapi.types._2006._08._02.TProcessInfo
     * @throws ManagementFault
     */
    @WebMethod
    @WebResult(name = "process-info", partName = "process-info")
    public TProcessInfo getProcessInfo(
        @WebParam(name = "pid", partName = "pid")
        QName pid)
        throws ManagementFault
    ;

    /**
     * 
     * @param customizer
     * @param pid
     * @return
     *     returns org.apache.ode.pmapi.types._2006._08._02.TProcessInfo
     * @throws ManagementFault
     */
    @WebMethod
    @WebResult(name = "process-info", partName = "process-info")
    public TProcessInfo getProcessInfoCustom(
        @WebParam(name = "pid", partName = "pid")
        QName pid,
        @WebParam(name = "customizer", partName = "customizer")
        String customizer)
        throws ManagementFault
    ;

    /**
     * 
     * @param aids
     * @param pid
     * @return
     *     returns org.apache.ode.pmapi.types._2006._08._02.TProcessInfo
     * @throws ManagementFault
     */
    @WebMethod
    @WebResult(name = "process-info", partName = "process-info")
    public TProcessInfo getExtensibilityElements(
        @WebParam(name = "pid", partName = "pid")
        QName pid,
        @WebParam(name = "aids", partName = "aids")
        AidsType aids)
        throws ManagementFault
    ;

    /**
     * 
     * @param propertyName
     * @param propertyValue
     * @param pid
     * @return
     *     returns org.apache.ode.pmapi.types._2006._08._02.TProcessInfo
     * @throws ManagementFault
     */
    @WebMethod
    @WebResult(name = "process-info", partName = "process-info")
    public TProcessInfo setProcessProperty(
        @WebParam(name = "pid", partName = "pid")
        QName pid,
        @WebParam(name = "propertyName", partName = "propertyName")
        QName propertyName,
        @WebParam(name = "propertyValue", partName = "propertyValue")
        String propertyValue)
        throws ManagementFault
    ;

    /**
     * 
     * @param propertyName
     * @param propertyValue
     * @param pid
     * @return
     *     returns org.apache.ode.pmapi.types._2006._08._02.TProcessInfo
     * @throws ManagementFault
     */
    @WebMethod
    @WebResult(name = "process-info", partName = "process-info")
    public TProcessInfo setProcessPropertyNode(
        @WebParam(name = "pid", partName = "pid")
        QName pid,
        @WebParam(name = "propertyName", partName = "propertyName")
        QName propertyName,
        @WebParam(name = "propertyValue", partName = "propertyValue")
        Object propertyValue)
        throws ManagementFault
    ;

    /**
     * 
     * @param pid
     * @return
     *     returns org.apache.ode.pmapi.types._2006._08._02.TProcessInfo
     * @throws ManagementFault
     */
    @WebMethod
    @WebResult(name = "process-info", partName = "process-info")
    public TProcessInfo activate(
        @WebParam(name = "pid", partName = "pid")
        QName pid)
        throws ManagementFault
    ;

    /**
     * 
     * @param retired
     * @param pid
     * @return
     *     returns org.apache.ode.pmapi.types._2006._08._02.TProcessInfo
     * @throws ManagementFault
     */
    @WebMethod
    @WebResult(name = "process-info", partName = "process-info")
    public TProcessInfo setRetired(
        @WebParam(name = "pid", partName = "pid")
        QName pid,
        @WebParam(name = "retired", partName = "retired")
        boolean retired)
        throws ManagementFault
    ;

}
