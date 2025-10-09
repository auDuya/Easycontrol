//
// Decompiled by Jadx (Fallback) - 82

// By developer-krushna (https://github.com/developer-krushna/)

package com.smg.dydesktop.service;

import a9.k;
import android.accessibilityservice.AccessibilityService;
import android.content.Intent;
import android.view.KeyEvent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import com.smg.dydesktop.ui.base.App;
import f9.j;
import f9.j0;
import f9.p;
import j8.c0;
import j8.l;
import java.util.List;
import java.util.Objects;
import q7.a;
import q7.b;
import t8.m2;

public class AutoService extends AccessibilityService {
    public static AutoService l;
    public final String d = "com.byd.avc";
    public AccessibilityNodeInfo e = null;
    public boolean f = false;
    public boolean g = false;
    public boolean h = false;
    public boolean i = false;
    public boolean j = false;
    public String k = null;

    public static AutoService d() {
        return l;
    }

    public final boolean a(int i, int i2) {
        if (i == 312 && i2 == 0) {
            l.c().k();
            return true;
        } else if (i == 304 && i2 == 1 && k.h) {
            l.c().f();
            return true;
        } else if (!k.h || (i2 != 0 && i2 != 1)) {
            return false;
        } else {
            l.c().j();
            if (i == 87) {
                if (i2 == 0) {
                    App.f(1014, 1);
                }
                return true;
            } else if (i != 88) {
                switch (i) {
                    case 291:
                        if (i2 == 0) {
                            App.f(1007, 1);
                        }
                        return true;
                    case 292:
                        if (i2 == 0) {
                            App.f(1007, 0);
                        }
                        return true;
                    case 293:
                        if (i2 == 0) {
                            App.f(1012, -1);
                        }
                        return true;
                    default:
                        return false;
                }
            } else {
                if (i2 == 0) {
                    App.f(1014, 0);
                }
                return true;
            }
        }
    }

    public final boolean b(int i, int i2) {
        if (i2 != 0) {
            if (i2 != 1) {
                return false;
            }
        }
        if (i == 87) {
            if (i2 == 0) {
                m();
            }
            return true;
        } else if (i != 88) {
            switch (i) {
                case 291:
                    if (i2 == 0) {
                        n();
                    }
                    return true;
                case 292:
                    if (i2 == 0) {
                        c();
                    }
                    return true;
                case 293:
                    if (i2 == 0) {
                        h();
                    }
                    return true;
                default:
                    return false;
            }
        } else {
            if (i2 == 0) {
                f();
            }
            return true;
        }
    }

