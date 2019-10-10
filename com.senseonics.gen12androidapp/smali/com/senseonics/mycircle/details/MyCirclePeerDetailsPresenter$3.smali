.class Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$3;
.super Ljava/lang/Object;
.source "MyCirclePeerDetailsPresenter.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;->getPeerRemovalSuccessAction()Lrx/functions/Action1;
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


# direct methods
.method constructor <init>(Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$3;->this$0:Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 0

    .line 80
    iget-object p1, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$3;->this$0:Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;

    invoke-static {p1}, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;->access$200(Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 77
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$3;->call(Ljava/lang/Boolean;)V

    return-void
.end method
