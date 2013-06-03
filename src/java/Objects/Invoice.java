/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Objects;

/**
 *
 * @author Shan
 */
public class Invoice {

    private Integer invoiceID;
    private String log;
    
    public Invoice(Integer invoiceID, String log) {
        this.invoiceID = invoiceID;
        this.log = log;
    }

    public void setInvoiceID(Integer invoiceID) {
        this.invoiceID = invoiceID;
    }

    public void setLog(String log) {
        this.log = log;
    }

    public Integer getInvoiceID() {
        return invoiceID;
    }

    public String getLog() {
        return log;
    }
}
