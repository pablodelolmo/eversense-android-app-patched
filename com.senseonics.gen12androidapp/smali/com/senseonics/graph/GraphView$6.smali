.class Lcom/senseonics/graph/GraphView$6;
.super Ljava/lang/Object;
.source "GraphView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/graph/GraphView;->createEventsPopUp(FFLcom/jjoe64/graphview/Graph$EventGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/graph/GraphView;


# direct methods
.method constructor <init>(Lcom/senseonics/graph/GraphView;)V
    .locals 0

    .line 433
    iput-object p1, p0, Lcom/senseonics/graph/GraphView$6;->this$0:Lcom/senseonics/graph/GraphView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 437
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    const/4 p1, 0x0

    return p1
.end method
