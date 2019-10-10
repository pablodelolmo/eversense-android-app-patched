.class Lcom/senseonics/mycircle/home/MyCirclePresenter$5;
.super Ljava/lang/Object;
.source "MyCirclePresenter.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/mycircle/home/MyCirclePresenter;->refreshLists(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/mycircle/home/MyCirclePresenter;

.field final synthetic val$peerDtos:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/senseonics/mycircle/home/MyCirclePresenter;Ljava/util/List;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/senseonics/mycircle/home/MyCirclePresenter$5;->this$0:Lcom/senseonics/mycircle/home/MyCirclePresenter;

    iput-object p2, p0, Lcom/senseonics/mycircle/home/MyCirclePresenter$5;->val$peerDtos:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/senseonics/mycircle/home/MyCirclePresenter$5;->this$0:Lcom/senseonics/mycircle/home/MyCirclePresenter;

    invoke-static {v0}, Lcom/senseonics/mycircle/home/MyCirclePresenter;->access$200(Lcom/senseonics/mycircle/home/MyCirclePresenter;)Lcom/senseonics/mycircle/model/MyCircleModel;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/mycircle/home/MyCirclePresenter$5;->val$peerDtos:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/senseonics/mycircle/model/MyCircleModel;->addPeers(Ljava/util/List;)V

    .line 81
    iget-object v0, p0, Lcom/senseonics/mycircle/home/MyCirclePresenter$5;->this$0:Lcom/senseonics/mycircle/home/MyCirclePresenter;

    invoke-static {v0}, Lcom/senseonics/mycircle/home/MyCirclePresenter;->access$300(Lcom/senseonics/mycircle/home/MyCirclePresenter;)V

    return-void
.end method
