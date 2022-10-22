public class AccountUtility {
    public static void viewAnnualRevenue(){
        List<Account> accountsList=[Select Name,AnnualRevenue From Account];
        for(Account a: accountsList){
            String acctRev;
            acctRev= a.Name+ ' : '+ a.AnnualRevenue;
            System.debug(acctRev);
        }
    }

}