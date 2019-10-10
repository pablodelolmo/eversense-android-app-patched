.class public Lcom/senseonics/gen12androidapp/InitialDailyCalibrationActivity;
.super Lcom/senseonics/gen12androidapp/DailyCalibrationActivity;
.source "InitialDailyCalibrationActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/DailyCalibrationActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public goToUnitSelection()V
    .locals 2

    .line 26
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/senseonics/gen12androidapp/GlucoseUnitActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/InitialDailyCalibrationActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 12
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/DailyCalibrationActivity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/InitialDailyCalibrationActivity;->statusBarDrawerButton:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 22
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/InitialDailyCalibrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0f0182

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f08015a

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/senseonics/gen12androidapp/InitialDailyCalibrationActivity;->configureNaviBar(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
