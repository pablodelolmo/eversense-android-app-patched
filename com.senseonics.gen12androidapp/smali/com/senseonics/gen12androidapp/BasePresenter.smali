.class public Lcom/senseonics/gen12androidapp/BasePresenter;
.super Ljava/lang/Object;
.source "BasePresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VIEWTYPE:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected attached:Z

.field protected view:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TVIEWTYPE;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public attach(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVIEWTYPE;)V"
        }
    .end annotation

    .line 9
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/BasePresenter;->view:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcom/senseonics/gen12androidapp/BasePresenter;->attached:Z

    return-void
.end method

.method public detach()V
    .locals 1

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/senseonics/gen12androidapp/BasePresenter;->attached:Z

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/senseonics/gen12androidapp/BasePresenter;->view:Ljava/lang/Object;

    return-void
.end method
