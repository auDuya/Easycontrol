.class public Le8/o;
.super Landroid/hardware/bydauto/statistic/AbsBYDAutoStatisticListener;
.source "SourceFile"


# instance fields
.field public final a:Landroid/hardware/bydauto/statistic/BYDAutoStatisticDevice;

.field public b:Le8/r;

.field public final c:Ljava/text/DecimalFormat;


# direct methods
.method public constructor <init>(Le8/r;Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Landroid/hardware/bydauto/statistic/AbsBYDAutoStatisticListener;-><init>()V

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Le8/o;->c:Ljava/text/DecimalFormat;

    iput-object p1, p0, Le8/o;->b:Le8/r;

    invoke-static {p2}, Landroid/hardware/bydauto/statistic/BYDAutoStatisticDevice;->getInstance(Landroid/content/Context;)Landroid/hardware/bydauto/statistic/BYDAutoStatisticDevice;

    move-result-object p1

    iput-object p1, p0, Le8/o;->a:Landroid/hardware/bydauto/statistic/BYDAutoStatisticDevice;

    invoke-virtual {p1, p0}, Landroid/hardware/bydauto/statistic/BYDAutoStatisticDevice;->registerListener(Landroid/hardware/bydauto/statistic/AbsBYDAutoStatisticListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Le8/o;->a:Landroid/hardware/bydauto/statistic/BYDAutoStatisticDevice;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p0}, Landroid/hardware/bydauto/statistic/BYDAutoStatisticDevice;->unregisterListener(Landroid/hardware/bydauto/statistic/AbsBYDAutoStatisticListener;)V

    :cond_7
    return-void
.end method

.method public b(IILjava/lang/String;)V
    .registers 7

    packed-switch p1, :pswitch_data_8e

    packed-switch p1, :pswitch_data_9e

    goto/16 :goto_8c

    :pswitch_8  #0x45e, 0x45f
    iget-object p2, p0, Le8/o;->b:Le8/r;

    iget-object p3, p0, Le8/o;->c:Ljava/text/DecimalFormat;

    iget-object v0, p0, Le8/o;->a:Landroid/hardware/bydauto/statistic/BYDAutoStatisticDevice;

    invoke-virtual {v0}, Landroid/hardware/bydauto/statistic/BYDAutoStatisticDevice;->getTotalFuelConValue()D

    move-result-wide v0

    goto :goto_31

    :pswitch_13  #0x45c, 0x45d
    iget-object p2, p0, Le8/o;->b:Le8/r;

    iget-object p3, p0, Le8/o;->c:Ljava/text/DecimalFormat;

    iget-object v0, p0, Le8/o;->a:Landroid/hardware/bydauto/statistic/BYDAutoStatisticDevice;

    invoke-virtual {v0}, Landroid/hardware/bydauto/statistic/BYDAutoStatisticDevice;->getTotalElecConValue()D

    move-result-wide v0

    goto :goto_31

    :pswitch_1e  #0x45a, 0x45b
    iget-object p2, p0, Le8/o;->b:Le8/r;

    iget-object p3, p0, Le8/o;->a:Landroid/hardware/bydauto/statistic/BYDAutoStatisticDevice;

    invoke-virtual {p3}, Landroid/hardware/bydauto/statistic/BYDAutoStatisticDevice;->getTotalMileageValue()I

    move-result p3

    goto :goto_85

    :pswitch_27  #0x44b
    iget-object p2, p0, Le8/o;->b:Le8/r;

    iget-object p3, p0, Le8/o;->c:Ljava/text/DecimalFormat;

    iget-object v0, p0, Le8/o;->a:Landroid/hardware/bydauto/statistic/BYDAutoStatisticDevice;

    invoke-virtual {v0}, Landroid/hardware/bydauto/statistic/BYDAutoStatisticDevice;->getLastFuelConPHMValue()D

    move-result-wide v0

    :goto_31
    invoke-virtual {p3, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p3

    goto :goto_89

    :pswitch_36  #0x44a
    iget-object p2, p0, Le8/o;->b:Le8/r;

    iget-object p3, p0, Le8/o;->a:Landroid/hardware/bydauto/statistic/BYDAutoStatisticDevice;

    invoke-virtual {p3}, Landroid/hardware/bydauto/statistic/BYDAutoStatisticDevice;->getLastElecConPHMValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p3

    goto :goto_89

    :pswitch_43  #0x449
    iget-object p2, p0, Le8/o;->b:Le8/r;

    iget-object p3, p0, Le8/o;->a:Landroid/hardware/bydauto/statistic/BYDAutoStatisticDevice;

    invoke-virtual {p3}, Landroid/hardware/bydauto/statistic/BYDAutoStatisticDevice;->getFuelPercentageValue()I

    move-result p3

    goto :goto_85

    :pswitch_4c  #0x448
    iget-object p2, p0, Le8/o;->a:Landroid/hardware/bydauto/statistic/BYDAutoStatisticDevice;

    invoke-virtual {p2}, Landroid/hardware/bydauto/statistic/BYDAutoStatisticDevice;->getElecPercentageValue()D

    move-result-wide p2

    double-to-int p2, p2

    iget-object p3, p0, Le8/o;->b:Le8/r;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Le8/r;->d(ILjava/lang/String;)V

    goto :goto_8c

    :pswitch_5d  #0x447
    iget-object p2, p0, Le8/o;->a:Landroid/hardware/bydauto/statistic/BYDAutoStatisticDevice;

    invoke-virtual {p2}, Landroid/hardware/bydauto/statistic/BYDAutoStatisticDevice;->getFuelPercentageValue()I

    move-result p2

    iget-object p3, p0, Le8/o;->a:Landroid/hardware/bydauto/statistic/BYDAutoStatisticDevice;

    invoke-virtual {p3}, Landroid/hardware/bydauto/statistic/BYDAutoStatisticDevice;->getFuelDrivingRangeValue()I

    move-result p3

    iget-object v0, p0, Le8/o;->b:Le8/r;

    const/4 v1, 0x5

    const-string v2, "--"

    if-le p2, v1, :cond_79

    const/16 p2, 0x7fe

    if-ne p3, p2, :cond_75

    goto :goto_79

    :cond_75
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    :cond_79
    :goto_79
    invoke-virtual {v0, p1, v2}, Le8/r;->d(ILjava/lang/String;)V

    goto :goto_8c

    :pswitch_7d  #0x446
    iget-object p2, p0, Le8/o;->b:Le8/r;

    iget-object p3, p0, Le8/o;->a:Landroid/hardware/bydauto/statistic/BYDAutoStatisticDevice;

    invoke-virtual {p3}, Landroid/hardware/bydauto/statistic/BYDAutoStatisticDevice;->getElecDrivingRangeValue()I

    move-result p3

    :goto_85
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    :goto_89
    invoke-virtual {p2, p1, p3}, Le8/r;->d(ILjava/lang/String;)V

    :goto_8c
    return-void

    nop

    :pswitch_data_8e
    .packed-switch 0x446
        :pswitch_7d  #00000446
        :pswitch_5d  #00000447
        :pswitch_4c  #00000448
        :pswitch_43  #00000449
        :pswitch_36  #0000044a
        :pswitch_27  #0000044b
    .end packed-switch

    :pswitch_data_9e
    .packed-switch 0x45a
        :pswitch_1e  #0000045a
        :pswitch_1e  #0000045b
        :pswitch_13  #0000045c
        :pswitch_13  #0000045d
        :pswitch_8  #0000045e
        :pswitch_8  #0000045f
    .end packed-switch
.end method

.method public onDataEventChanged(ILandroid/hardware/bydauto/BYDAutoEventValue;)V
    .registers 3

    return-void
.end method

.method public onDrivingTimeChanged(D)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/hardware/bydauto/statistic/AbsBYDAutoStatisticListener;->onDrivingTimeChanged(D)V

    return-void
.end method

.method public onElecDrivingRangeChanged(I)V
    .registers 4

    iget-object v0, p0, Le8/o;->b:Le8/r;

    const/16 v1, 0x446

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Le8/r;->d(ILjava/lang/String;)V

    return-void
.end method

.method public onElecPercentageChanged(D)V
    .registers 4

    double-to-int p1, p1

    iget-object p2, p0, Le8/o;->b:Le8/r;

    const/16 v0, 0x448

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Le8/r;->d(ILjava/lang/String;)V

    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .registers 3

    return-void
.end method

.method public onFuelDrivingRangeChanged(I)V
    .registers 4

    iget-object v0, p0, Le8/o;->b:Le8/r;

    const/16 v1, 0x447

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Le8/r;->d(ILjava/lang/String;)V

    return-void
.end method

.method public onFuelPercentageChanged(I)V
    .registers 4

    iget-object v0, p0, Le8/o;->b:Le8/r;

    const/16 v1, 0x449

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Le8/r;->d(ILjava/lang/String;)V

    return-void
.end method

.method public onLastElecConPHMChanged(D)V
    .registers 5

    iget-object v0, p0, Le8/o;->b:Le8/r;

    const/16 v1, 0x44a

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Le8/r;->d(ILjava/lang/String;)V

    return-void
.end method

.method public onLastFuelConPHMChanged(D)V
    .registers 5

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Le8/o;->b:Le8/r;

    const/16 v0, 0x44b

    invoke-virtual {p2, v0, p1}, Le8/r;->d(ILjava/lang/String;)V

    return-void
.end method

.method public onTotalElecConChanged(D)V
    .registers 5

    iget-object p1, p0, Le8/o;->b:Le8/r;

    iget-object p2, p0, Le8/o;->c:Ljava/text/DecimalFormat;

    iget-object v0, p0, Le8/o;->a:Landroid/hardware/bydauto/statistic/BYDAutoStatisticDevice;

    invoke-virtual {v0}, Landroid/hardware/bydauto/statistic/BYDAutoStatisticDevice;->getTotalElecConValue()D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x45c

    invoke-virtual {p1, v0, p2}, Le8/r;->d(ILjava/lang/String;)V

    return-void
.end method

.method public onTotalFuelConChanged(D)V
    .registers 5

    iget-object p1, p0, Le8/o;->b:Le8/r;

    iget-object p2, p0, Le8/o;->c:Ljava/text/DecimalFormat;

    iget-object v0, p0, Le8/o;->a:Landroid/hardware/bydauto/statistic/BYDAutoStatisticDevice;

    invoke-virtual {v0}, Landroid/hardware/bydauto/statistic/BYDAutoStatisticDevice;->getTotalFuelConValue()D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x45e

    invoke-virtual {p1, v0, p2}, Le8/r;->d(ILjava/lang/String;)V

    return-void
.end method

.method public onTotalMileageValueChanged(I)V
    .registers 4

    iget-object p1, p0, Le8/o;->b:Le8/r;

    iget-object v0, p0, Le8/o;->a:Landroid/hardware/bydauto/statistic/BYDAutoStatisticDevice;

    invoke-virtual {v0}, Landroid/hardware/bydauto/statistic/BYDAutoStatisticDevice;->getTotalMileageValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x45a

    invoke-virtual {p1, v1, v0}, Le8/r;->d(ILjava/lang/String;)V

    return-void
.end method

.method public onTravelTimeChanged(ID)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroid/hardware/bydauto/statistic/AbsBYDAutoStatisticListener;->onTravelTimeChanged(ID)V

    return-void
.end method
