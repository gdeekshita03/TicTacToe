function winner=Checkwin_GS (TTTarray,turns,player1,player2)
%Checkwin_GS produces a winner for the game
%Input arguments:
%TTTarray=updated array that is used to see if there is any winner
%turns=whose turn it is; odd for player 1 and even for player 2
%player1=name produced by coin toss for player 1
%player2=name produced by coin toss for player 2

possible(1)=TTTarray(1,1)+TTTarray(2,1)+TTTarray(3,1); %total points for horizontal 1
possible(2)=TTTarray(1,2)+TTTarray(2,2)+TTTarray(3,2); %total points for horizontal 2
possible(3)=TTTarray(1,3)+TTTarray(2,3)+TTTarray(3,3); %total points for horizontal 3
possible(4)=TTTarray(1,1)+TTTarray(1,2)+TTTarray(1,3); %total points for vertical 1
possible(5)=TTTarray(2,1)+TTTarray(2,2)+TTTarray(2,3); %total points for vertical 2
possible(6)=TTTarray(3,1)+TTTarray(3,2)+TTTarray(3,3); %total points for vertical 3
possible(7)=TTTarray(1,1)+TTTarray(2,2)+TTTarray(3,3); %total points for diagonal 1
possible(8)=TTTarray(3,1)+TTTarray(2,2)+TTTarray(1,3); %total points for diagonal 2
%load sound for cheer
[x,fx]=audioread('all-minions-cheering.mp3');
%if any row/column/diagonal is equal to 3, player 1 is the winner
%display player 1 as winner and play cheering sound
    if any (possible==3)
        fprintf('%s Wins! ',player1)
        winner=1;
        sound(x,fx);
%if any row/column/diagonal is equal to 30, player 2 is the winner
%display player 2 as winner and play cheering sound
    elseif any (possible==30)
        fprintf('%s Wins! ',player2)
        winner=1;
        sound(x,fx);
 %if no row/column/diagonal is equal to 3 or 30, there is no winner
    elseif turns==9 && all(possible ~= 3) && all(possible ~= 30)
        fprintf('Tie Drawn! ')
        winner=1;
    else 
        winner=0;
    end

