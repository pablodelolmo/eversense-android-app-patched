.class public Lcom/senseonics/gen12androidapp/NotificationsActivity;
.super Lcom/senseonics/gen12androidapp/BaseActivity;
.source "NotificationsActivity.java"


# instance fields
.field private notificationsFragment:Lcom/senseonics/fragments/NotificationsFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
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
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/NotificationsActivity;->initializeLayout(I)Landroid/view/View;

    .line 17
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/NotificationsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0f019b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/senseonics/gen12androidapp/NotificationsActivity;->configureNaviBar(ILjava/lang/String;Ljava/lang/String;)V

    .line 19
    new-instance p1, Lcom/senseonics/fragments/NotificationsFragment;

    invoke-direct {p1}, Lcom/senseonics/fragments/NotificationsFragment;-><init>()V

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/NotificationsActivity;->notificationsFragment:Lcom/senseonics/fragments/NotificationsFragment;

    .line 20
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/NotificationsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/NotificationsActivity;->notificationsFragment:Lcom/senseonics/fragments/NotificationsFragment;

    const v1, 0x7f09011e

    .line 21
    invoke-virtual {p1, v1, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 22
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 27
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/NotificationsActivity;->refresh()V

    .line 28
    invoke-super {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;->onResume()V

    return-void
.end method

.method public refresh()V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/NotificationsActivity;->notificationsFragment:Lcom/senseonics/fragments/NotificationsFragment;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/NotificationsActivity;->notificationsFragment:Lcom/senseonics/fragments/NotificationsFragment;

    invoke-virtual {v0}, Lcom/senseonics/fragments/NotificationsFragment;->initData()V

    :cond_0
    return-void
.end method
