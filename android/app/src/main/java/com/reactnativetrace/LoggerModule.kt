package com.reactnativetrace

import android.util.Log
import com.facebook.react.bridge.ReactApplicationContext
import com.facebook.react.bridge.ReactContextBaseJavaModule
import com.facebook.react.bridge.ReactMethod
import com.facebook.react.bridge.ReadableMap

class LoggerModule(reactContext: ReactApplicationContext) :
    ReactContextBaseJavaModule(reactContext) {

    override fun getName(): String {
        return "LoggerModule"
    }

    @ReactMethod
    fun initialize(apiKey: String, enabledDebug: Boolean) {
        Log.i("LoggerModule", "SDK Initialized with apiKey: $apiKey, debug: $enabledDebug")
    }

    @ReactMethod
    fun log(level: String, message: String, metadata: ReadableMap?) {
        when (level) {
            "info" -> Log.i("TraceSDK", "$message - $metadata")
            "warn" -> Log.w("TraceSDK", "$message - $metadata")
            "error" -> Log.e("TraceSDK", "$message - $metadata")
            "debug" -> Log.d("TraceSDK", "$message - $metadata")
            else -> Log.v("TraceSDK", "$message - $metadata")
        }
    }
}