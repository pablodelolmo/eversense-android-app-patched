.class Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/simonvt/numberpicker/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccessibilityNodeProviderImpl"
.end annotation


# static fields
.field private static final UNDEFINED:I = -0x80000000

.field private static final VIRTUAL_VIEW_ID_DECREMENT:I = 0x3

.field private static final VIRTUAL_VIEW_ID_INCREMENT:I = 0x1

.field private static final VIRTUAL_VIEW_ID_INPUT:I = 0x2


# instance fields
.field private mAccessibilityFocusedView:I

.field private final mTempArray:[I

.field private final mTempRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lnet/simonvt/numberpicker/NumberPicker;


# direct methods
.method constructor <init>(Lnet/simonvt/numberpicker/NumberPicker;)V
    .locals 0

    .line 2233
    iput-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    .line 2242
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    const/4 p1, 0x2

    .line 2244
    new-array p1, p1, [I

    iput-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->mTempArray:[I

    const/high16 p1, -0x80000000

    .line 2246
    iput p1, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    return-void
.end method

.method private createAccessibilityNodeInfoForNumberPicker(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 0

    .line 2571
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    .line 2572
    const-class p2, Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2573
    iget-object p2, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {p2}, Lnet/simonvt/numberpicker/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 2574
    iget-object p2, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;)V

    .line 2576
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->hasVirtualDecrementButton()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2577
    iget-object p2, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    const/4 p3, 0x3

    invoke-virtual {p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 2579
    :cond_0
    iget-object p2, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    const/4 p3, 0x2

    invoke-virtual {p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 2580
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->hasVirtualIncrementButton()Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_1

    .line 2581
    iget-object p2, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 2584
    :cond_1
    iget-object p2, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {p2}, Lnet/simonvt/numberpicker/NumberPicker;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 2585
    iget-object p2, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {p2}, Lnet/simonvt/numberpicker/NumberPicker;->isEnabled()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 2586
    invoke-virtual {p1, p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 2607
    iget p2, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    const/4 p3, -0x1

    if-eq p2, p3, :cond_2

    const/16 p2, 0x40

    .line 2608
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2610
    :cond_2
    iget p2, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne p2, p3, :cond_3

    const/16 p2, 0x80

    .line 2611
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2613
    :cond_3
    iget-object p2, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {p2}, Lnet/simonvt/numberpicker/NumberPicker;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 2614
    iget-object p2, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {p2}, Lnet/simonvt/numberpicker/NumberPicker;->getWrapSelectorWheel()Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {p2}, Lnet/simonvt/numberpicker/NumberPicker;->getValue()I

    move-result p2

    iget-object p3, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {p3}, Lnet/simonvt/numberpicker/NumberPicker;->getMaxValue()I

    move-result p3

    if-ge p2, p3, :cond_5

    :cond_4
    const/16 p2, 0x1000

    .line 2615
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2617
    :cond_5
    iget-object p2, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {p2}, Lnet/simonvt/numberpicker/NumberPicker;->getWrapSelectorWheel()Z

    move-result p2

    if-nez p2, :cond_6

    iget-object p2, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {p2}, Lnet/simonvt/numberpicker/NumberPicker;->getValue()I

    move-result p2

    iget-object p3, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {p3}, Lnet/simonvt/numberpicker/NumberPicker;->getMinValue()I

    move-result p3

    if-le p2, p3, :cond_7

    :cond_6
    const/16 p2, 0x2000

    .line 2618
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_7
    return-object p1
.end method

.method private createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 2

    .line 2537
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 2538
    const-class v1, Landroid/widget/Button;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2539
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v1}, Lnet/simonvt/numberpicker/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 2540
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v0, v1, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 2541
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 2542
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x1

    .line 2543
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 2544
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 2545
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v1}, Lnet/simonvt/numberpicker/NumberPicker;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 2546
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    .line 2547
    invoke-virtual {v1, p3, p4, p5, p6}, Landroid/graphics/Rect;->set(IIII)V

    .line 2549
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 2551
    iget-object p3, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->mTempArray:[I

    .line 2552
    iget-object p4, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {p4, p3}, Lnet/simonvt/numberpicker/NumberPicker;->getLocationOnScreen([I)V

    const/4 p4, 0x0

    .line 2553
    aget p4, p3, p4

    aget p2, p3, p2

    invoke-virtual {v1, p4, p2}, Landroid/graphics/Rect;->offset(II)V

    .line 2554
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 2556
    iget p2, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq p2, p1, :cond_0

    const/16 p2, 0x40

    .line 2557
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2559
    :cond_0
    iget p2, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne p2, p1, :cond_1

    const/16 p1, 0x80

    .line 2560
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2562
    :cond_1
    iget-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {p1}, Lnet/simonvt/numberpicker/NumberPicker;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0x10

    .line 2563
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_2
    return-object v0
.end method

.method private createAccessibiltyNodeInfoForInputText()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 3

    .line 2524
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v0}, Lnet/simonvt/numberpicker/NumberPicker;->access$100(Lnet/simonvt/numberpicker/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 2525
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 2526
    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v1, v2, :cond_0

    const/16 v1, 0x40

    .line 2527
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2529
    :cond_0
    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v1, v2, :cond_1

    const/16 v1, 0x80

    .line 2530
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_1
    return-object v0
.end method

.method private findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_0

    .line 2493
    :pswitch_0
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object p2

    .line 2494
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2495
    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    .line 2496
    invoke-virtual {p0, p1}, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    .line 2500
    :pswitch_1
    iget-object p2, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {p2}, Lnet/simonvt/numberpicker/NumberPicker;->access$100(Lnet/simonvt/numberpicker/NumberPicker;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    .line 2501
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 2502
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2503
    invoke-virtual {p0, v1}, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 2506
    :cond_1
    iget-object p2, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {p2}, Lnet/simonvt/numberpicker/NumberPicker;->access$100(Lnet/simonvt/numberpicker/NumberPicker;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    .line 2507
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2508
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2509
    invoke-virtual {p0, v1}, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 2514
    :pswitch_2
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object p2

    .line 2515
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2516
    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 2517
    invoke-virtual {p0, p1}, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void

    :cond_3
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getVirtualDecrementButtonText()Ljava/lang/String;
    .locals 3

    .line 2634
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v0}, Lnet/simonvt/numberpicker/NumberPicker;->access$2200(Lnet/simonvt/numberpicker/NumberPicker;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 2635
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v1}, Lnet/simonvt/numberpicker/NumberPicker;->access$2300(Lnet/simonvt/numberpicker/NumberPicker;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2636
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v1, v0}, Lnet/simonvt/numberpicker/NumberPicker;->access$2400(Lnet/simonvt/numberpicker/NumberPicker;I)I

    move-result v0

    .line 2638
    :cond_0
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v1}, Lnet/simonvt/numberpicker/NumberPicker;->access$2500(Lnet/simonvt/numberpicker/NumberPicker;)I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 2639
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v1}, Lnet/simonvt/numberpicker/NumberPicker;->access$1000(Lnet/simonvt/numberpicker/NumberPicker;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v1, v0}, Lnet/simonvt/numberpicker/NumberPicker;->access$2600(Lnet/simonvt/numberpicker/NumberPicker;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    .line 2640
    invoke-static {v1}, Lnet/simonvt/numberpicker/NumberPicker;->access$1000(Lnet/simonvt/numberpicker/NumberPicker;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v2}, Lnet/simonvt/numberpicker/NumberPicker;->access$2500(Lnet/simonvt/numberpicker/NumberPicker;)I

    move-result v2

    sub-int/2addr v0, v2

    aget-object v0, v1, v0

    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private getVirtualIncrementButtonText()Ljava/lang/String;
    .locals 3

    .line 2646
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v0}, Lnet/simonvt/numberpicker/NumberPicker;->access$2200(Lnet/simonvt/numberpicker/NumberPicker;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 2647
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v1}, Lnet/simonvt/numberpicker/NumberPicker;->access$2300(Lnet/simonvt/numberpicker/NumberPicker;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2648
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v1, v0}, Lnet/simonvt/numberpicker/NumberPicker;->access$2400(Lnet/simonvt/numberpicker/NumberPicker;I)I

    move-result v0

    .line 2650
    :cond_0
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v1}, Lnet/simonvt/numberpicker/NumberPicker;->access$1200(Lnet/simonvt/numberpicker/NumberPicker;)I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 2651
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v1}, Lnet/simonvt/numberpicker/NumberPicker;->access$1000(Lnet/simonvt/numberpicker/NumberPicker;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v1, v0}, Lnet/simonvt/numberpicker/NumberPicker;->access$2600(Lnet/simonvt/numberpicker/NumberPicker;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    .line 2652
    invoke-static {v1}, Lnet/simonvt/numberpicker/NumberPicker;->access$1000(Lnet/simonvt/numberpicker/NumberPicker;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v2}, Lnet/simonvt/numberpicker/NumberPicker;->access$2500(Lnet/simonvt/numberpicker/NumberPicker;)I

    move-result v2

    sub-int/2addr v0, v2

    aget-object v0, v1, v0

    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private hasVirtualDecrementButton()Z
    .locals 2

    .line 2626
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v0}, Lnet/simonvt/numberpicker/NumberPicker;->getWrapSelectorWheel()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v0}, Lnet/simonvt/numberpicker/NumberPicker;->getValue()I

    move-result v0

    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v1}, Lnet/simonvt/numberpicker/NumberPicker;->getMinValue()I

    move-result v1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private hasVirtualIncrementButton()Z
    .locals 2

    .line 2630
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v0}, Lnet/simonvt/numberpicker/NumberPicker;->getWrapSelectorWheel()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v0}, Lnet/simonvt/numberpicker/NumberPicker;->getValue()I

    move-result v0

    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v1}, Lnet/simonvt/numberpicker/NumberPicker;->getMaxValue()I

    move-result v1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V
    .locals 2

    .line 2478
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v0}, Lnet/simonvt/numberpicker/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2479
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p2

    .line 2480
    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2481
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v0}, Lnet/simonvt/numberpicker/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 2482
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2483
    iget-object p3, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {p3}, Lnet/simonvt/numberpicker/NumberPicker;->isEnabled()Z

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 2484
    iget-object p3, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {p2, p3, p1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    .line 2485
    iget-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    iget-object p3, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {p1, p3, p2}, Lnet/simonvt/numberpicker/NumberPicker;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    :cond_0
    return-void
.end method

.method private sendAccessibilityEventForVirtualText(I)V
    .locals 2

    .line 2467
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v0}, Lnet/simonvt/numberpicker/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2468
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    .line 2469
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v0}, Lnet/simonvt/numberpicker/NumberPicker;->access$100(Lnet/simonvt/numberpicker/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2470
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v0}, Lnet/simonvt/numberpicker/NumberPicker;->access$100(Lnet/simonvt/numberpicker/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2471
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    .line 2472
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v0, v1, p1}, Lnet/simonvt/numberpicker/NumberPicker;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 7

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 2267
    invoke-super {p0, p1}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    :pswitch_0
    const/4 v1, 0x3

    .line 2256
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {p1}, Lnet/simonvt/numberpicker/NumberPicker;->getScrollX()I

    move-result v3

    iget-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {p1}, Lnet/simonvt/numberpicker/NumberPicker;->getScrollY()I

    move-result v4

    iget-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    .line 2257
    invoke-virtual {p1}, Lnet/simonvt/numberpicker/NumberPicker;->getScrollX()I

    move-result p1

    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v0}, Lnet/simonvt/numberpicker/NumberPicker;->getRight()I

    move-result v0

    iget-object v5, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v5}, Lnet/simonvt/numberpicker/NumberPicker;->getLeft()I

    move-result v5

    sub-int/2addr v0, v5

    add-int v5, p1, v0

    iget-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    .line 2258
    invoke-static {p1}, Lnet/simonvt/numberpicker/NumberPicker;->access$1700(Lnet/simonvt/numberpicker/NumberPicker;)I

    move-result p1

    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v0}, Lnet/simonvt/numberpicker/NumberPicker;->access$2100(Lnet/simonvt/numberpicker/NumberPicker;)I

    move-result v0

    add-int v6, p1, v0

    move-object v0, p0

    .line 2255
    invoke-direct/range {v0 .. v6}, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    .line 2260
    :pswitch_1
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibiltyNodeInfoForInputText()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    :pswitch_2
    const/4 v1, 0x1

    .line 2263
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {p1}, Lnet/simonvt/numberpicker/NumberPicker;->getScrollX()I

    move-result v3

    iget-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    .line 2264
    invoke-static {p1}, Lnet/simonvt/numberpicker/NumberPicker;->access$1500(Lnet/simonvt/numberpicker/NumberPicker;)I

    move-result p1

    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v0}, Lnet/simonvt/numberpicker/NumberPicker;->access$2100(Lnet/simonvt/numberpicker/NumberPicker;)I

    move-result v0

    sub-int v4, p1, v0

    iget-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    .line 2265
    invoke-virtual {p1}, Lnet/simonvt/numberpicker/NumberPicker;->getScrollX()I

    move-result p1

    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v0}, Lnet/simonvt/numberpicker/NumberPicker;->getRight()I

    move-result v0

    iget-object v5, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v5}, Lnet/simonvt/numberpicker/NumberPicker;->getLeft()I

    move-result v5

    sub-int/2addr v0, v5

    add-int v5, p1, v0

    iget-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {p1}, Lnet/simonvt/numberpicker/NumberPicker;->getScrollY()I

    move-result p1

    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v0}, Lnet/simonvt/numberpicker/NumberPicker;->getBottom()I

    move-result v0

    iget-object v6, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v6}, Lnet/simonvt/numberpicker/NumberPicker;->getTop()I

    move-result v6

    sub-int/2addr v0, v6

    add-int v6, p1, v0

    move-object v0, p0

    .line 2262
    invoke-direct/range {v0 .. v6}, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    .line 2252
    :cond_0
    iget-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {p1}, Lnet/simonvt/numberpicker/NumberPicker;->getScrollX()I

    move-result p1

    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v0}, Lnet/simonvt/numberpicker/NumberPicker;->getScrollY()I

    move-result v0

    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    .line 2253
    invoke-virtual {v1}, Lnet/simonvt/numberpicker/NumberPicker;->getScrollX()I

    move-result v1

    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v2}, Lnet/simonvt/numberpicker/NumberPicker;->getRight()I

    move-result v2

    iget-object v3, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v3}, Lnet/simonvt/numberpicker/NumberPicker;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v2}, Lnet/simonvt/numberpicker/NumberPicker;->getScrollY()I

    move-result v2

    iget-object v3, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v3}, Lnet/simonvt/numberpicker/NumberPicker;->getBottom()I

    move-result v3

    iget-object v4, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v4}, Lnet/simonvt/numberpicker/NumberPicker;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 2252
    invoke-direct {p0, p1, v0, v1, v2}, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForNumberPicker(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .line 2273
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2274
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 2276
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 2277
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, -0x1

    if-eq p2, v2, :cond_1

    packed-switch p2, :pswitch_data_0

    .line 2296
    invoke-super {p0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeProvider;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 2291
    :pswitch_0
    invoke-direct {p0, v0, p2, v1}, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    return-object v1

    :cond_1
    const/4 p1, 0x3

    .line 2280
    invoke-direct {p0, v0, p1, v1}, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    const/4 p1, 0x2

    .line 2282
    invoke-direct {p0, v0, p1, v1}, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    const/4 p1, 0x1

    .line 2284
    invoke-direct {p0, v0, p1, v1}, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 8

    const/4 v0, -0x1

    const/high16 v1, -0x80000000

    const/16 v2, 0x80

    const/16 v3, 0x40

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq p1, v0, :cond_15

    const v0, 0x8000

    const/high16 v6, 0x10000

    const/16 v7, 0x10

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    if-eq p2, v7, :cond_4

    if-eq p2, v3, :cond_2

    if-eq p2, v2, :cond_0

    return v5

    .line 2432
    :cond_0
    iget p2, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne p2, p1, :cond_1

    .line 2433
    iput v1, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2434
    invoke-virtual {p0, p1, v6}, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2436
    iget-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    iget-object p2, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {p2}, Lnet/simonvt/numberpicker/NumberPicker;->getRight()I

    move-result p2

    iget-object p3, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {p3}, Lnet/simonvt/numberpicker/NumberPicker;->access$1700(Lnet/simonvt/numberpicker/NumberPicker;)I

    move-result p3

    invoke-virtual {p1, v5, v5, p2, p3}, Lnet/simonvt/numberpicker/NumberPicker;->invalidate(IIII)V

    return v4

    :cond_1
    return v5

    .line 2423
    :cond_2
    iget p2, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq p2, p1, :cond_3

    .line 2424
    iput p1, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2425
    invoke-virtual {p0, p1, v0}, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2427
    iget-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    iget-object p2, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {p2}, Lnet/simonvt/numberpicker/NumberPicker;->getRight()I

    move-result p2

    iget-object p3, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {p3}, Lnet/simonvt/numberpicker/NumberPicker;->access$1700(Lnet/simonvt/numberpicker/NumberPicker;)I

    move-result p3

    invoke-virtual {p1, v5, v5, p2, p3}, Lnet/simonvt/numberpicker/NumberPicker;->invalidate(IIII)V

    return v4

    :cond_3
    return v5

    .line 2414
    :cond_4
    iget-object p2, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {p2}, Lnet/simonvt/numberpicker/NumberPicker;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_6

    if-ne p1, v4, :cond_5

    const/4 v5, 0x1

    .line 2416
    :cond_5
    iget-object p2, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {p2, v5}, Lnet/simonvt/numberpicker/NumberPicker;->access$200(Lnet/simonvt/numberpicker/NumberPicker;Z)V

    .line 2417
    invoke-virtual {p0, p1, v4}, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    return v4

    :cond_6
    return v5

    :pswitch_1
    if-eq p2, v7, :cond_d

    if-eq p2, v3, :cond_b

    if-eq p2, v2, :cond_9

    packed-switch p2, :pswitch_data_1

    .line 2377
    iget-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {p1}, Lnet/simonvt/numberpicker/NumberPicker;->access$100(Lnet/simonvt/numberpicker/NumberPicker;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroid/widget/EditText;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p1

    return p1

    .line 2345
    :pswitch_2
    iget-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {p1}, Lnet/simonvt/numberpicker/NumberPicker;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {p1}, Lnet/simonvt/numberpicker/NumberPicker;->access$100(Lnet/simonvt/numberpicker/NumberPicker;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 2346
    iget-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {p1}, Lnet/simonvt/numberpicker/NumberPicker;->access$100(Lnet/simonvt/numberpicker/NumberPicker;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    return v4

    :cond_7
    return v5

    .line 2340
    :pswitch_3
    iget-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {p1}, Lnet/simonvt/numberpicker/NumberPicker;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {p1}, Lnet/simonvt/numberpicker/NumberPicker;->access$100(Lnet/simonvt/numberpicker/NumberPicker;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->isFocused()Z

    move-result p1

    if-nez p1, :cond_8

    .line 2341
    iget-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {p1}, Lnet/simonvt/numberpicker/NumberPicker;->access$100(Lnet/simonvt/numberpicker/NumberPicker;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    move-result p1

    return p1

    :cond_8
    return v5

    .line 2368
    :cond_9
    iget p2, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne p2, p1, :cond_a

    .line 2369
    iput v1, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2370
    invoke-virtual {p0, p1, v6}, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2372
    iget-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {p1}, Lnet/simonvt/numberpicker/NumberPicker;->access$100(Lnet/simonvt/numberpicker/NumberPicker;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->invalidate()V

    return v4

    :cond_a
    return v5

    .line 2359
    :cond_b
    iget p2, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq p2, p1, :cond_c

    .line 2360
    iput p1, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2361
    invoke-virtual {p0, p1, v0}, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2363
    iget-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {p1}, Lnet/simonvt/numberpicker/NumberPicker;->access$100(Lnet/simonvt/numberpicker/NumberPicker;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->invalidate()V

    return v4

    :cond_c
    return v5

    .line 2352
    :cond_d
    iget-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {p1}, Lnet/simonvt/numberpicker/NumberPicker;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 2353
    iget-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {p1}, Lnet/simonvt/numberpicker/NumberPicker;->access$1900(Lnet/simonvt/numberpicker/NumberPicker;)V

    return v4

    :cond_e
    return v5

    :pswitch_4
    if-eq p2, v7, :cond_13

    if-eq p2, v3, :cond_11

    if-eq p2, v2, :cond_f

    return v5

    .line 2401
    :cond_f
    iget p2, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne p2, p1, :cond_10

    .line 2402
    iput v1, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2403
    invoke-virtual {p0, p1, v6}, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2405
    iget-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    iget-object p2, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {p2}, Lnet/simonvt/numberpicker/NumberPicker;->access$1500(Lnet/simonvt/numberpicker/NumberPicker;)I

    move-result p2

    iget-object p3, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {p3}, Lnet/simonvt/numberpicker/NumberPicker;->getRight()I

    move-result p3

    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v0}, Lnet/simonvt/numberpicker/NumberPicker;->getBottom()I

    move-result v0

    invoke-virtual {p1, v5, p2, p3, v0}, Lnet/simonvt/numberpicker/NumberPicker;->invalidate(IIII)V

    return v4

    :cond_10
    return v5

    .line 2392
    :cond_11
    iget p2, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq p2, p1, :cond_12

    .line 2393
    iput p1, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2394
    invoke-virtual {p0, p1, v0}, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2396
    iget-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    iget-object p2, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {p2}, Lnet/simonvt/numberpicker/NumberPicker;->access$1500(Lnet/simonvt/numberpicker/NumberPicker;)I

    move-result p2

    iget-object p3, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {p3}, Lnet/simonvt/numberpicker/NumberPicker;->getRight()I

    move-result p3

    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v0}, Lnet/simonvt/numberpicker/NumberPicker;->getBottom()I

    move-result v0

    invoke-virtual {p1, v5, p2, p3, v0}, Lnet/simonvt/numberpicker/NumberPicker;->invalidate(IIII)V

    return v4

    :cond_12
    return v5

    .line 2384
    :cond_13
    iget-object p2, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {p2}, Lnet/simonvt/numberpicker/NumberPicker;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_14

    .line 2385
    iget-object p2, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {p2, v4}, Lnet/simonvt/numberpicker/NumberPicker;->access$200(Lnet/simonvt/numberpicker/NumberPicker;Z)V

    .line 2386
    invoke-virtual {p0, p1, v4}, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    return v4

    :cond_14
    return v5

    :cond_15
    const/4 v0, 0x0

    if-eq p2, v3, :cond_1e

    if-eq p2, v2, :cond_1c

    const/16 v0, 0x1000

    if-eq p2, v0, :cond_19

    const/16 v0, 0x2000

    if-eq p2, v0, :cond_16

    .line 2443
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    move-result p1

    return p1

    .line 2329
    :cond_16
    iget-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {p1}, Lnet/simonvt/numberpicker/NumberPicker;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_18

    iget-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    .line 2330
    invoke-virtual {p1}, Lnet/simonvt/numberpicker/NumberPicker;->getWrapSelectorWheel()Z

    move-result p1

    if-nez p1, :cond_17

    iget-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {p1}, Lnet/simonvt/numberpicker/NumberPicker;->getValue()I

    move-result p1

    iget-object p2, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {p2}, Lnet/simonvt/numberpicker/NumberPicker;->getMinValue()I

    move-result p2

    if-le p1, p2, :cond_18

    .line 2331
    :cond_17
    iget-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {p1, v5}, Lnet/simonvt/numberpicker/NumberPicker;->access$200(Lnet/simonvt/numberpicker/NumberPicker;Z)V

    return v4

    :cond_18
    return v5

    .line 2322
    :cond_19
    iget-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {p1}, Lnet/simonvt/numberpicker/NumberPicker;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    .line 2323
    invoke-virtual {p1}, Lnet/simonvt/numberpicker/NumberPicker;->getWrapSelectorWheel()Z

    move-result p1

    if-nez p1, :cond_1a

    iget-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {p1}, Lnet/simonvt/numberpicker/NumberPicker;->getValue()I

    move-result p1

    iget-object p2, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {p2}, Lnet/simonvt/numberpicker/NumberPicker;->getMaxValue()I

    move-result p2

    if-ge p1, p2, :cond_1b

    .line 2324
    :cond_1a
    iget-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {p1, v4}, Lnet/simonvt/numberpicker/NumberPicker;->access$200(Lnet/simonvt/numberpicker/NumberPicker;Z)V

    return v4

    :cond_1b
    return v5

    .line 2313
    :cond_1c
    iget p2, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne p2, p1, :cond_1d

    .line 2314
    iput v1, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2316
    iget-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {p1, v2, v0}, Lnet/simonvt/numberpicker/NumberPicker;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    return v4

    :cond_1d
    return v5

    .line 2305
    :cond_1e
    iget p2, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq p2, p1, :cond_1f

    .line 2306
    iput p1, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2308
    iget-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {p1, v3, v0}, Lnet/simonvt/numberpicker/NumberPicker;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    return v4

    :cond_1f
    return v5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public sendAccessibilityEventForVirtualView(II)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2449
    :pswitch_0
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->hasVirtualDecrementButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2451
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object v0

    .line 2450
    invoke-direct {p0, p1, p2, v0}, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V

    goto :goto_0

    .line 2455
    :pswitch_1
    invoke-direct {p0, p2}, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualText(I)V

    goto :goto_0

    .line 2458
    :pswitch_2
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->hasVirtualIncrementButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2460
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object v0

    .line 2459
    invoke-direct {p0, p1, p2, v0}, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
