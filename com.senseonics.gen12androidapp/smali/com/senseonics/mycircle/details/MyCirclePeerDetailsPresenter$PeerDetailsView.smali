.class interface abstract Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$PeerDetailsView;
.super Ljava/lang/Object;
.source "MyCirclePeerDetailsPresenter.java"

# interfaces
.implements Lcom/senseonics/view/DialogShowingView;
.implements Lcom/senseonics/util/ProgressShowingView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "PeerDetailsView"
.end annotation


# virtual methods
.method public abstract getPeerEmailFromIntent()Ljava/lang/String;
.end method

.method public abstract getPeerIdFromIntent()I
.end method

.method public abstract initViews(Lcom/senseonics/mycircle/model/MyCirclePeerModel;Landroid/widget/CompoundButton$OnCheckedChangeListener;Landroid/view/View$OnClickListener;)V
.end method

.method public abstract onPeerRemoved()V
.end method

.method public abstract revertShareSwitchSelection(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
.end method

.method public abstract setRemoveButtonEnabled(Z)V
.end method
