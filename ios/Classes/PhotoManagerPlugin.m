#import "PhotoManagerPlugin.h"
#import "PMPlugin.h"

@implementation PhotoManagerPlugin {
    PMPlugin* plugin;
};

+ (void)registerWithRegistrar:(NSObject <FlutterPluginRegistrar> *)registrar {
    PhotoManagerPlugin* instance = [[PhotoManagerPlugin alloc] initWithRegistrar:registrar];
    [registrar publish:instance];
}

-(instancetype)initWithRegistrar:(NSObject<FlutterPluginRegistrar> *)registrar {
    
    if(self = [super init]) {
        
        plugin = [PMPlugin new];
        [plugin registerPlugin:registrar];
        
        return self;
        
    }
    
    return NULL;
    
}

- (void)detachFromEngineForRegistrar:(NSObject<FlutterPluginRegistrar> *)registrar {
    [plugin detachFromEngineForRegistrar: registrar];
}

@end
