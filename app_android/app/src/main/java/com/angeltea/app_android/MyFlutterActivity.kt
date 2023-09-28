package com.angeltea.app_android

import android.content.Context
import com.angeltea.app_android.MainApplication.Companion.FLUTTER_ENGINE_ID
import io.flutter.FlutterInjector
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.embedding.engine.FlutterEngineCache
import io.flutter.embedding.engine.dart.DartExecutor.DartEntrypoint
import io.flutter.plugin.common.MethodChannel

class MyFlutterActivity : FlutterActivity() {
    override fun onResume() {
        super.onResume()
        MethodChannel(flutterEngine!!.dartExecutor.binaryMessenger, "com.app.flutter.integrate")
            .invokeMethod("navigate_page", intent.getStringExtra("screen"))
    }

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        flutterEngine.dartExecutor
            .executeDartEntrypoint(
                DartEntrypoint(
                    FlutterInjector.instance().flutterLoader().findAppBundlePath(),
                    "main"
                )
            )
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, "com.app.flutter.integrate")
            .setMethodCallHandler { call, result ->
                when (call.method) {
                    "back" -> {
                        finish()
                    }
                    "getParams" -> {
                        val param = intent.getStringExtra("param")
                        result.success(param)
                    }
                }
            }
    }

    override fun getCachedEngineId(): String? {
        return "FLUTTER_ENGINE_ID"
    }

    override fun provideFlutterEngine(context: Context): FlutterEngine? {
        return FlutterEngineCache.getInstance().get(FLUTTER_ENGINE_ID)
    }

    fun sum(a: Int,b: Int) : Int{
        return a + b;
    }
}