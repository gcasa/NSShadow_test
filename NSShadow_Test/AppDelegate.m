//
//  AppDelegate.m
//  NSShadow_Test
//
//  Created by Gregory John Casamento on 12/24/23.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (assign) IBOutlet NSWindow *window;
@property (assign) IBOutlet NSButton *button;

@end

@implementation AppDelegate

- (void) awakeFromNib
{
    NSRect frame = [self.button frame];
    NSRect shadowFrame = NSInsetRect(frame, 5.0, 5.0);
    shadowFrame.origin.x += 5.0;
    shadowFrame.origin.y += 5.0;

    // Definir el color de l'ombra
    NSColor *shadowColor = [NSColor redColor];

    // Definir l'ombra
    NSShadow *shadow = [[NSShadow alloc] init];
    [shadow setShadowColor:shadowColor];
    [shadow setShadowOffset:NSMakeSize(0, -1)];
    [shadow setShadowBlurRadius:10];

    // Aplicar l'ombra
    [NSGraphicsContext saveGraphicsState];
    [shadow set];

    // Dibuixar l'ombra (Això dibuixa una "caixa" d'ombra al voltant de l'àrea del botó)
    NSBezierPath *shadowPath = [NSBezierPath bezierPathWithRect:shadowFrame];
    [[NSColor clearColor] set];
    [shadowPath fill];
    
    [self.button setShadow: shadow];
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


- (BOOL)applicationSupportsSecureRestorableState:(NSApplication *)app {
    return YES;
}


@end
