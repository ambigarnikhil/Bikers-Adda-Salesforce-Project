public class AccountHandler {
    public static void insertAccount(Integer n){
        List<Account> addAccounts = new List<Account>();
        Integer i=1;
        while(i<=n){
            Account a= new Account();
            a.Name='Acme Inc '+i;
            a.AccountNumber='A000'+i;
            addAccounts.add(a);
            i++;
        }
        insert addAccounts;
        //Hello World - This is my first commit.
    }
}