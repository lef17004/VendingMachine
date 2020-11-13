//
//  NSObject+VendingMachine.h
//  Obj-C_Vector
//
//  Created by Michael Le Fevre on 11/12/20.
//

#import <Foundation/Foundation.h>
#import "Inventory.h"

NS_ASSUME_NONNULL_BEGIN

@interface VendingMachine: Inventory {
    float _candyPrice;
    float _cookiesPrice;
    float _browniesPrice;
    float _drinksPrice;
    float _chipsPrice;
    
    float _total;
}

- (id)init;

- (void)displayPurchaseScreen;
- (NSString *)getUserInput;
- (void)runMachine;
- (BOOL)processInput: (NSString *) userInput;

@end

NS_ASSUME_NONNULL_END
