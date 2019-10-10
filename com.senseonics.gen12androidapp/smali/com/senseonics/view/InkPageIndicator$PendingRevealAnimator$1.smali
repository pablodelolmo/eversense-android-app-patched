.class Lcom/senseonics/view/InkPageIndicator$PendingRevealAnimator$1;
.super Ljava/lang/Object;
.source "InkPageIndicator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/view/InkPageIndicator$PendingRevealAnimator;-><init>(Lcom/senseonics/view/InkPageIndicator;ILcom/senseonics/view/InkPageIndicator$StartPredicate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/senseonics/view/InkPageIndicator$PendingRevealAnimator;

.field final synthetic val$this$0:Lcom/senseonics/view/InkPageIndicator;


# direct methods
.method constructor <init>(Lcom/senseonics/view/InkPageIndicator$PendingRevealAnimator;Lcom/senseonics/view/InkPageIndicator;)V
    .locals 0

    .line 800
    iput-object p1, p0, Lcom/senseonics/view/InkPageIndicator$PendingRevealAnimator$1;->this$1:Lcom/senseonics/view/InkPageIndicator$PendingRevealAnimator;

    iput-object p2, p0, Lcom/senseonics/view/InkPageIndicator$PendingRevealAnimator$1;->val$this$0:Lcom/senseonics/view/InkPageIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 804
    iget-object v0, p0, Lcom/senseonics/view/InkPageIndicator$PendingRevealAnimator$1;->this$1:Lcom/senseonics/view/InkPageIndicator$PendingRevealAnimator;

    iget-object v0, v0, Lcom/senseonics/view/InkPageIndicator$PendingRevealAnimator;->this$0:Lcom/senseonics/view/InkPageIndicator;

    iget-object v1, p0, Lcom/senseonics/view/InkPageIndicator$PendingRevealAnimator$1;->this$1:Lcom/senseonics/view/InkPageIndicator$PendingRevealAnimator;

    invoke-static {v1}, Lcom/senseonics/view/InkPageIndicator$PendingRevealAnimator;->access$1700(Lcom/senseonics/view/InkPageIndicator$PendingRevealAnimator;)I

    move-result v1

    .line 805
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 804
    invoke-static {v0, v1, p1}, Lcom/senseonics/view/InkPageIndicator;->access$1600(Lcom/senseonics/view/InkPageIndicator;IF)V

    return-void
.end method
