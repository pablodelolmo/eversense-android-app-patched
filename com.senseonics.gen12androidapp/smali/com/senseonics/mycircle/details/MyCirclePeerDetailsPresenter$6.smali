.class Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$6;
.super Lcom/senseonics/view/SimpleDialogFragment$OnDismissListener;
.source "MyCirclePeerDetailsPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;->handleRemoveClicked(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;

.field final synthetic val$peerEmailAddress:Ljava/lang/String;

.field final synthetic val$peerId:I


# direct methods
.method constructor <init>(Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;ILjava/lang/String;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$6;->this$0:Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;

    iput p2, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$6;->val$peerId:I

    iput-object p3, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$6;->val$peerEmailAddress:Ljava/lang/String;

    invoke-direct {p0}, Lcom/senseonics/view/SimpleDialogFragment$OnDismissListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccept()V
    .locals 5

    .line 127
    iget-object v0, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$6;->this$0:Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;

    invoke-static {v0}, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;->access$1000(Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$PeerDetailsView;

    invoke-interface {v0}, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$PeerDetailsView;->showProgress()V

    .line 128
    iget v0, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$6;->val$peerId:I

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$6;->this$0:Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;

    invoke-static {v0}, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;->access$900(Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;)Lcom/senseonics/mycircle/details/MyCirclePeerDetailsRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$6;->val$peerEmailAddress:Ljava/lang/String;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$6;->this$0:Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;

    .line 132
    invoke-static {v3}, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;->access$700(Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;)Lrx/functions/Action1;

    move-result-object v3

    iget-object v4, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$6;->this$0:Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;

    .line 133
    invoke-static {v4}, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;->access$800(Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;)Lrx/functions/Action1;

    move-result-object v4

    .line 129
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsRepository;->updateStatus(Ljava/lang/String;ILrx/functions/Action1;Lrx/functions/Action1;)V

    goto :goto_0

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$6;->this$0:Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;

    invoke-static {v0}, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;->access$900(Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;)Lcom/senseonics/mycircle/details/MyCirclePeerDetailsRepository;

    move-result-object v0

    iget v1, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$6;->val$peerId:I

    iget-object v2, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$6;->this$0:Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;

    iget-object v3, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$6;->val$peerEmailAddress:Ljava/lang/String;

    iget v4, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$6;->val$peerId:I

    .line 139
    invoke-static {v2, v3, v4}, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;->access$1100(Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;Ljava/lang/String;I)Lrx/functions/Action1;

    move-result-object v2

    iget-object v3, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$6;->this$0:Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;

    .line 140
    invoke-static {v3}, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;->access$800(Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;)Lrx/functions/Action1;

    move-result-object v3

    .line 137
    invoke-virtual {v0, v1, v2, v3}, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsRepository;->getUserGCMRegIDsByFollowerIDThenPostGCM(ILrx/functions/Action1;Lrx/functions/Action1;)V

    :goto_0
    return-void
.end method

.method public onCancel()V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$6;->this$0:Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;

    invoke-static {v0}, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;->access$1200(Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$PeerDetailsView;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$PeerDetailsView;->setRemoveButtonEnabled(Z)V

    return-void
.end method
