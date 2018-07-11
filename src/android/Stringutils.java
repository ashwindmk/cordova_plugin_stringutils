package cordova.plugin.stringutils;

import org.apache.cordova.CordovaPlugin;
import org.apache.cordova.CallbackContext;
import org.apache.cordova.PluginResult;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import android.util.Log;
import ashwin.libraries.com.androidstringutils.StringUtils;

public class Stringutils extends CordovaPlugin {

    @Override
    public boolean execute(String action, JSONArray args, CallbackContext callbackContext) throws JSONException {
        Log.d("stringutils", "received action: " + action + ", args: " + String.valueOf(args));
        if (action.equals("isBlank")) {
            String input = args.getString(0);
            this.isBlank(input, callbackContext);
            return true;
        }
        if (action.equals("isEmpty")) {
            String input = args.getJSONObject(0).getString("input");
            this.isEmpty(input, callbackContext);
            return true;
        }
        return false;
    }

    private void isBlank(String input, CallbackContext callbackContext) {
        try {
            callbackContext.sendPluginResult(new PluginResult(PluginResult.Status.OK, StringUtils.isBlank(input)));
        } catch (Exception e) {
            callbackContext.error("Exception occured: " + e);
        }
    }

    private void isEmpty(String input, CallbackContext callbackContext) {
        try {
            callbackContext.sendPluginResult(new PluginResult(PluginResult.Status.OK, StringUtils.isEmpty(input)));
        } catch (Exception e) {
            callbackContext.error("Exception occured: " + e);
        }
    }

}
