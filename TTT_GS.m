clc;
clear;
%display the game and creators
disp('Welcome to Minions Tic Tac Toe by Deekshita!')
disp ('                             ')
%ask players to put in their names
name1=input('Player 1 please enter name:  ','s');
name2=input('player 2 please enter name:  ','s');
% begin coin toss to randomly select who is player 1 and who is player 2 using rand function
toss=rand;
if toss >=0 && toss<=0.5
   player1=name1;
   player2=name2;
else
   player1=name2;
   player2=name1;
end
%display who is player 1 and player 2
fprintf('player 1 is %s.\n',player1);
fprintf('player 2 is %s.\n',player2);
disp ('                             ')
%display the rules of the game
fprintf('The rules of the game are to enter in the letter that corresponds with what place you want to place your marked. The players must alternate their turns. Whoever aligns 3 of the same markers horizontally, vertically, or diagonally wins.\n')

%upload the audio for the minions
pause(10);
[y,fs]=audioread('fight-fight-fight-fight.mp3');
%set array equal to all zeros to begin the game
TTTarray=[0 0 0;0 0 0;0 0 0];
%insert boardplot which displays the grid and letters
Boardplot_GS;
%play minions fight fight fight song
sound(y,fs);
%insert move using letters A through I
move=input('Player 1 make your move:  ','s');
turns=1;
%checktaken evaluates whether the move has already been used
TTTarray=Checktaken_GS (TTTarray,move,turns);


for turns=2:9
    if (turns==2) || (turns==4) || (turns==6)||(turns==8)
%insert move using letters A through I for player 2
       move=input('Player 2 make your move:  ','s');
       TTTarray=Checktaken_GS(TTTarray,move,turns);
%checkwin evaluates whether or not a player has won
       winner=Checkwin_GS (TTTarray,turns,player1,player2);
       if winner==1
           break;
       end
    else
%insert move using letters A through I for player 1       
       move=input('Player 1 make your move:  ','s');
       TTTarray=Checktaken_GS(TTTarray,move,turns);
       winner=Checkwin_GS (TTTarray,turns,player1,player2);
       if winner==1
           break;
       end
    end
end
disp('Thank you for playing!')
