.class public Lcom/senseonics/gen12androidapp/CalibrateActivity;
.super Lcom/senseonics/gen12androidapp/BaseActivity;
.source "CalibrateActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 13
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b0034

    .line 15
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/CalibrateActivity;->initializeLayout(I)Landroid/view/View;

    .line 17
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/CalibrateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0f0065

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/senseonics/gen12androidapp/CalibrateActivity;->configureNaviBar(ILjava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/CalibrateActivity;->naviBarRightItemTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 20
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/CalibrateActivity;->naviBarRightItemTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/CalibrateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0241

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    new-instance p1, Lcom/senseonics/gen12androidapp/CalibrateActivity$1;

    invoke-direct {p1, p0}, Lcom/senseonics/gen12androidapp/CalibrateActivity$1;-><init>(Lcom/senseonics/gen12androidapp/CalibrateActivity;)V

    .line 30
    new-instance v0, Lcom/senseonics/fragments/CalibrateFragment;

    invoke-direct {v0}, Lcom/senseonics/fragments/CalibrateFragment;-><init>()V

    .line 31
    invoke-virtual {v0, p1}, Lcom/senseonics/fragments/CalibrateFragment;->setManager(Lcom/senseonics/fragments/CalibrateFragment$CalibrationManager;)V

    .line 33
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/CalibrateActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    const v1, 0x7f09011e

    .line 34
    invoke-virtual {p1, v1, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 35
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method
