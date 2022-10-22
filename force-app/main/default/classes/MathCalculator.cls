public class MathCalculator {
    
    public void doMath(Integer a, Integer b){
        Integer c;
        c=MathCalculator.add(a,b);
        System.debug('Addition: '+c);                                     
        MathCalculator.multiply(a,b);
        MathCalculator.subtract(a,b);
    }
    private static Integer add(Integer a,Integer b){
        Integer c=a+b;
        return c;
        //System.debug('Addition: ');
        //MathCalculator.printOutput(c);
        //return c;
    }
    private static void subtract(Integer a,Integer b){
        Integer c=a-b;
        System.debug('Subtraction: ');
        MathCalculator.printOutput(c);
        //return c;
    }
    private static void multiply(Integer a,Integer b){
        Integer c=a*b;
        System.debug('Multiplication: ');
        MathCalculator.printOutput(c);
        //return c;
    }
    private static void printOutput(Integer c){
        System.debug(c);
        //return 0;
    }
    

}