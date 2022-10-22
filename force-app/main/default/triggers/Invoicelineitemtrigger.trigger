trigger Invoicelineitemtrigger on Invoice_Line_Item__c (after insert) {
    
    if(trigger.isInsert){
        if(trigger.isAfter){
            
            //list<Invoice_Line_Item__c> ilt = new List<Invoice_Line_Item__c>();
            for(Invoice_Line_Item__c b: trigger.new){
                System.debug('Price entered: '+ b.Price__c);
                System.debug('Invoice line Item Name: '+ b.Name);
                System.debug('Invoice Total Amount: '+ [Select Total_Amount__c from Invoice__c where Id =: b.Invoice__c]);
                list<Invoice_Line_Item__c> ilt = [Select Id, Name, Price__c from Invoice_Line_Item__c where Invoice__c =: b.Invoice__c];
                //System.debug(ilt);
                Decimal sum=0;
                for(Invoice_Line_Item__c var: ilt)
                {
                    sum+=var.Price__c;
                }
                System.debug(sum);
                Invoice__c i = new Invoice__c();
                i.Id= b.Invoice__c;
                i.Total_Amount__c=sum;
                System.debug(i);
                update i;
            }
        }
    }

}