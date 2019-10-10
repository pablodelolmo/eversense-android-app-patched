.class public Lcom/senseonics/view/InkPageIndicator$RightwardStartPredicate;
.super Lcom/senseonics/view/InkPageIndicator$StartPredicate;
.source "InkPageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/view/InkPageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RightwardStartPredicate"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/view/InkPageIndicator;


# direct methods
.method public constructor <init>(Lcom/senseonics/view/InkPageIndicator;F)V
    .locals 0

    .line 838
    iput-object p1, p0, Lcom/senseonics/view/InkPageIndicator$RightwardStartPredicate;->this$0:Lcom/senseonics/view/InkPageIndicator;

    .line 839
    invoke-direct {p0, p1, p2}, Lcom/senseonics/view/InkPageIndicator$StartPredicate;-><init>(Lcom/senseonics/view/InkPageIndicator;F)V

    return-void
.end method


# virtual methods
.method shouldStart(F)Z
    .locals 1

    .line 843
    iget v0, p0, Lcom/senseonics/view/InkPageIndicator$RightwardStartPredicate;->thresholdValue:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
