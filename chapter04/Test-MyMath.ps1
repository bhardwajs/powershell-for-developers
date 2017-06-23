$code = @"
    public class MyMath
    {
        public int  MyAdd(int m, int n)      { return m + n; }
        public int  MySubtract(int m, int n) { return m - n; }
        public int  MyMultiply(int m, int n) { return m * n; }
        public int  MyDivide(int m, int n)   { return m / n; }
        public void MyTest() {System.Console.WriteLine("Test");}
    }
"@

Add-Type -TypeDefinition $code

[MyMath].GetMethods() | Where {$_.Name -like "My*"} | Out-GridView
