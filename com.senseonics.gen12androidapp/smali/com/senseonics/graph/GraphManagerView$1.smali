.class Lcom/senseonics/graph/GraphManagerView$1;
.super Ljava/lang/Object;
.source "GraphManagerView.java"

# interfaces
.implements Lcom/senseonics/graph/GraphManagerView$GraphManagerViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/graph/GraphManagerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/graph/GraphManagerView;


# direct methods
.method constructor <init>(Lcom/senseonics/graph/GraphManagerView;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/senseonics/graph/GraphManagerView$1;->this$0:Lcom/senseonics/graph/GraphManagerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateChanged(Ljava/util/Date;)V
    .locals 0

    return-void
.end method

.method public onGlucoseValuesRefreshed()V
    .locals 0

    return-void
.end method
