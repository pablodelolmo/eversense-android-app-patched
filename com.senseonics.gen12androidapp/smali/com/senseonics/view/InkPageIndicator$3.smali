.class Lcom/senseonics/view/InkPageIndicator$3;
.super Ljava/lang/Object;
.source "InkPageIndicator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/view/InkPageIndicator;->createMoveSelectedAnimator(FIII)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/view/InkPageIndicator;


# direct methods
.method constructor <init>(Lcom/senseonics/view/InkPageIndicator;)V
    .locals 0

    .line 608
    iput-object p1, p0, Lcom/senseonics/view/InkPageIndicator$3;->this$0:Lcom/senseonics/view/InkPageIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 612
    iget-object v0, p0, Lcom/senseonics/view/InkPageIndicator$3;->this$0:Lcom/senseonics/view/InkPageIndicator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/senseonics/view/InkPageIndicator;->access$402(Lcom/senseonics/view/InkPageIndicator;F)F

    .line 613
    iget-object p1, p0, Lcom/senseonics/view/InkPageIndicator$3;->this$0:Lcom/senseonics/view/InkPageIndicator;

    invoke-static {p1}, Lcom/senseonics/view/InkPageIndicator;->access$500(Lcom/senseonics/view/InkPageIndicator;)Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/senseonics/view/InkPageIndicator$3;->this$0:Lcom/senseonics/view/InkPageIndicator;

    invoke-static {v0}, Lcom/senseonics/view/InkPageIndicator;->access$400(Lcom/senseonics/view/InkPageIndicator;)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator;->startIfNecessary(F)V

    .line 614
    iget-object p1, p0, Lcom/senseonics/view/InkPageIndicator$3;->this$0:Lcom/senseonics/view/InkPageIndicator;

    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method
