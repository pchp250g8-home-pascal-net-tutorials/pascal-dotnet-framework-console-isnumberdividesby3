uses
  System;
begin
  Console.Clear();
  Console.WriteLine('Input an Integer Number:');
  var strNum := Console.ReadLine();
  var iNum:Int64 := 0;
  Int64.TryParse(strNum, iNum);
  var nSumDigits := 0; 
  var iVal := Math.Abs(iNum);
  while (iVal > 0) do
  begin
    nSumDigits += iVal mod 10;
    iVal := iVal div 10;
  end;
  Console.WriteLine
  (
    'The Sum of digits of the number {0} is {1}', 
    iNum, nSumDigits
  );
  if nSumDigits mod 3 = 0 then
    Console.WriteLine('The number {0} divides by 3', iNum)
  else
    Console.WriteLine('The number {0} does not divide by 3', iNum);
  Console.Read();
end.