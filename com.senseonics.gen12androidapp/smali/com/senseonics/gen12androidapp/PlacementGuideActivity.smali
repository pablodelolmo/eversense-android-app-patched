.class public Lcom/senseonics/gen12androidapp/PlacementGuideActivity;
.super Lcom/senseonics/gen12androidapp/BaseActivity;
.source "PlacementGuideActivity.java"


# instance fields
.field private placementGuideFragment:Lcom/senseonics/fragments/PlacementGuideFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 15
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b0034

    .line 18
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/PlacementGuideActivity;->initializeLayout(I)Landroid/view/View;

    .line 20
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/PlacementGuideActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0f01b6

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/senseonics/gen12androidapp/PlacementGuideActivity;->configureNaviBar(ILjava/lang/String;Ljava/lang/String;)V

    .line 22
    new-instance p1, Lcom/senseonics/fragments/PlacementGuideFragment;

    invoke-direct {p1}, Lcom/senseonics/fragments/PlacementGuideFragment;-><init>()V

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/PlacementGuideActivity;->placementGuideFragment:Lcom/senseonics/fragments/PlacementGuideFragment;

    .line 23
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/PlacementGuideActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/PlacementGuideActivity;->placementGuideFragment:Lcom/senseonics/fragments/PlacementGuideFragment;

    const v1, 0x7f09011e

    .line 24
    invoke-virtual {p1, v1, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 25
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/DismissPlacementGuide;)V
    .locals 1

    .line 29
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/PlacementGuideActivity;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v0, Lcom/senseonics/events/PlacementToHomeEvent;

    invoke-direct {v0}, Lcom/senseonics/events/PlacementToHomeEvent;-><init>()V

    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
