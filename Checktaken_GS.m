function TTTarray=Checktaken_GS (TTTarray,move,turns)
%checktaken produces an updated TTTarray to send back to main code
%input arguments:
%TTTarray=[0 0 0;0 0 0;0 0 0];updated based on moves made; add one for player 1 and ten for player 2
%move=input (A to I) made by players to determine where they want their marker placed
%turns=alternates between player 1 and 2; player 1 goes when turn is odd and player 2 goes when turn is even



%define whether it is valid for player to make move
valid=0; 
%loop for when players can make move; valid=0 means that the box is available to play
while valid==0
%player 1 goes when turn is odd
  if (turns==1)||(turns==3)||(turns==5)||(turns==7)||(turns==9)
     if move=='A'
%If spot is not available, Player 1 has to make a different move
       if (TTTarray(1,1)==1)|| (TTTarray(1,1)==10)
           disp ('This spot is already taken.')
           move=input('Please enter a different spot:  ','s');
           valid=0;
%If the spot is open and Player 1 can take it and the position in the array will equal 1 and an X will display in the position. 
       else
            text (0.8,5,'X','fontsize',80,'Color', 'b')
            TTTarray(1,1)=1;
            valid=1;
       end
     end      
%This will continue for all of player 1s moves     
     if move=='B'
          if (TTTarray(2,1)==1)|| (TTTarray(2,1)==10)
            disp ('This spot is already taken.')
            move=input('Please enter a different spot:  ','s');
            valid=0;
         else
             text (2.8,5,'X','fontsize',80,'Color', 'b')
             TTTarray(2,1)=1;
             valid=1;
          end
      end
      if move=='C'
           if (TTTarray(3,1)==1)|| (TTTarray(3,1)==10)
               disp ('This spot is already taken.')
               move=input('Please enter a different spot:  ','s');
               valid=0;
           else
               text(4.8,5,'X','fontsize',80,'Color', 'b')
               TTTarray(3,1)=1;
               valid=1;
           end
      end
      if move=='D'
           if (TTTarray(1,2)==1|| TTTarray(1,2)==10)
               disp ('This spot is already taken.')
               move=input('Please enter a different spot:  ','s');
               valid=0;
           else
               text (0.8,3,'X','fontsize',80,'Color', 'b')
               TTTarray(1,2)=1;
               valid=1;
           end
      end  
      if move=='E'
           if (TTTarray(2,2)==1)|| (TTTarray(2,2)==10)
               disp ('This spot is already taken.')
               move=input('Please enter a different spot:  ','s');
               valid=0;
           else
               text (2.8,3,'X','fontsize',80,'Color', 'b')
               TTTarray(2,2)=1;
               valid=1;
           end
      end
      if move=='F'
           if (TTTarray(3,2)==1)|| (TTTarray(3,2)==10)
               disp ('This spot is already taken.')
               move=input('Please enter a different spot:  ','s');
               valid=0;
           else
               text(4.8,3,'X','fontsize',80,'Color', 'b');
               TTTarray(3,2)=1;
               valid=1;
           end
      end     
      if move=='G'
           if (TTTarray(1,3)==1|| TTTarray(1,3)==10)
               disp ('This spot is already taken.')
               move=input('Please enter a different spot:  ','s');
               valid=0;
           else
               text (0.8,1,'X','fontsize',80,'Color', 'b')
               TTTarray(1,3)=1;
               valid=1;
           end
      end
      if move=='H'
           if (TTTarray(2,3)==1|| TTTarray(2,3)==10)
               disp ('This spot is already taken.')
               move=input('Please enter a different spot:  ','s');
               valid=0;
           else
               text (2.8,1,'X','fontsize',80,'Color', 'b')
               TTTarray(2,3)=1;
               valid=1;
           end
      end
      if move=='I'
           if (TTTarray(3,3)==1|| TTTarray(3,3)==10)
               disp ('This spot is already taken.')
               move=input('Please enter a different spot:  ','s');
               valid=0;
           else
               text (4.8,1,'X','fontsize',80,'Color', 'b') 
               TTTarray(3,3)=1;
               valid=1;
           end
      end
  end
%player 2 goes when turn is an even number
  if (turns==2)||(turns==4)||(turns==6)||(turns==8)
%If spot is not available, Player 2 has to make a different move
      if move=='A'
         if TTTarray(1,1)==1
             disp ('This spot is already taken.')
             move=input('Please enter a different spot:  ','s');
             valid=0;
%If the spot is open and Player 2 can take it and the position in the array will equal 10 and an O will be displayed in the position.  
         else
             text (0.8,5,'O','fontsize',80,'Color', 'y')
             TTTarray(1,1)=10;
             valid=1;
         end
      end
%This will continue for all of player 2s moves
      if move=='B'
          if (TTTarray(2,1)==1|| TTTarray(2,1)==10)
               disp ('This spot is already taken.')
               move=input('Please enter a different spot:  ','s');
               valid=0;
          else
              text (2.8,5,'O','fontsize',80,'Color', 'y')
              TTTarray(2,1)=10;
              valid=1;
          end
      end
      if move=='C'
           if (TTTarray(3,1)==1|| TTTarray(3,1)==10)
               disp ('This spot is already taken.')
               move=input('Please enter a different spot:  ','s');
               valid=0;
           else
               text (4.8,5,'O','fontsize',80,'Color', 'y')
               TTTarray(3,1)=10;
               valid=1;
           end
      end
      if move=='D'
           if (TTTarray(1,2)==1|| TTTarray(1,2)==10)
               disp ('This spot is already taken.')
               move=input('Please enter a different spot:  ','s');
               valid=0;
           else
               text (0.8,3,'O','fontsize',80,'Color', 'y')
               TTTarray(1,2)=10;
               valid=1;
           end
      end  
      if move=='E'
           if (TTTarray(2,2)==1|| TTTarray(2,2)==10)
               disp ('This spot is already taken.')
               move=input('Please enter a different spot:  ','s');
               valid=0;
           else
               text (2.8,3,'O','fontsize',80,'Color', 'y')
               TTTarray(2,2)=10;
               valid=1;
           end
      end
      if move=='F'
           if (TTTarray(3,2)==1|| TTTarray(3,2)==10)
               disp ('This spot is already taken.')
               move=input('Please enter a different spot:  ','s');
               valid=0;
           else
               text (4.8,3,'O','fontsize',80,'Color', 'y')
               TTTarray(3,2)=10;
               valid=1;
           end
      end     
      if move=='G'
           if (TTTarray(1,3)==1|| TTTarray(1,3)==10)
               disp ('This spot is already taken.')
               move=input('Please enter a different spot:  ','s');
               valid=0;
           else
               text (0.8,1,'O','fontsize',80,'Color', 'y')
               TTTarray(1,3)=10;
               valid=1;
           end
      end
      if move=='H'
           if (TTTarray(2,3)==1)|| (TTTarray(2,3)==10)
               disp ('This spot is already taken.')
               move=input('Please enter a different spot:  ','s');
               valid=0;
           else
               text (2.8,1,'O','fontsize',80,'Color', 'y')
               TTTarray(2,3)=10;
               valid=1;
          end
      end
      if move=='I'
           if (TTTarray(3,3)==1)|| (TTTarray(3,3)==10)
               disp ('This spot is already taken.')
               move=input('Please enter a different spot:  ','s');
               valid=0;
           else
               text (4.8,1,'O','fontsize',80,'Color', 'y')   
               TTTarray(3,3)=10;
               valid=1;
           end
      end
  end
end
