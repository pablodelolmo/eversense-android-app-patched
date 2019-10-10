.class public Lcom/senseonics/gen12androidapp/GlucoseUnitActivity;
.super Lcom/senseonics/gen12androidapp/BaseActivity;
.source "GlucoseUnitActivity.java"


# instance fields
.field private glucoseUnitFragment:Lcom/senseonics/fragments/GlucoseUnitFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/senseonics/gen12androidapp/GlucoseUnitActivity;)Lcom/senseonics/fragments/GlucoseUnitFragment;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/senseonics/gen12androidapp/GlucoseUnitActivity;->glucoseUnitFragment:Lcom/senseonics/fragments/GlucoseUnitFragment;

    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 17
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b0034

    .line 19
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/GlucoseUnitActivity;->initializeLayout(I)Landroid/view/View;

    .line 21
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/GlucoseUnitActivity;->statusBarDrawerButton:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 33
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/GlucoseUnitActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0f00f7

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f08015b

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/senseonics/gen12androidapp/GlucoseUnitActivity;->configureNaviBar(ILjava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/GlucoseUnitActivity;->naviBarRightItemTextView:Landroid/widget/TextView;

    new-instance v0, Lcom/senseonics/gen12androidapp/GlucoseUnitActivity$1;

    invoke-direct {v0, p0}, Lcom/senseonics/gen12androidapp/GlucoseUnitActivity$1;-><init>(Lcom/senseonics/gen12androidapp/GlucoseUnitActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    new-instance p1, Lcom/senseonics/fragments/GlucoseUnitFragment;

    invoke-direct {p1}, Lcom/senseonics/fragments/GlucoseUnitFragment;-><init>()V

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/GlucoseUnitActivity;->glucoseUnitFragment:Lcom/senseonics/fragments/GlucoseUnitFragment;

    .line 67
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/GlucoseUnitActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseUnitActivity;->glucoseUnitFragment:Lcom/senseonics/fragments/GlucoseUnitFragment;

    const v1, 0x7f09011e

    .line 68
    invoke-virtual {p1, v1, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 69
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 71
    invoke-static {p0}, Lcom/senseonics/util/Utils;->checkIfFirstRun(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/GlucoseUnitActivity;->finish()V

    :cond_0
    return-void
.end method
