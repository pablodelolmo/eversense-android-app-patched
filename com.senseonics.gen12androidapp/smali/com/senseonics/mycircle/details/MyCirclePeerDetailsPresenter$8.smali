.class Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$8;
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
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;

.field final synthetic val$peerEmail:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;Ljava/lang/String;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$8;->this$0:Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;

    iput-object p2, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$8;->val$peerEmail:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 180
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$8;->call(Ljava/lang/Throwable;)V

    return-void
.end method

.method public call(Ljava/lang/Throwable;)V
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$8;->this$0:Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;

    iget-object v1, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$8;->val$peerEmail:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;->access$1500(Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method
