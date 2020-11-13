//
//  NSObject+VendingMachine.m
//  Obj-C_Vector
//
//  Created by Michael Le Fevre on 11/12/20.
//

#import "VendingMachine.h"

@implementation VendingMachine: Inventory

- (id)init {
    self = [super init];
    _candyPrice = 1.00;
    _cookiesPrice = 1.50;
    _browniesPrice = 2.00;
    _drinksPrice = 2.75;
    _chipsPrice = 1.25;
    _total = 0.00;
    return self;
}

- (void)displayPurchaseScreen {
    printf("     Michael's Amazing Vending Machine\n");
    printf("Code Item                            Price\n");
    printf("------------------------------------------\n");
    printf(" A1  Candy...........................$%.2f\n", _candyPrice);
    printf(" B2  Cookies.........................$%.2f\n", _cookiesPrice);
    printf(" C4  Brownies........................$%.2f\n", _browniesPrice);
    printf(" D3  Drinks..........................$%.2f\n", _drinksPrice);
    printf(" E9  Chips...........................$%.2f\n", _chipsPrice);
    printf(" PP  Purchase\n");
    printf(" CC  Cancel Order\n");
    printf("\nTotal: $%.f\n", _total);
}

- (NSString *)getUserInput {
    char code[3];
    printf("Type in a code: ");
    scanf("%s", code);
    NSString * inputCode = [NSString stringWithUTF8String:code];
    return inputCode;
}

- (BOOL)processInput: (NSString *) userInput {
    printf("%s\n", [userInput UTF8String]);
    if ([userInput  isEqual: @"A1"]) {
        if (_candy > 0) {
            _total += _candyPrice;
            _candy--;
        }
        else {
            printf("Sorry, we are out of stock.\n");
        }
        
    }
    else if ([userInput  isEqual: @"B2"]) {
        if (_cookies > 0) {
            _total += _cookiesPrice;
            _cookies--;
        }
        else {
            printf("Sorry, we are out of stock.\n");
        }
    }
    else if ([userInput  isEqual: @"C4"]) {
        if (_brownies > 0) {
            _total += _browniesPrice;
            _brownies--;
        }
        else {
            printf("Sorry, we are out of stock.\n");
        }
    }
    else if ([userInput  isEqual: @"D3"]) {
        if (_drinks > 0) {
            _total += _drinksPrice;
            _drinks--;
        }
        else {
            printf("Sorry, we are out of stock.\n");
        }
    }
    else if ([userInput  isEqual: @"E9"]) {
        if (_chips > 0) {
            _total += _chipsPrice;
            _chips--;
        }
        else {
            printf("Sorry, we are out of stock.\n");
        }
    }
    else if ([userInput  isEqual: @"PP"]) {
        printf("Your total is %.2f!\nHave a nice day!\n", _total);
        return false;
    }
    else if ([userInput  isEqual: @"CC"]) {
        printf("I'm sorry..... I can't do that..... Give me your money....\n");
    }
    else {
        printf("Sorry, did not understand input.\n");
    }
    
    return true;
}



@end
