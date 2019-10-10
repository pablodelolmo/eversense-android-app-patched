.class public Lcom/senseonics/gen12androidapp/ObjectGraphActivity;
.super Landroid/app/Activity;
.source "ObjectGraphActivity.java"


# instance fields
.field private activityGraph:Ldagger/ObjectGraph;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getModules()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 32
    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Lcom/senseonics/gen12androidapp/ActivityModule;

    invoke-direct {v1, p0}, Lcom/senseonics/gen12androidapp/ActivityModule;-><init>(Landroid/app/Activity;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public inject(Ljava/lang/Object;)V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/ObjectGraphActivity;->activityGraph:Ldagger/ObjectGraph;

    invoke-virtual {v0, p1}, Ldagger/ObjectGraph;->inject(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 18
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/ObjectGraphActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/senseonics/gen12androidapp/ObjectGraphApplication;

    .line 19
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/ObjectGraphActivity;->getModules()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/senseonics/gen12androidapp/ObjectGraphApplication;->plus([Ljava/lang/Object;)Ldagger/ObjectGraph;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/ObjectGraphActivity;->activityGraph:Ldagger/ObjectGraph;

    .line 20
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/ObjectGraphActivity;->activityGraph:Ldagger/ObjectGraph;

    invoke-virtual {v0, p0}, Ldagger/ObjectGraph;->inject(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/senseonics/gen12androidapp/ObjectGraphActivity;->activityGraph:Ldagger/ObjectGraph;

    .line 28
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method
