.class Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator$1;
.super Ljava/lang/Object;
.source "InkPageIndicator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

.field final synthetic val$this$0:Lcom/senseonics/view/InkPageIndicator;


# direct methods
.method constructor <init>(Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator;Lcom/senseonics/view/InkPageIndicator;)V
    .locals 0

    .line 729
    iput-object p1, p0, Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator$1;->this$1:Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator;

    iput-object p2, p0, Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator$1;->val$this$0:Lcom/senseonics/view/InkPageIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 733
    iget-object v0, p0, Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator$1;->this$1:Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator;

    iget-object v0, v0, Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator;->this$0:Lcom/senseonics/view/InkPageIndicator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/senseonics/view/InkPageIndicator;->access$1202(Lcom/senseonics/view/InkPageIndicator;F)F

    .line 734
    iget-object p1, p0, Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator$1;->this$1:Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator;

    iget-object p1, p1, Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator;->this$0:Lcom/senseonics/view/InkPageIndicator;

    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 736
    iget-object p1, p0, Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator$1;->this$1:Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator;

    iget-object p1, p1, Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator;->this$0:Lcom/senseonics/view/InkPageIndicator;

    invoke-static {p1}, Lcom/senseonics/view/InkPageIndicator;->access$1100(Lcom/senseonics/view/InkPageIndicator;)[Lcom/senseonics/view/InkPageIndicator$PendingRevealAnimator;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 737
    iget-object v3, p0, Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator$1;->this$1:Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator;

    iget-object v3, v3, Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator;->this$0:Lcom/senseonics/view/InkPageIndicator;

    invoke-static {v3}, Lcom/senseonics/view/InkPageIndicator;->access$1200(Lcom/senseonics/view/InkPageIndicator;)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/senseonics/view/InkPageIndicator$PendingRevealAnimator;->startIfNecessary(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
