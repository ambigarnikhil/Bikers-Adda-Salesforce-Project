public class Demo23 {
    public static void method1(){
        for(Biker_Account__c b:[Select Bike__c from Biker_Account__c]){
            System.debug(b);
        }
    }

}