%Cody Antcliffe
%0473673
%MyMedian
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Write an OZ function "MyMedian" that computes the median of given list ofnumbers
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
declare
local
   Array = [13 18 13 14 13 16 14 21 13]
   Sorted = {Sort Array Value.'<'}
   fun {MyMedian Arr}
      
      %If even number of elements in the list, Return the mean of the two middle terms
      if {Int.isEven {Length Arr}} then
	 {Float.'/' {Int.toFloat {List.nth Sorted {Int.'div'{Length Sorted} 2}}+{List.nth Sorted {Int.'div'{Length Sorted} 2}+1}} {Int.toFloat 2}}
	
      %If odd number of elements in the list, Return the middle term
      else
	 {List.nth Arr {Float.toInt {Float.ceil {Float.'/' {Int.toFloat {Length Arr}}{Int.toFloat 2}}}}}
      end
   end
   
end
{Browse {MyMedian Sorted}}
