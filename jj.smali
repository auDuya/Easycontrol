.class public Lcom/smg/dydesktop/service/AutoService;
.super Landroid/accessibilityservice/AccessibilityService;
.source "SourceFile"


# static fields
.field public static l:Lcom/smg/dydesktop/service/AutoService;


# instance fields
.field public final d:Ljava/lang/String;

.field public e:Landroid/view/accessibility/AccessibilityNodeInfo;

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService;-><init>()V

    const-string v0, "com.byd.avc"

    iput-object v0, p0, Lcom/smg/dydesktop/service/AutoService;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smg/dydesktop/service/AutoService;->e:Landroid/view/accessibility/AccessibilityNodeInfo;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/smg/dydesktop/service/AutoService;->f:Z

    iput-boolean v1, p0, Lcom/smg/dydesktop/service/AutoService;->g:Z

    iput-boolean v1, p0, Lcom/smg/dydesktop/service/AutoService;->h:Z

    iput-boolean v1, p0, Lcom/smg/dydesktop/service/AutoService;->i:Z

    iput-boolean v1, p0, Lcom/smg/dydesktop/service/AutoService;->j:Z

    iput-object v0, p0, Lcom/smg/dydesktop/service/AutoService;->k:Ljava/lang/String;

    return-void
.end method

.method public static d()Lcom/smg/dydesktop/service/AutoService;
    .registers 1

    sget-object v0, Lcom/smg/dydesktop/service/AutoService;->l:Lcom/smg/dydesktop/service/AutoService;

    return-object v0
.end method


# virtual methods
.method public final a(II)Z
    .registers 7

    const/16 v0, 0x138

    const/4 v1, 0x1

    if-ne p1, v0, :cond_f

    if-nez p2, :cond_f

    invoke-static {}, Lj8/l;->c()Lj8/l;

    move-result-object p1

    invoke-virtual {p1}, Lj8/l;->k()V

    return v1

    :cond_f
    const/16 v0, 0x130

    if-ne p1, v0, :cond_21

    if-ne p2, v1, :cond_21

    sget-boolean v0, La9/k;->h:Z

    if-eqz v0, :cond_21

    invoke-static {}, Lj8/l;->c()Lj8/l;

    move-result-object p1

    invoke-virtual {p1}, Lj8/l;->f()V

    return v1

    :cond_21
    sget-boolean v0, La9/k;->h:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_62

    if-eqz p2, :cond_2a

    if-ne p2, v1, :cond_62

    :cond_2a
    invoke-static {}, Lj8/l;->c()Lj8/l;

    move-result-object v0

    invoke-virtual {v0}, Lj8/l;->j()V

    const/16 v0, 0x57

    const/16 v3, 0x3f6

    if-eq p1, v0, :cond_5c

    const/16 v0, 0x58

    if-eq p1, v0, :cond_56

    const/16 v0, 0x3ef

    packed-switch p1, :pswitch_data_64

    return v2

    :pswitch_41  #0x125
    if-nez p2, :cond_49

    const/16 p1, 0x3f4

    const/4 p2, -0x1

    invoke-static {p1, p2}, Lcom/smg/dydesktop/ui/base/App;->f(II)V

    :cond_49
    return v1

    :pswitch_4a  #0x124
    if-nez p2, :cond_4f

    invoke-static {v0, v2}, Lcom/smg/dydesktop/ui/base/App;->f(II)V

    :cond_4f
    return v1

    :pswitch_50  #0x123
    if-nez p2, :cond_55

    invoke-static {v0, v1}, Lcom/smg/dydesktop/ui/base/App;->f(II)V

    :cond_55
    return v1

    :cond_56
    if-nez p2, :cond_5b

    invoke-static {v3, v2}, Lcom/smg/dydesktop/ui/base/App;->f(II)V

    :cond_5b
    return v1

    :cond_5c
    if-nez p2, :cond_61

    invoke-static {v3, v1}, Lcom/smg/dydesktop/ui/base/App;->f(II)V

    :cond_61
    return v1

    :cond_62
    return v2

    nop

    :pswitch_data_64
    .packed-switch 0x123
        :pswitch_50  #00000123
        :pswitch_4a  #00000124
        :pswitch_41  #00000125
    .end packed-switch
.end method

