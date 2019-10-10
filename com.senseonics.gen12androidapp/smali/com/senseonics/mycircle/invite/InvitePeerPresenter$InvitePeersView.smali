.class interface abstract Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;
.super Ljava/lang/Object;
.source "InvitePeerPresenter.java"

# interfaces
.implements Lcom/senseonics/util/ProgressShowingView;
.implements Lcom/senseonics/view/DialogShowingView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/mycircle/invite/InvitePeerPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "InvitePeersView"
.end annotation


# virtual methods
.method public abstract getEnteredEmail()Ljava/lang/String;
.end method

.method public abstract getEnteredNickname()Ljava/lang/String;
.end method

.method public abstract launchContactPicker()V
.end method

.method public abstract onSuccess()V
.end method

.method public abstract setEmailText(Ljava/lang/String;)V
.end method

.method public abstract setInviteButtonEnabled(Z)V
.end method

.method public abstract setupViews(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
.end method
