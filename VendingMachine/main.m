//
//  main.m
//  Obj-C_Vector
//
//  Created by Michael Le Fevre on 11/11/20.
//

#import <Foundation/Foundation.h>
#import "Inventory.h"
#import "VendingMachine.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        VendingMachine * machine = [[VendingMachine alloc]init];
        
        [machine displayPurchaseScreen];
        while([machine processInput:[machine getUserInput]])
        {
            [machine displayPurchaseScreen];
        }
        
        
        
        
        
    }
    return 0;
}
