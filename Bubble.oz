%Cody Antcliffe
%0473673
%SortBubble
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Compare first two elements
%If H>T, then swap the two elements
%If H<T, then H|{Swap Xs}
%Need a variable to tell us if any changes have been made
%If swap is made, then changed = true.
%If we get to nil and changed == false, then we're sorted, otherwise [Swap L}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
declare
local
   %Arr = input array
   %SwapFlag = flag showing a swap was made
   %?SortFlag = opposite of SwapFlag.  Used to indicate when we are finished.
   fun {Swap Arr SwapFlag ?SortFlag}
      case Arr
%Check if we need to make a swap
      of H|T|As andthen H > T then 
	 T|{Swap H|As true SortFlag}%Swap if needed{Len
	 
      [] A|As then 
	 A|{Swap As SwapFlag SortFlag}%Evaluate the next two elements if not
	 
      [] nil then %End of list
	 SortFlag = {Not SwapFlag}%Set to opposite of swapped
	 nil
      end
   end
in
   fun {SortBubble Arr}
      
      SortFlag % Need something to check if we are sorted     
      ArrayB = {Swap Arr false ?SortFlag}
   in
      %Now evaluate whether we are sorted
      if SortFlag == false then
	 {SortBubble ArrayB}
      else %We are now sorted, return the sorted array.
	 ArrayB
	 
      end
   end
end
in
{Browse {SortBubble [3 1 4 1 5 9 2 6 5]}}
	 
	