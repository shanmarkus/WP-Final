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
        wsnetx.Currency fromCurrency = wsnetx.Currency.EUR;
        wsnetx.Currency toCurrency = wsnetx.Currency.IDR;
        
        double result = conversionRate(fromCurrency, toCurrency);
        System.out.println("Ratio: " + result);
        CurrencyClient.Converter run = new CurrencyClient.Converter();
       
        
    }

    public double convertUSDtoRupiah(String input) {
        double inputD=Double.parseDouble(input);
        wsnetx.Currency fromCurrency = wsnetx.Currency.USD;
        wsnetx.Currency toCurrency = wsnetx.Currency.IDR;
        return  inputD * conversionRate(fromCurrency,toCurrency);
    }
    public double convertEurotoRupiah(String input) {
        double inputD=Double.parseDouble(input);
        wsnetx.Currency fromCurrency = wsnetx.Currency.EUR;
        wsnetx.Currency toCurrency = wsnetx.Currency.IDR;
        return  inputD * conversionRate(fromCurrency,toCurrency);
    }
    public double convertRupiahtoUSD(String input) {
        double inputD=Double.parseDouble(input);
        wsnetx.Currency fromCurrency = wsnetx.Currency.IDR;
        wsnetx.Currency toCurrency = wsnetx.Currency.USD;
        return  inputD * conversionRate(fromCurrency,toCurrency);
    }
    public double convertRupiahtoEuro(String input) {
        double inputD=Double.parseDouble(input);
        wsnetx.Currency fromCurrency = wsnetx.Currency.IDR;
        wsnetx.Currency toCurrency = wsnetx.Currency.EUR;
        return  inputD * conversionRate(fromCurrency,toCurrency);
    }

    private static double conversionRate(wsnetx.Currency fromCurrency, wsnetx.Currency toCurrency) {
        wsnetx.CurrencyConvertor service = new wsnetx.CurrencyConvertor();
        wsnetx.CurrencyConvertorSoap port = service.getCurrencyConvertorSoap12();
        return port.conversionRate(fromCurrency, toCurrency);
    }

    private static class Converter {

        public Converter() {
        }
    }
}
