package com.angeltea.app_android

import android.content.Intent
import android.os.Bundle
import android.widget.Button
import androidx.appcompat.app.AppCompatActivity

class MainActivity : AppCompatActivity() {
    lateinit var btnButton: Button

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        btnButton = findViewById(R.id.btnNextToFlutter)
        btnButton.setOnClickListener {
            val intent = Intent(this, MyFlutterActivity::class.java)
            intent.putExtra("screen", "list")
            intent.putExtra("param", "SauNT1")
            startActivity(intent)
        }
    }
}