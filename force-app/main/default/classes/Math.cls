public class Math {
    
    public static void add(Integer a, Integer b)
    {
        Integer c=a+b;
        System.debug('Sum: '+c);
    }
    public static void subtract(Integer a, Integer b)
    {
        Integer c=a>b ? a-b : b-a;
        //a>b ? c=a-b : c=b-a;
        System.debug('Subtract: '+c);
    }

}