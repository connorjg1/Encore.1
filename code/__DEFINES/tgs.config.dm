// #define TGS_EXTERNAL_CONFIGURATION
// #define TGS_V3_API
// #define TGS_DEFINE_AND_SET_GLOBAL(Name, Value) GLOBAL_VAR_INIT(##Name, ##Value); GLOBAL_PROTECT(##Name)
// #define TGS_READ_GLOBAL(Name) GLOB.##Name
// #define TGS_WRITE_GLOBAL(Name, Value) GLOB.##Name = ##Value
// #define TGS_WORLD_ANNOUNCE(message) to_chat(world, ("[html_encode(##message)]"))
// #define TGS_INFO_LOG(message) log_world("TGS Info: [##message]")
// #define TGS_WARNING_LOG(message) log_world("TGS Warn: [##message]")
// #define TGS_ERROR_LOG(message) log_world("TGS Error: [##message]")
// #define TGS_NOTIFY_ADMINS(event) message_admins(##event)
// #define TGS_CLIENT_COUNT GLOB.clients.len
// #define TGS_PROTECT_DATUM(Path) GENERAL_PROTECT_DATUM(##Path)


// Required variable for TGS Admin Panel Client Count
var/global/client_count = 0

#define TGS_EXTERNAL_CONFIGURATION
#define TGS_V3_API
#define TGS_DEFINE_AND_SET_GLOBAL(Name, Value) var/global/##Name = ##Value
#define TGS_READ_GLOBAL(Name) global.##Name
#define TGS_WRITE_GLOBAL(Name, Value) global.##Name = ##Value
#define TGS_WORLD_ANNOUNCE(message) world << ##message
#define TGS_INFO_LOG(message) world.log << "TGS Info: [##message]"
#define TGS_WARNING_LOG(message) world.log << "TGS Warning: [##message]"
#define TGS_ERROR_LOG(message) world.log << "TGS Error: [##message]"
#define TGS_NOTIFY_ADMINS(event) world.log << "TGS Admin Message: [##event]"
#define TGS_CLIENT_COUNT global.client_count
#define TGS_PROTECT_DATUM(Path) // Leave blank if your codebase doesn't give administrators code reflection capabilities


