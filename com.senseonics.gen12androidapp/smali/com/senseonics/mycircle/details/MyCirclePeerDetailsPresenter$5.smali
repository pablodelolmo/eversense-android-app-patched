.class Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$5;
.super Ljava/lang/Object;
.source "MyCirclePeerDetailsPresenter.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;->getGCMRegIDsSuccessAction(Ljava/lang/String;I)Lrx/functions/Action1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Ljava/util/List<",
        "Lcom/senseonics/gcm/FollowerGCMInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;

.field final synthetic val$peerEmail:Ljava/lang/String;

.field final synthetic val$peerId:I


# direct methods
.method constructor <init>(Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;ILjava/lang/String;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$5;->this$0:Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;

    iput p2, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$5;->val$peerId:I

    iput-object p3, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$5;->val$peerEmail:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 95
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$5;->call(Ljava/util/List;)V

    return-void
.end method

.method public call(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/senseonics/gcm/FollowerGCMInfo;",
            ">;)V"
        }
    .end annotation

    .line 98
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/gcm/FollowerGCMInfo;

    .line 99
    invoke-virtual {v0}, Lcom/senseonics/gcm/FollowerGCMInfo;->getUserID()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$5;->val$peerId:I

    if-ne v1, v2, :cond_0

    .line 100
    invoke-virtual {v0}, Lcom/senseonics/gcm/FollowerGCMInfo;->getDeviceGCMRegCode()Ljava/lang/String;

    move-result-object v1

    .line 102
    invoke-virtual {v0}, Lcom/senseonics/gcm/FollowerGCMInfo;->getStatus()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const-string v0, ""

    .line 103
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$5;->this$0:Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;

    invoke-static {v0}, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;->access$600(Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;)Lcom/senseonics/gcm/GCMRepository;

    move-result-object v0

    iget-object v3, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$5;->this$0:Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;

    .line 106
    invoke-static {v3}, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;->access$400(Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0f0198

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$5;->this$0:Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;

    .line 107
    invoke-static {v4}, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;->access$400(Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0f007c

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$5;->this$0:Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;

    invoke-static {v7}, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;->access$500(Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;)Lcom/senseonics/util/AccountConstants;

    move-result-object v7

    invoke-virtual {v7}, Lcom/senseonics/util/AccountConstants;->getAccountRealNameFromPreference()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v6

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 104
    invoke-virtual {v0, v1, v3, v2}, Lcom/senseonics/gcm/GCMRepository;->postGCM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :cond_1
    iget-object p1, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$5;->this$0:Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;

    invoke-static {p1}, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;->access$900(Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;)Lcom/senseonics/mycircle/details/MyCirclePeerDetailsRepository;

    move-result-object p1

    iget-object v0, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$5;->val$peerEmail:Ljava/lang/String;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$5;->this$0:Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;

    .line 115
    invoke-static {v2}, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;->access$700(Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;)Lrx/functions/Action1;

    move-result-object v2

    iget-object v3, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$5;->this$0:Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;

    .line 116
    invoke-static {v3}, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;->access$800(Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;)Lrx/functions/Action1;

    move-result-object v3

    .line 113
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsRepository;->updateStatus(Ljava/lang/String;ILrx/functions/Action1;Lrx/functions/Action1;)V

    return-void
.end method
