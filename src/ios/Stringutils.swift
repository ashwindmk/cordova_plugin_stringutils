
import IOSStringUtils

@objc(Stringutils) class Stringutils : CDVPlugin {

    func isBlank(command: CDVInvokedUrlCommand) {
        let input = command.arguments[0] as? String ?? ""
        pluginResult = CDVPluginResult(status: CDVCommandStatus_OK, messageAsBool: StringUtils.isBlank(msg))
        self.commandDelegate!.sendPluginResult(pluginResult, callbackId: command.callbackId)
    }

    func isEmpty(command: CDVInvokedUrlCommand) {
        let input = command.arguments[0] as? String ?? ""
        pluginResult = CDVPluginResult(status: CDVCommandStatus_OK, messageAsBool: StringUtils.isEmpty(msg))
        self.commandDelegate!.sendPluginResult(pluginResult, callbackId: command.callbackId)
    }

}
