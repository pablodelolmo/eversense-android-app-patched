.class Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "InkPageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator;-><init>(Lcom/senseonics/view/InkPageIndicator;IIILcom/senseonics/view/InkPageIndicator$StartPredicate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator;

.field final synthetic val$dotsToHide:[I

.field final synthetic val$initialX1:F

.field final synthetic val$initialX2:F

.field final synthetic val$this$0:Lcom/senseonics/view/InkPageIndicator;


# direct methods
.method constructor <init>(Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator;Lcom/senseonics/view/InkPageIndicator;[IFF)V
    .locals 0

    .line 763
    iput-object p1, p0, Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator$3;->this$1:Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator;

    iput-object p2, p0, Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator$3;->val$this$0:Lcom/senseonics/view/InkPageIndicator;

    iput-object p3, p0, Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator$3;->val$dotsToHide:[I

    iput p4, p0, Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator$3;->val$initialX1:F

    iput p5, p0, Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator$3;->val$initialX2:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 779
    iget-object p1, p0, Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator$3;->this$1:Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator;

    iget-object p1, p1, Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator;->this$0:Lcom/senseonics/view/InkPageIndicator;

    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {p1, v0}, Lcom/senseonics/view/InkPageIndicator;->access$1202(Lcom/senseonics/view/InkPageIndicator;F)F

    .line 780
    iget-object p1, p0, Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator$3;->this$1:Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator;

    iget-object p1, p1, Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator;->this$0:Lcom/senseonics/view/InkPageIndicator;

    invoke-static {p1, v0}, Lcom/senseonics/view/InkPageIndicator;->access$1302(Lcom/senseonics/view/InkPageIndicator;F)F

    .line 781
    iget-object p1, p0, Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator$3;->this$1:Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator;

    iget-object p1, p1, Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator;->this$0:Lcom/senseonics/view/InkPageIndicator;

    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 5

    .line 766
    iget-object p1, p0, Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator$3;->this$1:Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator;

    iget-object p1, p1, Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator;->this$0:Lcom/senseonics/view/InkPageIndicator;

    invoke-static {p1}, Lcom/senseonics/view/InkPageIndicator;->access$1400(Lcom/senseonics/view/InkPageIndicator;)V

    .line 767
    iget-object p1, p0, Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator$3;->this$1:Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator;

    iget-object p1, p1, Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator;->this$0:Lcom/senseonics/view/InkPageIndicator;

    invoke-static {p1}, Lcom/senseonics/view/InkPageIndicator;->access$1500(Lcom/senseonics/view/InkPageIndicator;)V

    .line 769
    iget-object p1, p0, Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator$3;->val$dotsToHide:[I

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 770
    iget-object v3, p0, Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator$3;->this$1:Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator;

    iget-object v3, v3, Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator;->this$0:Lcom/senseonics/view/InkPageIndicator;

    const v4, 0x3727c5ac    # 1.0E-5f

    invoke-static {v3, v2, v4}, Lcom/senseonics/view/InkPageIndicator;->access$1600(Lcom/senseonics/view/InkPageIndicator;IF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 772
    :cond_0
    iget-object p1, p0, Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator$3;->this$1:Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator;

    iget-object p1, p1, Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator;->this$0:Lcom/senseonics/view/InkPageIndicator;

    iget v0, p0, Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator$3;->val$initialX1:F

    invoke-static {p1, v0}, Lcom/senseonics/view/InkPageIndicator;->access$1202(Lcom/senseonics/view/InkPageIndicator;F)F

    .line 773
    iget-object p1, p0, Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator$3;->this$1:Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator;

    iget-object p1, p1, Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator;->this$0:Lcom/senseonics/view/InkPageIndicator;

    iget v0, p0, Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator$3;->val$initialX2:F

    invoke-static {p1, v0}, Lcom/senseonics/view/InkPageIndicator;->access$1302(Lcom/senseonics/view/InkPageIndicator;F)F

    .line 774
    iget-object p1, p0, Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator$3;->this$1:Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator;

    iget-object p1, p1, Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator;->this$0:Lcom/senseonics/view/InkPageIndicator;

    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method
