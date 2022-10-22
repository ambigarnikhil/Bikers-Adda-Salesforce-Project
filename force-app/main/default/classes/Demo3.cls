public class Demo3 {
    
    public void mainValueMethod(){
        String websiteUrl='www.apexhours.com';
        System.debug('Before Call by Value:' +websiteUrl);
        passbyValue(websiteUrl);
        System.debug('After Call by Value:' +websiteUrl);   
    }
    
    private void passbyValue(String websiteUrl){							//pass by value
        websiteUrl='www.salesforce.com';
    }
    
    public void mainReferenceMethod(){
        Account a=new Account();
        a.Name='Test Account';
        a.Website='www.apexhours.com';
        System.debug('Before Call by Reference:' +a);
        passbyReference(a);
        System.debug('After Call by Reference:' +a);
    }
    
    private void passbyReference(Account a){								//pass by reference
        a.Website='www.salesforce.com';
    }

}