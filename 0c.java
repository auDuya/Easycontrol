//
// Decompiled by Jadx (Fallback) - 66

// By developer-krushna (https://github.com/developer-krushna/)

package e8;

import android.content.Context;
import android.hardware.bydauto.BYDAutoEventValue;
import android.hardware.bydauto.statistic.AbsBYDAutoStatisticListener;
import android.hardware.bydauto.statistic.BYDAutoStatisticDevice;
import java.text.DecimalFormat;

public class o extends AbsBYDAutoStatisticListener {
    public final BYDAutoStatisticDevice a;
    public r b;
    public final DecimalFormat c = new DecimalFormat("0.0");

    public o(r rVar, Context context) {
        this.b = rVar;
        BYDAutoStatisticDevice instance = BYDAutoStatisticDevice.getInstance(context);
        this.a = instance;
        instance.registerListener(this);
    }

    public void a() {
        BYDAutoStatisticDevice bYDAutoStatisticDevice = this.a;
        if (bYDAutoStatisticDevice != null) {
            bYDAutoStatisticDevice.unregisterListener(this);
        }
    }

    /* JADX WARNING: Missing block: B:7:0x0031, code:
            r6 = r6.format(r0);
     */
    /* JADX WARNING: Missing block: B:19:0x0085, code:
            r6 = java.lang.String.valueOf(r6);
     */
    /* JADX WARNING: Missing block: B:20:0x0089, code:
            r5.d(r4, r6);
     */
    /* JADX WARNING: Missing block: B:21:?, code:
            return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void b(int i, int i2, String str) {
        r rVar;
        int elecDrivingRangeValue;
        DecimalFormat decimalFormat;
        double lastFuelConPHMValue;
        switch (i) {
            case 1094:
                rVar = this.b;
                elecDrivingRangeValue = this.a.getElecDrivingRangeValue();
                break;
            case 1095:
                i2 = this.a.getFuelPercentageValue();
                elecDrivingRangeValue = this.a.getFuelDrivingRangeValue();
                r rVar2 = this.b;
                String str2 = "--";
                if (i2 > 5) {
                    if (elecDrivingRangeValue != 2046) {
                        str2 = String.valueOf(elecDrivingRangeValue);
                    }
                }
                rVar2.d(i, str2);
                return;
            case 1096:
                this.b.d(i, String.valueOf((int) this.a.getElecPercentageValue()));
                return;
            case 1097:
                rVar = this.b;
                elecDrivingRangeValue = this.a.getFuelPercentageValue();
                break;
            case 1098:
                rVar = this.b;
                str = String.valueOf(this.a.getLastElecConPHMValue());
                break;
            case 1099:
                rVar = this.b;
                decimalFormat = this.c;
                lastFuelConPHMValue = this.a.getLastFuelConPHMValue();
                break;
            default:
                switch (i) {
                    case 1114:
                    case 1115:
                        rVar = this.b;
                        elecDrivingRangeValue = this.a.getTotalMileageValue();
                        break;
                    case 1116:
                    case 1117:
                        rVar = this.b;
                        decimalFormat = this.c;
                        lastFuelConPHMValue = this.a.getTotalElecConValue();
                        break;
                    case 1118:
                    case 1119:
                        rVar = this.b;
                        decimalFormat = this.c;
                        lastFuelConPHMValue = this.a.getTotalFuelConValue();
                        break;
                    default:
                        return;
                }
        }
    }

    public void onDataEventChanged(int i, BYDAutoEventValue bYDAutoEventValue) {
    }

    public void onDrivingTimeChanged(double d) {
        super.onDrivingTimeChanged(d);
    }

    public void onElecDrivingRangeChanged(int i) {
        this.b.d(1094, String.valueOf(i));
    }

    public void onElecPercentageChanged(double d) {
        this.b.d(1096, String.valueOf((int) d));
    }

    public void onError(int i, String str) {
    }

    public void onFuelDrivingRangeChanged(int i) {
        this.b.d(1095, String.valueOf(i));
    }

    public void onFuelPercentageChanged(int i) {
        this.b.d(1097, String.valueOf(i));
    }

    public void onLastElecConPHMChanged(double d) {
        this.b.d(1098, String.valueOf(d));
    }

    public void onLastFuelConPHMChanged(double d) {
        this.b.d(1099, new DecimalFormat("0.0").format(d));
    }

    public void onTotalElecConChanged(double d) {
        this.b.d(1116, this.c.format(this.a.getTotalElecConValue()));
    }

    public void onTotalFuelConChanged(double d) {
        this.b.d(1118, this.c.format(this.a.getTotalFuelConValue()));
    }

    public void onTotalMileageValueChanged(int i) {
        this.b.d(1114, String.valueOf(this.a.getTotalMileageValue()));
    }

    public void onTravelTimeChanged(int i, double d) {
        super.onTravelTimeChanged(i, d);
    }
}

// By developer-krushna (https://github.com/developer-krushna/)

