profit = 0;
disp('You will be asked to enter your 6 lucky numbers. Please enter 6 integers between 1 and 59 with no repeatitions.')
disp('Please press any button to continue')
pause;
num1 = input("Please enter the first number: ");
num2 = input("Please enter the second number: ");
num3 = input("Please enter the third number: ");
num4 = input("Please enter the fourth number: ");
num5 = input("Please enter the fifth number: ");
num6 = input("Please enter the sixth number: ");
mynum = [num1 num2 num3 num4 num5 num6];
win1 = 0;
win2 = 0;
win3 = 0;
win4 = 0;
win5 = 0;
win6 = 0;
tic
for i=1:4160
    winnum = randperm(59,6);
    money = intersect(mynum,winnum);
    if length(money)== 3;
        profit = profit + 23;
        win3 = win3 + 1;
    elseif length(money) == 4;
        profit = profit + 98;
        win4 = win4 + 1;
    elseif length(money) == 5;
        profit = profit + 998;
        win5 = win5 + 1;
    elseif length(money) == 6;
        profit = profit + 999998;
        win6 = win6 +1;
    elseif length(money) == 2;
        profit = profit - 2;
        win2 = win2 + 1;
    elseif length(money) == 1;
        profit = profit - 2;
        win1 = win1 + 1;
    else
        profit = profit - 2;
    end
end
nummatch = [win1 win2 win3 win4 win5 win6];
profit
toc
bar(nummatch)
xlabel("Number of matches")
ylabel("Frequency")