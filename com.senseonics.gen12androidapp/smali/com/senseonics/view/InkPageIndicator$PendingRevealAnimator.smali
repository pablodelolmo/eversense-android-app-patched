.class public Lcom/senseonics/view/InkPageIndicator$PendingRevealAnimator;
.super Lcom/senseonics/view/InkPageIndicator$PendingStartAnimator;
.source "InkPageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/view/InkPageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PendingRevealAnimator"
.end annotation


# instance fields
.field private dot:I

.field final synthetic this$0:Lcom/senseonics/view/InkPageIndicator;


# direct methods
.method public constructor <init>(Lcom/senseonics/view/InkPageIndicator;ILcom/senseonics/view/InkPageIndicator$StartPredicate;)V
    .locals 0

    .line 794
    iput-object p1, p0, Lcom/senseonics/view/InkPageIndicator$PendingRevealAnimator;->this$0:Lcom/senseonics/view/InkPageIndicator;

    .line 795
    invoke-direct {p0, p1, p3}, Lcom/senseonics/view/InkPageIndicator$PendingStartAnimator;-><init>(Lcom/senseonics/view/InkPageIndicator;Lcom/senseonics/view/InkPageIndicator$StartPredicate;)V

    const/4 p3, 0x2

    .line 796
    new-array p3, p3, [F

    fill-array-data p3, :array_0

    invoke-virtual {p0, p3}, Lcom/senseonics/view/InkPageIndicator$PendingRevealAnimator;->setFloatValues([F)V

    .line 797
    iput p2, p0, Lcom/senseonics/view/InkPageIndicator$PendingRevealAnimator;->dot:I

    .line 798
    invoke-static {p1}, Lcom/senseonics/view/InkPageIndicator;->access$700(Lcom/senseonics/view/InkPageIndicator;)J

    move-result-wide p2

    invoke-virtual {p0, p2, p3}, Lcom/senseonics/view/InkPageIndicator$PendingRevealAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 799
    invoke-static {p1}, Lcom/senseonics/view/InkPageIndicator;->access$800(Lcom/senseonics/view/InkPageIndicator;)Landroid/view/animation/Interpolator;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/senseonics/view/InkPageIndicator$PendingRevealAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 800
    new-instance p2, Lcom/senseonics/view/InkPageIndicator$PendingRevealAnimator$1;

    invoke-direct {p2, p0, p1}, Lcom/senseonics/view/InkPageIndicator$PendingRevealAnimator$1;-><init>(Lcom/senseonics/view/InkPageIndicator$PendingRevealAnimator;Lcom/senseonics/view/InkPageIndicator;)V

    invoke-virtual {p0, p2}, Lcom/senseonics/view/InkPageIndicator$PendingRevealAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 808
    new-instance p2, Lcom/senseonics/view/InkPageIndicator$PendingRevealAnimator$2;

    invoke-direct {p2, p0, p1}, Lcom/senseonics/view/InkPageIndicator$PendingRevealAnimator$2;-><init>(Lcom/senseonics/view/InkPageIndicator$PendingRevealAnimator;Lcom/senseonics/view/InkPageIndicator;)V

    invoke-virtual {p0, p2}, Lcom/senseonics/view/InkPageIndicator$PendingRevealAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3727c5ac    # 1.0E-5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$1700(Lcom/senseonics/view/InkPageIndicator$PendingRevealAnimator;)I
    .locals 0

    .line 790
    iget p0, p0, Lcom/senseonics/view/InkPageIndicator$PendingRevealAnimator;->dot:I

    return p0
.end method
