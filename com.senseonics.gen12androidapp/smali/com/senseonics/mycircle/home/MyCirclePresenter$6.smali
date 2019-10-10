.class Lcom/senseonics/mycircle/home/MyCirclePresenter$6;
.super Lcom/senseonics/view/SimpleDialogFragment$OnDismissListener;
.source "MyCirclePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/mycircle/home/MyCirclePresenter;->onServiceCallError(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/mycircle/home/MyCirclePresenter;


# direct methods
.method constructor <init>(Lcom/senseonics/mycircle/home/MyCirclePresenter;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/senseonics/mycircle/home/MyCirclePresenter$6;->this$0:Lcom/senseonics/mycircle/home/MyCirclePresenter;

    invoke-direct {p0}, Lcom/senseonics/view/SimpleDialogFragment$OnDismissListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccept()V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/senseonics/mycircle/home/MyCirclePresenter$6;->this$0:Lcom/senseonics/mycircle/home/MyCirclePresenter;

    invoke-static {v0}, Lcom/senseonics/mycircle/home/MyCirclePresenter;->access$400(Lcom/senseonics/mycircle/home/MyCirclePresenter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/mycircle/home/MyCirclePresenter$MyCirclesView;

    invoke-interface {v0}, Lcom/senseonics/mycircle/home/MyCirclePresenter$MyCirclesView;->hideProgress()V

    return-void
.end method
