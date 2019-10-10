.class Lcom/senseonics/graph/VerticalLineHolder$1;
.super Ljava/lang/Object;
.source "VerticalLineHolder.java"

# interfaces
.implements Lcom/senseonics/graph/VerticalLineManager;


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

    .line 42
    iput-object p1, p0, Lcom/senseonics/graph/VerticalLineHolder$1;->this$0:Lcom/senseonics/graph/VerticalLineHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawVerticalLine(F)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/senseonics/graph/VerticalLineHolder$1;->this$0:Lcom/senseonics/graph/VerticalLineHolder;

    invoke-virtual {v0, p1}, Lcom/senseonics/graph/VerticalLineHolder;->drawVerticalLine(F)V

    return-void
.end method

.method public hideVerticalLine()V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/senseonics/graph/VerticalLineHolder$1;->this$0:Lcom/senseonics/graph/VerticalLineHolder;

    invoke-virtual {v0}, Lcom/senseonics/graph/VerticalLineHolder;->hideVerticalLine()V

    return-void
.end method

.method public verticalLineIsVisible()Z
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/senseonics/graph/VerticalLineHolder$1;->this$0:Lcom/senseonics/graph/VerticalLineHolder;

    invoke-virtual {v0}, Lcom/senseonics/graph/VerticalLineHolder;->verticalLineIsVisible()Z

    move-result v0

    return v0
.end method
