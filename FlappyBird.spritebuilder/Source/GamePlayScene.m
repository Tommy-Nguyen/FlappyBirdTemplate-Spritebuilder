#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation GamePlayScene

- (void)initialize
{
    // your code here
}

- (void)update:(CCTime)delta
{
    // put update code here
    character = (Character *)[CCBReader load:@"Character"];
    [physicsNode addChild:character];
}

// put new methods here

- (void)touchBegan:(CCTouch *)touch withEvent:(CCTouchEvent *)event {
    [character flap];
}

- (void) doSomething {
    NSLog(@"do something");
}

- (int)doSOmethingWithString: (NSString *)string
{
    return [string length] * 10.;
}

- (NSArray *) addThisStringToAnArray:(NSString*) firstString andThisString:(NSString*) secondString andAlsoThisString:(NSString*) thirdString {
    return [NSArray arrayWithObjects: firstString, secondString, thirdString, nil];
}

@end
