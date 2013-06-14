/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package currencyclient;

import java.util.Scanner;

/**
 *
 * @author Norman
 */
public class CurrencyClient {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
//        double SAR;
//        double IDR;
//        Scanner scan = new Scanner(System.in);
//        System.out.println("Please input : ");
//        SAR = scan.nextDouble();
        net.webservicex.Currency fromCurrency = net.webservicex.Currency.EUR;
        net.webservicex.Currency toCurrency = net.webservicex.Currency.IDR;
        
        double result = conversionRate(fromCurrency, toCurrency);
        System.out.println("Ratio: " + result);
        Converter run = new Converter();
       
        
    }

    public double convertUSDtoRupiah(String input) {
        double inputD=Double.parseDouble(input);
        net.webservicex.Currency fromCurrency = net.webservicex.Currency.USD;
        net.webservicex.Currency toCurrency = net.webservicex.Currency.IDR;
        return  inputD * conversionRate(fromCurrency,toCurrency);
    }
    public double convertEurotoRupiah(String input) {
        double inputD=Double.parseDouble(input);
        net.webservicex.Currency fromCurrency = net.webservicex.Currency.EUR;
        net.webservicex.Currency toCurrency = net.webservicex.Currency.IDR;
        return  inputD * conversionRate(fromCurrency,toCurrency);
    }
    public double convertRupiahtoUSD(String input) {
        double inputD=Double.parseDouble(input);
        net.webservicex.Currency fromCurrency = net.webservicex.Currency.IDR;
        net.webservicex.Currency toCurrency = net.webservicex.Currency.USD;
        return  inputD * conversionRate(fromCurrency,toCurrency);
    }
    public double convertRupiahtoEuro(String input) {
        double inputD=Double.parseDouble(input);
        net.webservicex.Currency fromCurrency = net.webservicex.Currency.IDR;
        net.webservicex.Currency toCurrency = net.webservicex.Currency.EUR;
        return  inputD * conversionRate(fromCurrency,toCurrency);
    }

    private static double conversionRate(net.webservicex.Currency fromCurrency, net.webservicex.Currency toCurrency) {
        net.webservicex.CurrencyConvertor service = new net.webservicex.CurrencyConvertor();
        net.webservicex.CurrencyConvertorSoap port = service.getCurrencyConvertorSoap12();
        return port.conversionRate(fromCurrency, toCurrency);
    }

    private static class Converter {

        public Converter() {
        }
    }
}
