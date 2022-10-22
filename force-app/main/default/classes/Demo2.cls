public class Demo2 {
    public String helloWorldString;						//Instance member variable.
    private static final String DEFAULT_STRING;			//Static member variable;
    
    static{												//static initializer block->it runs only once;
        DEFAULT_STRING= 'Hello World';
    }
    public Demo2()										//Constructor
    {
        this(DEFAULT_STRING);
    }
    public Demo2(String stringToDisplay){				//Overloaded Constructor
        this.helloWorldString=stringToDisplay;
    }
    public void printoutput1(){														//Instance method
        System.debug('Display text from instance method: '+helloWorldString);
    }
    public static void printOutput()					//Static method 
    {
        System.debug('Display text: '+  DEFAULT_STRING);
    }

}