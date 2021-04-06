/* Taking a hypothetical scenario,
 * 
 * According to the historical stock data of AAPL,
 * On March 1, 2010 a single share of Apple Inc costs $29.86 at market open.
 * 
 * If we had $1,000,000 invested into Apple on this data at market open will 
 * will have:
 * 
 * If we hold all our shares, then on February 28, 2020 we decide to sell all of 
 * it at market open (price at $257.26). We will now have:
 * 
 */

#include <stdio.h>
#include <math.h>

#define ORIGINAL 1000000

int main(void) {
	
	int open_price, investment, total, profit;
	float stock_holding;
	float new_open_price = 257.26;
	
	printf("Enter the invested money and market open price\n");
	scanf("%d %d", &investment, &open_price);
	
	stock_holding = investment/open_price;
	total = stock_holding * new_open_price;
	profit = total - ORIGINAL;
	
	printf("We bought %f stocks in 2010\n", stock_holding);
	printf("We now have $%d after selling all our stocks\n", total);
	printf("Our profit is $%d\n", profit);
	
	return 0;
}

