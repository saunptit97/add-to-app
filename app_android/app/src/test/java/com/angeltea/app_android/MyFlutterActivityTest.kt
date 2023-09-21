package com.angeltea.app_android

import com.nhaarman.mockitokotlin2.mock
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.Robolectric
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config
import org.assertj.core.api.Assertions.assertThat


@RunWith(RobolectricTestRunner::class)
@Config(application = MainApplication::class)
class MyFlutterActivityTest {
    private lateinit var activity: MyFlutterActivity

    @Before
    fun setUp(){
        activity = Robolectric.buildActivity(MyFlutterActivity::class.java).create().get()
    }

    @Test
    fun testSum(){
        assertThat(activity.sum(1,2)).isEqualTo(3)
    }
}