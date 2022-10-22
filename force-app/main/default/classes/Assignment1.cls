public class Assignment1 {
    public static void da1(){
      List<Integer> mylist =new List<Integer>();
        for(Integer i=1;i<21;i++)
        {
            mylist.add(i);
        }
        System.debug('mylist: '+mylist);
        Integer sum=0;
        for(Integer i=0;i<mylist.size();i++)
        {
            if(Math.mod(mylist[i], 2)==0)
            {
                sum+=mylist[i];
            }
        }
        System.debug('Final sum: '+sum);  
    } 
}