.method public final b(II)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_8

    if-ne p2, v1, :cond_7

    goto :goto_8

    :cond_7
    return v0

    :cond_8
    :goto_8
    const/16 v2, 0x57

    if-eq p1, v2, :cond_2c

    const/16 v2, 0x58

    if-eq p1, v2, :cond_26

    packed-switch p1, :pswitch_data_32

    return v0

    :pswitch_14  #0x125
    if-nez p2, :cond_19

    invoke-virtual {p0}, Lcom/smg/dydesktop/service/AutoService;->h()V

    :cond_19
    return v1

    :pswitch_1a  #0x124
    if-nez p2, :cond_1f

    invoke-virtual {p0}, Lcom/smg/dydesktop/service/AutoService;->c()V

    :cond_1f
    return v1

    :pswitch_20  #0x123
    if-nez p2, :cond_25

    invoke-virtual {p0}, Lcom/smg/dydesktop/service/AutoService;->n()V

    :cond_25
    return v1

    :cond_26
    if-nez p2, :cond_2b

    invoke-virtual {p0}, Lcom/smg/dydesktop/service/AutoService;->f()V

    :cond_2b
    return v1

    :cond_2c
    if-nez p2, :cond_31

    invoke-virtual {p0}, Lcom/smg/dydesktop/service/AutoService;->m()V

    :cond_31
    return v1

    :pswitch_data_32
    .packed-switch 0x123
        :pswitch_20  #00000123
        :pswitch_1a  #00000124
        :pswitch_14  #00000125
    .end packed-switch
.end method

