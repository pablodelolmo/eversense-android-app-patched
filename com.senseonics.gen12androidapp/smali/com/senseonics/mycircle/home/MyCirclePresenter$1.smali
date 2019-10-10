.class Lcom/senseonics/mycircle/home/MyCirclePresenter$1;
.super Ljava/lang/Object;
.source "MyCirclePresenter.java"

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/mycircle/home/MyCirclePresenter;->attach(Lcom/senseonics/mycircle/home/MyCirclePresenter$MyCirclesView;)V
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

    .line 43
    iput-object p1, p0, Lcom/senseonics/mycircle/home/MyCirclePresenter$1;->this$0:Lcom/senseonics/mycircle/home/MyCirclePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/senseonics/mycircle/home/MyCirclePresenter$1;->this$0:Lcom/senseonics/mycircle/home/MyCirclePresenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/senseonics/mycircle/home/MyCirclePresenter;->access$000(Lcom/senseonics/mycircle/home/MyCirclePresenter;Z)V

    return-void
.end method
