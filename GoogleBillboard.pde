public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";  
public void setup()  
{            
   String tenDig;
   double con = 0;
  for(int n = 0; n < e.length() - 10; n++) //this for loop converts each set of 10 digits in e to doubles
   {
     if(n == 0)
     {
      tenDig = e.substring(n, n + 10);
      con = Double.parseDouble(tenDig);
      con = con * 1000000000;
     }
     if(n == 1)
     {
       n = 2;
     }
     
     if(n >= 2)
     {
      tenDig = e.substring(n, n + 10);
      con = Double.parseDouble(tenDig);
     }
     boolean foundPrime = isPrime(con);
     if(foundPrime == true)
     {
       break;
     }
   }  
}  
public void draw()  
{   
  //not needed for this assignment
}  
public boolean isPrime(double testNum)  
{   
  if(testNum > 1)  
  {
    for(int i = 2; i <= Math.sqrt(testNum); i++) //tests each con to see if it's prime
    {
      if(testNum % i == 0)
      {
        return false;
      }
    }
    return true; 
  }
  return false;  
}