.method public final c()V
    .registers 8

    const v0, 0x7f0f00ca

    :try_start_3
    iget-object v1, p0, Lcom/smg/dydesktop/service/AutoService;->e:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-nez v1, :cond_8

    return-void

    :cond_8
    iget-boolean v2, p0, Lcom/smg/dydesktop/service/AutoService;->j:Z

    const/16 v3, 0x10

    const/4 v4, 0x0

    if-eqz v2, :cond_38

    const-string v2, "com.byd.avc:id/hc_back_3d_button"

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->findAccessibilityNodeInfosByViewId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-static {}, Lcom/smg/dydesktop/ui/base/App;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lf9/j0;->c(Ljava/lang/String;)V

    return-void

    :cond_27
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSelected()Z

    move-result v2

    if-nez v2, :cond_e7

    :goto_33
    invoke-virtual {v1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    goto/16 :goto_e7

    :cond_38
    const-string v2, "com.byd.avc:id/hc_back_2d_button"

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->findAccessibilityNodeInfosByViewId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/smg/dydesktop/service/AutoService;->e:Landroid/view/accessibility/AccessibilityNodeInfo;

    const-string v5, "com.byd.avc:id/hc_back_wide_2d_button"

    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->findAccessibilityNodeInfosByViewId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_58

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSelected()Z

    move-result v5

    iput-boolean v5, p0, Lcom/smg/dydesktop/service/AutoService;->h:Z

    :cond_58
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6a

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSelected()Z

    move-result v5

    iput-boolean v5, p0, Lcom/smg/dydesktop/service/AutoService;->i:Z

    :cond_6a
    iget-boolean v5, p0, Lcom/smg/dydesktop/service/AutoService;->h:Z

    if-nez v5, :cond_93

    iget-boolean v5, p0, Lcom/smg/dydesktop/service/AutoService;->i:Z

    if-nez v5, :cond_93

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_84

    invoke-static {}, Lcom/smg/dydesktop/ui/base/App;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lf9/j0;->c(Ljava/lang/String;)V

    return-void

    :cond_84
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSelected()Z

    move-result v6

    if-nez v6, :cond_93

    invoke-virtual {v5, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    :cond_93
    iget-boolean v5, p0, Lcom/smg/dydesktop/service/AutoService;->h:Z

    if-eqz v5, :cond_b8

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_a9

    invoke-static {}, Lcom/smg/dydesktop/ui/base/App;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lf9/j0;->c(Ljava/lang/String;)V

    return-void

    :cond_a9
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSelected()Z

    move-result v5

    if-nez v5, :cond_b8

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    :cond_b8
    iget-boolean v2, p0, Lcom/smg/dydesktop/service/AutoService;->i:Z

    if-eqz v2, :cond_e7

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_ce

    invoke-static {}, Lcom/smg/dydesktop/ui/base/App;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lf9/j0;->c(Ljava/lang/String;)V

    return-void

    :cond_ce
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSelected()Z

    move-result v2
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_d8} :catch_dc

    if-nez v2, :cond_e7

    goto/16 :goto_33

    :catch_dc
    invoke-static {}, Lcom/smg/dydesktop/ui/base/App;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lf9/j0;->c(Ljava/lang/String;)V

    :cond_e7
    :goto_e7
    return-void
.end method

.method public final e(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 6

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSource()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_10

    return-void

    :cond_10
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, La9/k;->g:Ljava/lang/String;

    const-string v0, "com.byd.avc"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/smg/dydesktop/service/AutoService;->e:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-static {}, Lj8/c0;->n()Lj8/c0;

    move-result-object v0

    invoke-virtual {v0}, Lj8/c0;->q()V

    :cond_2f
    iget-object v0, p0, Lcom/smg/dydesktop/service/AutoService;->k:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    return-void

    :cond_38
    const-string v0, "com.android.systemui"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    return-void

    :cond_41
    iput-object p1, p0, Lcom/smg/dydesktop/service/AutoService;->k:Ljava/lang/String;

    const-string v0, "KEY_STATUS_BAR_STATE"

    invoke-static {v0}, Lf9/p;->a(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "RX_BUS_CONTROL_HIDE_STATUS_BAR"

    if-eqz v0, :cond_66

    sget-object v0, La9/k;->t:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-static {}, Lq7/b;->a()Lq7/a;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lq7/a;->h(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_66

    :cond_5d
    invoke-static {}, Lq7/b;->a()Lq7/a;

    move-result-object v0

    const-string v2, "RX_BUS_CONTROL_SHOW_STATUS_BAR"

    invoke-virtual {v0, v2, p1}, Lq7/a;->h(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_66
    :goto_66
    const-string v0, "KEY_NAVIGATION_BAR_STATE"

    invoke-static {v0}, Lf9/p;->a(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "RX_BUS_CONTROL_HIDE_NAV_BAR"

    if-eqz v0, :cond_89

    sget-object v0, La9/k;->u:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    invoke-static {}, Lq7/b;->a()Lq7/a;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Lq7/a;->h(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_89

    :cond_80
    invoke-static {}, Lq7/b;->a()Lq7/a;

    move-result-object v0

    const-string v3, "RX_BUS_CONTROL_SHOW_NAV_BAR"

    invoke-virtual {v0, v3, p1}, Lq7/a;->h(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_89
    :goto_89
    const-string v0, "com.byd.screensaver"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9f

    invoke-static {}, Lq7/b;->a()Lq7/a;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lq7/a;->h(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lq7/b;->a()Lq7/a;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Lq7/a;->h(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_9f
    return-void
.end method

.method public final f()V
    .registers 6

    const v0, 0x7f0f00ca

    :try_start_3
    iget-object v1, p0, Lcom/smg/dydesktop/service/AutoService;->e:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-nez v1, :cond_8

    return-void

    :cond_8
    iget-boolean v2, p0, Lcom/smg/dydesktop/service/AutoService;->j:Z

    const/16 v3, 0x10

    const/4 v4, 0x0

    if-eqz v2, :cond_37

    const-string v2, "com.byd.avc:id/hc_left_back_3d_button"

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->findAccessibilityNodeInfosByViewId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-static {}, Lcom/smg/dydesktop/ui/base/App;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lf9/j0;->c(Ljava/lang/String;)V

    return-void

    :cond_27
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSelected()Z

    move-result v2

    if-nez v2, :cond_67

    :goto_33
    invoke-virtual {v1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    goto :goto_67

    :cond_37
    const-string v2, "com.byd.avc:id/hc_left_2d_button"

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->findAccessibilityNodeInfosByViewId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-static {}, Lcom/smg/dydesktop/ui/base/App;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lf9/j0;->c(Ljava/lang/String;)V

    return-void

    :cond_4f
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSelected()Z

    move-result v2
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_59} :catch_5c

    if-nez v2, :cond_67

    goto :goto_33

    :catch_5c
    invoke-static {}, Lcom/smg/dydesktop/ui/base/App;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lf9/j0;->c(Ljava/lang/String;)V

    :cond_67
    :goto_67
    return-void
.end method

.method public final g(II)Z
    .registers 5

    if-nez p2, :cond_2a

    const/16 p2, 0x57

    const/4 v0, 0x1

    const-string v1, "RX_BUS_LOCAL_MUSIC_PLAY_CURRENT_CHANGED"

    if-eq p1, p2, :cond_23

    const/16 p2, 0x58

    if-eq p1, p2, :cond_1c

    const/16 p2, 0x125

    if-eq p1, p2, :cond_12

    goto :goto_2a

    :cond_12
    invoke-static {}, Lq7/b;->a()Lq7/a;

    move-result-object p1

    const-string p2, "2"

    :goto_18
    invoke-virtual {p1, v1, p2}, Lq7/a;->h(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    :cond_1c
    invoke-static {}, Lq7/b;->a()Lq7/a;

    move-result-object p1

    const-string p2, "1"

    goto :goto_18

    :cond_23
    invoke-static {}, Lq7/b;->a()Lq7/a;

    move-result-object p1

    const-string p2, "3"

    goto :goto_18

    :cond_2a
    :goto_2a
    const/4 p1, 0x0

    return p1
.end method

.method public final h()V
    .registers 6

    const v0, 0x7f0f00ca

    :try_start_3
    iget-object v1, p0, Lcom/smg/dydesktop/service/AutoService;->e:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-nez v1, :cond_8

    return-void

    :cond_8
    const-string v2, "com.byd.avc:id/hc_3d_type_switch_button"

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->findAccessibilityNodeInfosByViewId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-static {}, Lcom/smg/dydesktop/ui/base/App;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lf9/j0;->c(Ljava/lang/String;)V

    return-void

    :cond_20
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSelected()Z

    move-result v3

    iput-boolean v3, p0, Lcom/smg/dydesktop/service/AutoService;->j:Z

    const/16 v4, 0x10

    if-eqz v3, :cond_37

    invoke-virtual {v1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    iput-boolean v2, p0, Lcom/smg/dydesktop/service/AutoService;->j:Z

    goto :goto_49

    :cond_37
    invoke-virtual {v1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/smg/dydesktop/service/AutoService;->j:Z
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3d} :catch_3e

    goto :goto_49

    :catch_3e
    invoke-static {}, Lcom/smg/dydesktop/ui/base/App;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lf9/j0;->c(Ljava/lang/String;)V

    :goto_49
    return-void
.end method

.method public i()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/accessibilityservice/AccessibilityService;->performGlobalAction(I)Z

    return-void
.end method

.method public j()V
    .registers 2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/accessibilityservice/AccessibilityService;->performGlobalAction(I)Z

    return-void
.end method

.method public k()V
    .registers 2

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Landroid/accessibilityservice/AccessibilityService;->performGlobalAction(I)Z

    return-void
.end method

.method public l()V
    .registers 2

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/accessibilityservice/AccessibilityService;->performGlobalAction(I)Z

    return-void
.end method

.method public final m()V
    .registers 6

    const v0, 0x7f0f00ca

    :try_start_3
    iget-object v1, p0, Lcom/smg/dydesktop/service/AutoService;->e:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-nez v1, :cond_8

    return-void

    :cond_8
    iget-boolean v2, p0, Lcom/smg/dydesktop/service/AutoService;->j:Z

    const/16 v3, 0x10

    const/4 v4, 0x0

    if-eqz v2, :cond_37

    const-string v2, "com.byd.avc:id/hc_right_back_3d_button"

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->findAccessibilityNodeInfosByViewId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-static {}, Lcom/smg/dydesktop/ui/base/App;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lf9/j0;->c(Ljava/lang/String;)V

    return-void

    :cond_27
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSelected()Z

    move-result v2

    if-nez v2, :cond_67

    :goto_33
    invoke-virtual {v1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    goto :goto_67

    :cond_37
    const-string v2, "com.byd.avc:id/hc_right_2d_button"

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->findAccessibilityNodeInfosByViewId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-static {}, Lcom/smg/dydesktop/ui/base/App;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lf9/j0;->c(Ljava/lang/String;)V

    return-void

    :cond_4f
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSelected()Z

    move-result v2
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_59} :catch_5c

    if-nez v2, :cond_67

    goto :goto_33

    :catch_5c
    invoke-static {}, Lcom/smg/dydesktop/ui/base/App;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lf9/j0;->c(Ljava/lang/String;)V

    :cond_67
    :goto_67
    return-void
.end method

.method public final n()V
    .registers 8

    const v0, 0x7f0f00ca

    :try_start_3
    iget-object v1, p0, Lcom/smg/dydesktop/service/AutoService;->e:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-nez v1, :cond_8

    return-void

    :cond_8
    iget-boolean v2, p0, Lcom/smg/dydesktop/service/AutoService;->j:Z

    const/16 v3, 0x10

    const/4 v4, 0x0

    if-eqz v2, :cond_3b

    const-string v2, "com.byd.avc:id/hc_front_3d_button"

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->findAccessibilityNodeInfosByViewId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-static {}, Lcom/smg/dydesktop/ui/base/App;->c()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f00e0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lf9/j0;->c(Ljava/lang/String;)V

    return-void

    :cond_2a
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSelected()Z

    move-result v2

    if-nez v2, :cond_ea

    :goto_36
    invoke-virtual {v1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    goto/16 :goto_ea

    :cond_3b
    const-string v2, "com.byd.avc:id/hc_front_2d_button"

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->findAccessibilityNodeInfosByViewId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/smg/dydesktop/service/AutoService;->e:Landroid/view/accessibility/AccessibilityNodeInfo;

    const-string v5, "com.byd.avc:id/hc_front_wide_2d_button"

    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->findAccessibilityNodeInfosByViewId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5b

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSelected()Z

    move-result v5

    iput-boolean v5, p0, Lcom/smg/dydesktop/service/AutoService;->f:Z

    :cond_5b
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6d

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSelected()Z

    move-result v5

    iput-boolean v5, p0, Lcom/smg/dydesktop/service/AutoService;->g:Z

    :cond_6d
    iget-boolean v5, p0, Lcom/smg/dydesktop/service/AutoService;->f:Z

    if-nez v5, :cond_96

    iget-boolean v5, p0, Lcom/smg/dydesktop/service/AutoService;->g:Z

    if-nez v5, :cond_96

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_87

    invoke-static {}, Lcom/smg/dydesktop/ui/base/App;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lf9/j0;->c(Ljava/lang/String;)V

    return-void

    :cond_87
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSelected()Z

    move-result v6

    if-nez v6, :cond_96

    invoke-virtual {v5, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    :cond_96
    iget-boolean v5, p0, Lcom/smg/dydesktop/service/AutoService;->f:Z

    if-eqz v5, :cond_bb

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_ac

    invoke-static {}, Lcom/smg/dydesktop/ui/base/App;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lf9/j0;->c(Ljava/lang/String;)V

    return-void

    :cond_ac
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSelected()Z

    move-result v5

    if-nez v5, :cond_bb

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    :cond_bb
    iget-boolean v2, p0, Lcom/smg/dydesktop/service/AutoService;->g:Z

    if-eqz v2, :cond_ea

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d1

    invoke-static {}, Lcom/smg/dydesktop/ui/base/App;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lf9/j0;->c(Ljava/lang/String;)V

    return-void

    :cond_d1
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSelected()Z

    move-result v2
    :try_end_db
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_db} :catch_df

    if-nez v2, :cond_ea

    goto/16 :goto_36

    :catch_df
    invoke-static {}, Lcom/smg/dydesktop/ui/base/App;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lf9/j0;->c(Ljava/lang/String;)V

    :cond_ea
    :goto_ea
    return-void
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/smg/dydesktop/service/AutoService;->e(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onCreate()V
    .registers 1

    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->onCreate()V

    sput-object p0, Lcom/smg/dydesktop/service/AutoService;->l:Lcom/smg/dydesktop/service/AutoService;

    return-void
.end method

.method public onDestroy()V
    .registers 1

    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->onDestroy()V

    return-void
.end method

.method public onInterrupt()V
    .registers 1

    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 8

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x12f

    const/16 v2, 0x43f

    const-string v3, "KEY_DISPLAY_APP_MOVE_INFO_LIST"

    const/4 v4, 0x1

    if-ne v0, v1, :cond_3e

    if-eqz p1, :cond_2a

    if-ne p1, v4, :cond_3e

    :cond_2a
    invoke-static {v3}, Lf9/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3e

    if-nez p1, :cond_3d

    invoke-static {v1}, Lf9/j;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v4, p1}, Lcom/smg/dydesktop/ui/base/App;->e(IILjava/lang/String;)V

    :cond_3d
    return v4

    :cond_3e
    const/16 v1, 0x12e

    const/4 v5, 0x0

    if-ne v0, v1, :cond_5b

    if-eqz p1, :cond_47

    if-ne p1, v4, :cond_5b

    :cond_47
    invoke-static {v3}, Lf9/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5b

    if-nez p1, :cond_5a

    invoke-static {v1}, Lf9/j;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v5, p1}, Lcom/smg/dydesktop/ui/base/App;->e(IILjava/lang/String;)V

    :cond_5a
    return v4

    :cond_5b
    invoke-static {}, Lf9/j;->A()Z

    move-result v1

    const/16 v2, 0x125

    const-string v3, "com.byd.avc"

    if-eqz v1, :cond_80

    const/16 v1, 0x58

    if-eq v0, v1, :cond_6f

    if-eq v0, v2, :cond_6f

    const/16 v1, 0x57

    if-ne v0, v1, :cond_80

    :cond_6f
    sget-boolean v1, La9/k;->h:Z

    if-nez v1, :cond_80

    iget-object v1, p0, Lcom/smg/dydesktop/service/AutoService;->k:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_80

    invoke-virtual {p0, v0, p1}, Lcom/smg/dydesktop/service/AutoService;->g(II)Z

    move-result p1

    return p1

    :cond_80
    const-string v1, "KEY_FANG_CONTROL_MUSIC_PLAYING_STATE"

    invoke-static {v1}, Lf9/p;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a4

    sget-boolean v1, La9/k;->h:Z

    if-nez v1, :cond_a4

    iget-object v1, p0, Lcom/smg/dydesktop/service/AutoService;->k:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a4

    if-ne v0, v2, :cond_a4

    if-nez p1, :cond_a4

    invoke-static {}, Lq7/b;->a()Lq7/a;

    move-result-object p1

    const-string v0, "RX_BUS_MUSIC_PLAY_STATE_CHANGED"

    const-string v1, "2"

    invoke-virtual {p1, v0, v1}, Lq7/a;->h(Ljava/lang/String;Ljava/lang/Object;)V

    return v4

    :cond_a4
    const-string v1, "KEY_FANG_CONTROL_AIR_STATE"

    invoke-static {v1}, Lf9/p;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b9

    iget-object v1, p0, Lcom/smg/dydesktop/service/AutoService;->k:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b9

    invoke-virtual {p0, v0, p1}, Lcom/smg/dydesktop/service/AutoService;->a(II)Z

    move-result p1

    return p1

    :cond_b9
    const-string v1, "KEY_FANG_CONTROL_FULL_VIEW_STATE"

    invoke-static {v1}, Lf9/p;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d2

    iget-object v1, p0, Lcom/smg/dydesktop/service/AutoService;->k:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d2

    sget-boolean v1, La9/k;->h:Z

    if-nez v1, :cond_d2

    invoke-virtual {p0, v0, p1}, Lcom/smg/dydesktop/service/AutoService;->b(II)Z

    move-result p1

    return p1

    :cond_d2
    return v5
.end method

.method public onServiceConnected()V
    .registers 4

    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->onServiceConnected()V

    sput-object p0, Lcom/smg/dydesktop/service/AutoService;->l:Lcom/smg/dydesktop/service/AutoService;

    invoke-static {}, Lq7/b;->a()Lq7/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lq7/a;->i(Ljava/lang/Object;)V

    invoke-static {}, Lt8/m2;->b()Lt8/m2;

    move-result-object v0

    invoke-virtual {v0}, Lt8/m2;->c()V

    sget-object v0, La9/k;->e:Lcom/smg/dydesktop/entity/CarInfoEntity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smg/dydesktop/entity/CarInfoEntity;->setStatusAccessibilityState(Z)V

    invoke-static {}, Lq7/b;->a()Lq7/a;

    move-result-object v0

    const-string v1, "RX_BUS_RELOAD_BAR"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lq7/a;->h(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 5

    const/4 v0, 0x0

    sput-object v0, Lcom/smg/dydesktop/service/AutoService;->l:Lcom/smg/dydesktop/service/AutoService;

    sget-object v0, La9/k;->e:Lcom/smg/dydesktop/entity/CarInfoEntity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smg/dydesktop/entity/CarInfoEntity;->setStatusAccessibilityState(Z)V

    invoke-static {}, Lq7/b;->a()Lq7/a;

    move-result-object v0

    const-string v1, "RX_BUS_RELOAD_STATUS_ICON_INFO_STATE"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lq7/a;->h(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lq7/b;->a()Lq7/a;

    move-result-object v0

    const-string v1, "RX_BUS_RELOAD_BAR"

    invoke-virtual {v0, v1, v2}, Lq7/a;->h(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lq7/b;->a()Lq7/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lq7/a;->j(Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/accessibilityservice/AccessibilityService;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method
