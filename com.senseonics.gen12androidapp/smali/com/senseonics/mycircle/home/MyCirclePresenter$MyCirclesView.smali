.class interface abstract Lcom/senseonics/mycircle/home/MyCirclePresenter$MyCirclesView;
.super Ljava/lang/Object;
.source "MyCirclePresenter.java"

# interfaces
.implements Lcom/senseonics/view/DialogShowingView;
.implements Lcom/senseonics/util/ProgressShowingView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/mycircle/home/MyCirclePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "MyCirclesView"
.end annotation


# virtual methods
.method public abstract initViews(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;Landroid/view/View$OnClickListener;)V
.end method

.method public abstract setInvitationsList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/senseonics/mycircle/model/MyCirclePeerModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setMembersList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/senseonics/mycircle/model/MyCirclePeerModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract startActivity()V
.end method
