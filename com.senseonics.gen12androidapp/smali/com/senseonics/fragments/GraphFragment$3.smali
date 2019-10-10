.class Lcom/senseonics/fragments/GraphFragment$3;
.super Ljava/lang/Object;
.source "GraphFragment.java"

# interfaces
.implements Lcom/senseonics/graph/GraphManagerView$GraphManagerViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/fragments/GraphFragment;->addGraphManagerView(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/fragments/GraphFragment;


# direct methods
.method constructor <init>(Lcom/senseonics/fragments/GraphFragment;)V
    .locals 0

    .line 526
    iput-object p1, p0, Lcom/senseonics/fragments/GraphFragment$3;->this$0:Lcom/senseonics/fragments/GraphFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateChanged(Ljava/util/Date;)V
    .locals 1

    .line 529
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment$3;->this$0:Lcom/senseonics/fragments/GraphFragment;

    iget-object v0, v0, Lcom/senseonics/fragments/GraphFragment;->lazyLoadGraphModel:Lcom/senseonics/graph/LazyLoadGraphModel;

    invoke-virtual {v0, p1}, Lcom/senseonics/graph/LazyLoadGraphModel;->refreshWithDate(Ljava/util/Date;)V

    return-void
.end method

.method public onGlucoseValuesRefreshed()V
    .locals 1

    .line 534
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment$3;->this$0:Lcom/senseonics/fragments/GraphFragment;

    iget-object v0, v0, Lcom/senseonics/fragments/GraphFragment;->lazyLoadGraphModel:Lcom/senseonics/graph/LazyLoadGraphModel;

    invoke-virtual {v0}, Lcom/senseonics/graph/LazyLoadGraphModel;->refreshGraphWithExistingStartEndDates()V

    return-void
.end method