    /* JADX WARNING: Missing block: B:12:0x0031, code:
            if (r1.isSelected() == false) goto L_0x0033;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void c() {
        try {
            AccessibilityNodeInfo accessibilityNodeInfo = this.e;
            if (accessibilityNodeInfo != null) {
                List findAccessibilityNodeInfosByViewId;
                if (this.j) {
                    findAccessibilityNodeInfosByViewId = accessibilityNodeInfo.findAccessibilityNodeInfosByViewId("com.byd.avc:id/hc_back_3d_button");
                    if (findAccessibilityNodeInfosByViewId.isEmpty()) {
                        j0.c(App.c().getString(2131689674));
                        return;
                    }
                    accessibilityNodeInfo = (AccessibilityNodeInfo) findAccessibilityNodeInfosByViewId.get(0);
                } else {
                    findAccessibilityNodeInfosByViewId = accessibilityNodeInfo.findAccessibilityNodeInfosByViewId("com.byd.avc:id/hc_back_2d_button");
                    List findAccessibilityNodeInfosByViewId2 = this.e.findAccessibilityNodeInfosByViewId("com.byd.avc:id/hc_back_wide_2d_button");
                    if (!findAccessibilityNodeInfosByViewId.isEmpty()) {
                        this.h = ((AccessibilityNodeInfo) findAccessibilityNodeInfosByViewId.get(0)).isSelected();
                    }
                    if (!findAccessibilityNodeInfosByViewId2.isEmpty()) {
                        this.i = ((AccessibilityNodeInfo) findAccessibilityNodeInfosByViewId2.get(0)).isSelected();
                    }
                    if (!(this.h || this.i)) {
                        if (findAccessibilityNodeInfosByViewId.isEmpty()) {
                            j0.c(App.c().getString(2131689674));
                            return;
                        }
                        AccessibilityNodeInfo accessibilityNodeInfo2 = (AccessibilityNodeInfo) findAccessibilityNodeInfosByViewId.get(0);
                        if (!accessibilityNodeInfo2.isSelected()) {
                            accessibilityNodeInfo2.performAction(16);
                        }
                    }
                    if (this.h) {
                        if (findAccessibilityNodeInfosByViewId2.isEmpty()) {
                            j0.c(App.c().getString(2131689674));
                            return;
                        }
                        AccessibilityNodeInfo accessibilityNodeInfo3 = (AccessibilityNodeInfo) findAccessibilityNodeInfosByViewId2.get(0);
                        if (!accessibilityNodeInfo3.isSelected()) {
                            accessibilityNodeInfo3.performAction(16);
                        }
                    }
                    if (this.i) {
                        if (findAccessibilityNodeInfosByViewId.isEmpty()) {
                            j0.c(App.c().getString(2131689674));
                            return;
                        } else {
                            accessibilityNodeInfo = (AccessibilityNodeInfo) findAccessibilityNodeInfosByViewId.get(0);
                            if (!accessibilityNodeInfo.isSelected()) {
                            }
                        }
                    }
                }
                accessibilityNodeInfo.performAction(16);
            }
        } catch (Exception unused) {
            j0.c(App.c().getString(2131689674));
        }
    }

    public final void e(AccessibilityEvent accessibilityEvent) {
        if (accessibilityEvent.getSource() != null && accessibilityEvent.getEventType() == 32) {
            String charSequence = accessibilityEvent.getPackageName().toString();
            k.g = charSequence;
            if ("com.byd.avc".equals(charSequence)) {
                this.e = getRootInActiveWindow();
                c0.n().q();
            }
            if (!Objects.equals(this.k, charSequence) && !"com.android.systemui".equals(charSequence)) {
                this.k = charSequence;
                String str = "RX_BUS_CONTROL_HIDE_STATUS_BAR";
                if (p.a("KEY_STATUS_BAR_STATE")) {
                    if (k.t.contains(charSequence)) {
                        b.a().h(str, charSequence);
                    } else {
                        b.a().h("RX_BUS_CONTROL_SHOW_STATUS_BAR", charSequence);
                    }
                }
                String str2 = "RX_BUS_CONTROL_HIDE_NAV_BAR";
                if (p.a("KEY_NAVIGATION_BAR_STATE")) {
                    if (k.u.contains(charSequence)) {
                        b.a().h(str2, charSequence);
                    } else {
                        b.a().h("RX_BUS_CONTROL_SHOW_NAV_BAR", charSequence);
                    }
                }
                if ("com.byd.screensaver".equals(charSequence)) {
                    b.a().h(str, charSequence);
                    b.a().h(str2, charSequence);
                }
            }
        }
    }

    /* JADX WARNING: Missing block: B:12:0x0031, code:
            if (r1.isSelected() == false) goto L_0x0033;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void f() {
        try {
            AccessibilityNodeInfo accessibilityNodeInfo = this.e;
            if (accessibilityNodeInfo != null) {
                List findAccessibilityNodeInfosByViewId;
                if (this.j) {
                    findAccessibilityNodeInfosByViewId = accessibilityNodeInfo.findAccessibilityNodeInfosByViewId("com.byd.avc:id/hc_left_back_3d_button");
                    if (findAccessibilityNodeInfosByViewId.isEmpty()) {
                        j0.c(App.c().getString(2131689674));
                        return;
                    }
                    accessibilityNodeInfo = (AccessibilityNodeInfo) findAccessibilityNodeInfosByViewId.get(0);
                } else {
                    findAccessibilityNodeInfosByViewId = accessibilityNodeInfo.findAccessibilityNodeInfosByViewId("com.byd.avc:id/hc_left_2d_button");
                    if (findAccessibilityNodeInfosByViewId.isEmpty()) {
                        j0.c(App.c().getString(2131689674));
                        return;
                    }
                    accessibilityNodeInfo = (AccessibilityNodeInfo) findAccessibilityNodeInfosByViewId.get(0);
                    if (!accessibilityNodeInfo.isSelected()) {
                    }
                }
                accessibilityNodeInfo.performAction(16);
            }
        } catch (Exception unused) {
            j0.c(App.c().getString(2131689674));
        }
    }

    public final boolean g(int i, int i2) {
        if (i2 == 0) {
            a a;
            Object obj;
            String str = "RX_BUS_LOCAL_MUSIC_PLAY_CURRENT_CHANGED";
            if (i == 87) {
                a = b.a();
                obj = "3";
            } else if (i == 88) {
                a = b.a();
                obj = "1";
            } else if (i == 293) {
                a = b.a();
                obj = "2";
            }
            a.h(str, obj);
            return true;
        }
        return false;
    }

    public final void h() {
        try {
            AccessibilityNodeInfo accessibilityNodeInfo = this.e;
            if (accessibilityNodeInfo != null) {
                List findAccessibilityNodeInfosByViewId = accessibilityNodeInfo.findAccessibilityNodeInfosByViewId("com.byd.avc:id/hc_3d_type_switch_button");
                if (findAccessibilityNodeInfosByViewId.isEmpty()) {
                    j0.c(App.c().getString(2131689674));
                    return;
                }
                accessibilityNodeInfo = (AccessibilityNodeInfo) findAccessibilityNodeInfosByViewId.get(0);
                boolean isSelected = accessibilityNodeInfo.isSelected();
                this.j = isSelected;
                if (isSelected) {
                    accessibilityNodeInfo.performAction(16);
                    this.j = false;
                } else {
                    accessibilityNodeInfo.performAction(16);
                    this.j = true;
                }
            }
        } catch (Exception unused) {
            j0.c(App.c().getString(2131689674));
        }
    }

    public void i() {
        performGlobalAction(1);
    }

    public void j() {
        performGlobalAction(2);
    }

    public void k() {
        performGlobalAction(7);
    }

    public void l() {
        performGlobalAction(3);
    }

    /* JADX WARNING: Missing block: B:12:0x0031, code:
            if (r1.isSelected() == false) goto L_0x0033;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void m() {
        try {
            AccessibilityNodeInfo accessibilityNodeInfo = this.e;
            if (accessibilityNodeInfo != null) {
                List findAccessibilityNodeInfosByViewId;
                if (this.j) {
                    findAccessibilityNodeInfosByViewId = accessibilityNodeInfo.findAccessibilityNodeInfosByViewId("com.byd.avc:id/hc_right_back_3d_button");
                    if (findAccessibilityNodeInfosByViewId.isEmpty()) {
                        j0.c(App.c().getString(2131689674));
                        return;
                    }
                    accessibilityNodeInfo = (AccessibilityNodeInfo) findAccessibilityNodeInfosByViewId.get(0);
                } else {
                    findAccessibilityNodeInfosByViewId = accessibilityNodeInfo.findAccessibilityNodeInfosByViewId("com.byd.avc:id/hc_right_2d_button");
                    if (findAccessibilityNodeInfosByViewId.isEmpty()) {
                        j0.c(App.c().getString(2131689674));
                        return;
                    }
                    accessibilityNodeInfo = (AccessibilityNodeInfo) findAccessibilityNodeInfosByViewId.get(0);
                    if (!accessibilityNodeInfo.isSelected()) {
                    }
                }
                accessibilityNodeInfo.performAction(16);
            }
        } catch (Exception unused) {
            j0.c(App.c().getString(2131689674));
        }
    }

    /* JADX WARNING: Missing block: B:12:0x0034, code:
            if (r1.isSelected() == false) goto L_0x0036;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void n() {
        try {
            AccessibilityNodeInfo accessibilityNodeInfo = this.e;
            if (accessibilityNodeInfo != null) {
                List findAccessibilityNodeInfosByViewId;
                if (this.j) {
                    findAccessibilityNodeInfosByViewId = accessibilityNodeInfo.findAccessibilityNodeInfosByViewId("com.byd.avc:id/hc_front_3d_button");
                    if (findAccessibilityNodeInfosByViewId.isEmpty()) {
                        j0.c(App.c().getString(2131689696));
                        return;
                    }
                    accessibilityNodeInfo = (AccessibilityNodeInfo) findAccessibilityNodeInfosByViewId.get(0);
                } else {
                    findAccessibilityNodeInfosByViewId = accessibilityNodeInfo.findAccessibilityNodeInfosByViewId("com.byd.avc:id/hc_front_2d_button");
                    List findAccessibilityNodeInfosByViewId2 = this.e.findAccessibilityNodeInfosByViewId("com.byd.avc:id/hc_front_wide_2d_button");
                    if (!findAccessibilityNodeInfosByViewId.isEmpty()) {
                        this.f = ((AccessibilityNodeInfo) findAccessibilityNodeInfosByViewId.get(0)).isSelected();
                    }
                    if (!findAccessibilityNodeInfosByViewId2.isEmpty()) {
                        this.g = ((AccessibilityNodeInfo) findAccessibilityNodeInfosByViewId2.get(0)).isSelected();
                    }
                    if (!(this.f || this.g)) {
                        if (findAccessibilityNodeInfosByViewId.isEmpty()) {
                            j0.c(App.c().getString(2131689674));
                            return;
                        }
                        AccessibilityNodeInfo accessibilityNodeInfo2 = (AccessibilityNodeInfo) findAccessibilityNodeInfosByViewId.get(0);
                        if (!accessibilityNodeInfo2.isSelected()) {
                            accessibilityNodeInfo2.performAction(16);
                        }
                    }
                    if (this.f) {
                        if (findAccessibilityNodeInfosByViewId2.isEmpty()) {
                            j0.c(App.c().getString(2131689674));
                            return;
                        }
                        AccessibilityNodeInfo accessibilityNodeInfo3 = (AccessibilityNodeInfo) findAccessibilityNodeInfosByViewId2.get(0);
                        if (!accessibilityNodeInfo3.isSelected()) {
                            accessibilityNodeInfo3.performAction(16);
                        }
                    }
                    if (this.g) {
                        if (findAccessibilityNodeInfosByViewId.isEmpty()) {
                            j0.c(App.c().getString(2131689674));
                            return;
                        } else {
                            accessibilityNodeInfo = (AccessibilityNodeInfo) findAccessibilityNodeInfosByViewId.get(0);
                            if (!accessibilityNodeInfo.isSelected()) {
                            }
                        }
                    }
                }
                accessibilityNodeInfo.performAction(16);
            }
        } catch (Exception unused) {
            j0.c(App.c().getString(2131689674));
        }
    }

    public void onAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        e(accessibilityEvent);
    }

    public void onCreate() {
        super.onCreate();
        l = this;
    }

    public void onDestroy() {
        super.onDestroy();
    }

    public void onInterrupt() {
    }

    public boolean onKeyEvent(KeyEvent keyEvent) {
        String b;
        int keyCode = keyEvent.getKeyCode();
        int action = keyEvent.getAction();
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("onKeyEvent: ");
        stringBuilder.append(keyCode);
        stringBuilder.append(" = ");
        stringBuilder.append(action);
        String str = "KEY_DISPLAY_APP_MOVE_INFO_LIST";
        if (keyCode == 303 && (action == 0 || action == 1)) {
            b = p.b(str);
            if (!b.isEmpty()) {
                if (action == 0) {
                    App.e(1087, 1, j.f(b));
                }
                return true;
            }
        }
        if (keyCode == 302 && (action == 0 || action == 1)) {
            b = p.b(str);
            if (!b.isEmpty()) {
                if (action == 0) {
                    App.e(1087, 0, j.f(b));
                }
                return true;
            }
        }
        str = "com.byd.avc";
        if (j.A() && ((keyCode == 88 || keyCode == 293 || keyCode == 87) && !k.h && !str.equals(this.k))) {
            return g(keyCode, action);
        }
        if (!p.a("KEY_FANG_CONTROL_MUSIC_PLAYING_STATE") || k.h || str.equals(this.k) || keyCode != 293 || action != 0) {
            return (!p.a("KEY_FANG_CONTROL_AIR_STATE") || str.equals(this.k)) ? (p.a("KEY_FANG_CONTROL_FULL_VIEW_STATE") && str.equals(this.k) && !k.h) ? b(keyCode, action) : false : a(keyCode, action);
        } else {
            b.a().h("RX_BUS_MUSIC_PLAY_STATE_CHANGED", "2");
            return true;
        }
    }

    public void onServiceConnected() {
        super.onServiceConnected();
        l = this;
        b.a().i(this);
        m2.b().c();
        k.e.setStatusAccessibilityState(true);
        b.a().h("RX_BUS_RELOAD_BAR", "");
    }

    public boolean onUnbind(Intent intent) {
        l = null;
        k.e.setStatusAccessibilityState(false);
        String str = "";
        b.a().h("RX_BUS_RELOAD_STATUS_ICON_INFO_STATE", str);
        b.a().h("RX_BUS_RELOAD_BAR", str);
        b.a().j(this);
        return super.onUnbind(intent);
    }
}

// By developer-krushna (https://github.com/developer-krushna/)

