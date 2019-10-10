.class public abstract Lcom/senseonics/gen12androidapp/BaseMVPActivity;
.super Lcom/senseonics/gen12androidapp/BaseActivity;
.source "BaseMVPActivity.java"

# interfaces
.implements Lcom/senseonics/util/ProgressShowingView;
.implements Lcom/senseonics/view/DialogShowingView;
.implements Lcom/senseonics/util/PickerDialogView;


# instance fields
.field private dialog:Landroid/app/Dialog;

.field protected progressDialogFragment:Lcom/senseonics/view/ProgressDialogFragment;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract attachToPresenter()V
.end method

.method protected abstract detachFromPresenter()V
.end method

.method public hideProgress()V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BaseMVPActivity;->progressDialogFragment:Lcom/senseonics/view/ProgressDialogFragment;

    invoke-virtual {v0}, Lcom/senseonics/view/ProgressDialogFragment;->dismiss()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 36
    invoke-super {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;->onPause()V

    .line 37
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BaseMVPActivity;->detachFromPresenter()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 30
    invoke-super {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;->onResume()V

    .line 31
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BaseMVPActivity;->attachToPresenter()V

    return-void
.end method

.method public showDialog(IIILcom/senseonics/view/SimpleDialogFragment$OnDismissListener;Z)V
    .locals 6

    .line 52
    new-instance v0, Lcom/senseonics/view/SimpleDialogFragment$Builder;

    invoke-direct {v0}, Lcom/senseonics/view/SimpleDialogFragment$Builder;-><init>()V

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 53
    invoke-virtual/range {v0 .. v5}, Lcom/senseonics/view/SimpleDialogFragment$Builder;->buildDialog(IIILcom/senseonics/view/SimpleDialogFragment$OnDismissListener;Z)Lcom/senseonics/view/SimpleDialogFragment;

    move-result-object p1

    .line 54
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BaseMVPActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p2

    const-string p3, "DIALOG_TAG"

    invoke-virtual {p1, p2, p3}, Lcom/senseonics/view/SimpleDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public showDialogWithCustomButtons(IIILcom/senseonics/view/SimpleDialogFragment$OnDismissListener;ZII)V
    .locals 6

    .line 75
    new-instance v0, Lcom/senseonics/view/SimpleDialogFragment$Builder;

    invoke-direct {v0}, Lcom/senseonics/view/SimpleDialogFragment$Builder;-><init>()V

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 76
    invoke-virtual/range {v0 .. v5}, Lcom/senseonics/view/SimpleDialogFragment$Builder;->buildDialog(IIILcom/senseonics/view/SimpleDialogFragment$OnDismissListener;Z)Lcom/senseonics/view/SimpleDialogFragment;

    move-result-object p1

    .line 77
    invoke-virtual {p1, p6}, Lcom/senseonics/view/SimpleDialogFragment;->withCustomLeftButton(I)Lcom/senseonics/view/SimpleDialogFragment;

    move-result-object p1

    .line 78
    invoke-virtual {p1, p7}, Lcom/senseonics/view/SimpleDialogFragment;->withCustomRightButton(I)Lcom/senseonics/view/SimpleDialogFragment;

    move-result-object p1

    .line 79
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BaseMVPActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p2

    const-string p3, "DIALOG_TAG"

    invoke-virtual {p1, p2, p3}, Lcom/senseonics/view/SimpleDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public showDialogWithCustomMessage(ILjava/lang/String;ILcom/senseonics/view/SimpleDialogFragment$OnDismissListener;Z)V
    .locals 6

    .line 67
    new-instance v0, Lcom/senseonics/view/SimpleDialogFragment$Builder;

    invoke-direct {v0}, Lcom/senseonics/view/SimpleDialogFragment$Builder;-><init>()V

    const/4 v2, -0x1

    move v1, p1

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 68
    invoke-virtual/range {v0 .. v5}, Lcom/senseonics/view/SimpleDialogFragment$Builder;->buildDialog(IIILcom/senseonics/view/SimpleDialogFragment$OnDismissListener;Z)Lcom/senseonics/view/SimpleDialogFragment;

    move-result-object p1

    .line 69
    invoke-virtual {p1, p2}, Lcom/senseonics/view/SimpleDialogFragment;->withCustomMessage(Ljava/lang/String;)Lcom/senseonics/view/SimpleDialogFragment;

    move-result-object p1

    .line 70
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BaseMVPActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p2

    const-string p3, "DIALOG_TAG"

    invoke-virtual {p1, p2, p3}, Lcom/senseonics/view/SimpleDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public showDialogWithTitleBold(IZIILcom/senseonics/view/SimpleDialogFragment$OnDismissListener;Z)V
    .locals 6

    .line 59
    new-instance v0, Lcom/senseonics/view/SimpleDialogFragment$Builder;

    invoke-direct {v0}, Lcom/senseonics/view/SimpleDialogFragment$Builder;-><init>()V

    move v1, p1

    move v2, p3

    move v3, p4

    move-object v4, p5

    move v5, p6

    .line 60
    invoke-virtual/range {v0 .. v5}, Lcom/senseonics/view/SimpleDialogFragment$Builder;->buildDialog(IIILcom/senseonics/view/SimpleDialogFragment$OnDismissListener;Z)Lcom/senseonics/view/SimpleDialogFragment;

    move-result-object p1

    .line 61
    invoke-virtual {p1, p2}, Lcom/senseonics/view/SimpleDialogFragment;->withTitleBold(Z)Lcom/senseonics/view/SimpleDialogFragment;

    move-result-object p1

    .line 62
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BaseMVPActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p2

    const-string p3, "DIALOG_TAG"

    invoke-virtual {p1, p2, p3}, Lcom/senseonics/view/SimpleDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public showPicker(Ljava/lang/String;Ljava/util/ArrayList;Lcom/senseonics/events/EventUtils$PickerManager;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Item;",
            ">;",
            "Lcom/senseonics/events/EventUtils$PickerManager;",
            "I)V"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BaseMVPActivity;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BaseMVPActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BaseMVPActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/BaseMVPActivity;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/senseonics/bluetoothle/DialogUtils;->createPickerDialog(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Lcom/senseonics/events/EventUtils$PickerManager;I)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/BaseMVPActivity;->dialog:Landroid/app/Dialog;

    .line 88
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/BaseMVPActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public showProgress()V
    .locals 3

    .line 42
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BaseMVPActivity;->progressDialogFragment:Lcom/senseonics/view/ProgressDialogFragment;

    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BaseMVPActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "PROGRESS_DIALOG_TAG"

    invoke-virtual {v0, v1, v2}, Lcom/senseonics/view/ProgressDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
