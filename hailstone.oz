%Cody Antcliffe
%0473673
%Assignment 1: Hailston Sequences in Mozart OZ
declare
local
   fun {Hailstone N}
      local
	 X = {Int.'div' N 2}
	 Y = (N*3)+1
	 in
      if {Int.isEven N}
	then X
      else
	 Y
      end
   end end
end
declare
fun {HSeq Num Count}
   local
      {Browse Num}
      S = Count+1
      X = 'The sequence length was: '
      HNum = {Hailstone Num}
   in
      if HNum == 1
      then
	 {Browse HNum}
	 {Browse X}
	 S+1
      else
	 {HSeq HNum Count+1}
      end
   end
end
declare
fun {LongestHailstone N X}
   case N
   of H|As andthen X == 0 then
      {LongestHailstone As H}
   []
      H|As andthen {HSeq H 0}>{HSeq X 0} then
      {LongestHailstone As H}
   []
      H|As then {LongestHailstone As X}
   []
      nil then
      X
   end
end
declare
fun {ShortestHailstone N X}
   case N
   of H|As andthen X == 0 then
      {ShortestHailstone As H}
   []
      H|As andthen {HSeq H 0}<{HSeq X 0} then
      {ShortestHailstone As H}
   []
      H|As then {ShortestHailstone As X}
   []
      nil then
      X
   end
end
%{Browse {Hailstone 7}} %Should produce 22
%{Browse {HSeq 12 0}} %Produces the entire sequence and returns it's length
%{Browse {LongestHailstone [7 11 22 14 8 9] 0}} %Should produce 9
{Browse {ShortestHailstone [7 11 22 14 8 9] 0}} %Should produce 8

		      
   
   