.class public abstract Lcom/senseonics/view/InkPageIndicator$PendingStartAnimator;
.super Landroid/animation/ValueAnimator;
.source "InkPageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/view/InkPageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "PendingStartAnimator"
.end annotation


# instance fields
.field protected hasStarted:Z

.field protected predicate:Lcom/senseonics/view/InkPageIndicator$StartPredicate;

.field final synthetic this$0:Lcom/senseonics/view/InkPageIndicator;


# direct methods
.method public constructor <init>(Lcom/senseonics/view/InkPageIndicator;Lcom/senseonics/view/InkPageIndicator$StartPredicate;)V
    .locals 0

    .line 678
    iput-object p1, p0, Lcom/senseonics/view/InkPageIndicator$PendingStartAnimator;->this$0:Lcom/senseonics/view/InkPageIndicator;

    .line 679
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 680
    iput-object p2, p0, Lcom/senseonics/view/InkPageIndicator$PendingStartAnimator;->predicate:Lcom/senseonics/view/InkPageIndicator$StartPredicate;

    const/4 p1, 0x0

    .line 681
    iput-boolean p1, p0, Lcom/senseonics/view/InkPageIndicator$PendingStartAnimator;->hasStarted:Z

    return-void
.end method


# virtual methods
.method public startIfNecessary(F)V
    .locals 1

    .line 685
    iget-boolean v0, p0, Lcom/senseonics/view/InkPageIndicator$PendingStartAnimator;->hasStarted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/senseonics/view/InkPageIndicator$PendingStartAnimator;->predicate:Lcom/senseonics/view/InkPageIndicator$StartPredicate;

    invoke-virtual {v0, p1}, Lcom/senseonics/view/InkPageIndicator$StartPredicate;->shouldStart(F)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 686
    invoke-virtual {p0}, Lcom/senseonics/view/InkPageIndicator$PendingStartAnimator;->start()V

    const/4 p1, 0x1

    .line 687
    iput-boolean p1, p0, Lcom/senseonics/view/InkPageIndicator$PendingStartAnimator;->hasStarted:Z

    :cond_0
    return-void
.end method
