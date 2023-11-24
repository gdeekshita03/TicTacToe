function Boardplot_GS 
%Boardplot makes a Tic Tac Toe board with line segments of equal line width
%with equal spacing and letters for where players can make moves in


plot([0;6], [2; 2],'linewidth',2,'color','k')
hold on
plot([0;6], [4; 4],'linewidth',2,'color','k')
hold on
plot([2;2], [0; 6],'linewidth',2,'color','k')
hold on
plot([4;4], [0; 6],'linewidth',2,'color','k')
hold on
%add letters on each box of the tic tac toe matrix for ease in identifying the different boxes
%made font size 50 for each letter and centered it in each box
text(0.8,5,'A','fontsize', 20)
hold on
text(2.8,5,'B','fontsize', 20)
hold on
text(4.8,5,'C','fontsize', 20)
hold on
text(0.8,3,'D','fontsize', 20)
hold on
text(2.8,3,'E','fontsize', 20)
hold on
text(4.8,3,'F','fontsize', 20)
hold on
text(0.8,1,'G','fontsize', 20)
hold on
text(2.8,1,'H','fontsize', 20)
hold on
text(4.8,1,'I','fontsize', 20)
hold on
axis off 
hold off
