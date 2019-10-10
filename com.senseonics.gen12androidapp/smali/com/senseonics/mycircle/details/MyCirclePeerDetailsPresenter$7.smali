.class Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$7;
.super Ljava/lang/Object;
.source "MyCirclePeerDetailsPresenter.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;->handleShareDataChanged(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;

.field final synthetic val$peerEmail:Ljava/lang/String;

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;Ljava/lang/String;I)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$7;->this$0:Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;

    iput-object p2, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$7;->val$peerEmail:Ljava/lang/String;

    iput p3, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$7;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 2

    .line 176
    iget-object p1, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$7;->this$0:Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;

    invoke-static {p1}, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;->access$1300(Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;)Lcom/senseonics/mycircle/model/MyCircleModel;

    move-result-object p1

    iget-object v0, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$7;->val$peerEmail:Ljava/lang/String;

    iget v1, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$7;->val$status:I

    invoke-virtual {p1, v0, v1}, Lcom/senseonics/mycircle/model/MyCircleModel;->updatePeerSharingStatus(Ljava/lang/String;I)V

    .line 177
    iget-object p1, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$7;->this$0:Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;

    invoke-static {p1}, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;->access$1400(Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 173
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$7;->call(Ljava/lang/Boolean;)V

    return-void
.end method
