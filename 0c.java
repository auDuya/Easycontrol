//
// Decompiled by Jadx (Fallback) - 69

// By developer-krushna (https://github.com/developer-krushna/)

package g8;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.ViewDataBinding.i;
import androidx.databinding.f;
import androidx.recyclerview.widget.RecyclerView;

public class fa extends ea {
    public static final i H = null;
    public static final SparseIntArray I;
    public final ConstraintLayout F;
    public long G;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        I = sparseIntArray;
        sparseIntArray.put(2131362404, 1);
        sparseIntArray.put(2131361902, 2);
        sparseIntArray.put(2131361983, 3);
        sparseIntArray.put(2131362480, 4);
        sparseIntArray.put(2131362121, 5);
        sparseIntArray.put(2131362441, 6);
    }

    public fa(f fVar, View view) {
        this(fVar, view, ViewDataBinding.L(fVar, view, 7, H, I));
    }

    public fa(f fVar, View view, Object[] objArr) {
        super(fVar, view, 0, (LinearLayout) objArr[2], (Button) objArr[3], (CheckBox) objArr[5], (RecyclerView) objArr[1], (Button) objArr[6], (CheckBox) objArr[4]);
        this.G = -1;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.F = constraintLayout;
        constraintLayout.setTag(null);
        S(view);
        I();
    }

    public boolean G() {
        synchronized (this) {
            if (this.G != 0) {
                return true;
            }
            return false;
        }
    }

    public void I() {
        synchronized (this) {
            this.G = 1;
        }
        O();
    }

    public void v() {
        synchronized (this) {
            this.G = 0;
        }
    }
}

// By developer-krushna (https://github.com/developer-krushna/)

