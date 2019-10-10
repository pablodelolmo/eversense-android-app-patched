.class Lcom/senseonics/graph/VerticalLineHolder$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "VerticalLineHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/graph/VerticalLineHolder;-><init>(Landroid/content/Context;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/graph/VerticalLineHolder;


# direct methods
.method constructor <init>(Lcom/senseonics/graph/VerticalLineHolder;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/senseonics/graph/VerticalLineHolder$2;->this$0:Lcom/senseonics/graph/VerticalLineHolder;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/senseonics/graph/VerticalLineHolder$2;->this$0:Lcom/senseonics/graph/VerticalLineHolder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/senseonics/graph/VerticalLineHolder;->drawVerticalLine(F)V

    return-void
.end method
