.class Lcom/senseonics/graph/GraphView$7;
.super Ljava/lang/Object;
.source "GraphView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/graph/GraphView;->createEventsPopUp(FFLcom/jjoe64/graphview/Graph$EventGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private firstAppear:Z

.field final synthetic this$0:Lcom/senseonics/graph/GraphView;

.field final synthetic val$events:Ljava/util/ArrayList;

.field final synthetic val$listView:Landroid/widget/ListView;

.field final synthetic val$rect:Landroid/graphics/Rect;

.field final synthetic val$x:F

.field final synthetic val$y:F


# direct methods
.method constructor <init>(Lcom/senseonics/graph/GraphView;Ljava/util/ArrayList;FFLandroid/widget/ListView;Landroid/graphics/Rect;)V
    .locals 0

    .line 465
    iput-object p1, p0, Lcom/senseonics/graph/GraphView$7;->this$0:Lcom/senseonics/graph/GraphView;

    iput-object p2, p0, Lcom/senseonics/graph/GraphView$7;->val$events:Ljava/util/ArrayList;

    iput p3, p0, Lcom/senseonics/graph/GraphView$7;->val$x:F

    iput p4, p0, Lcom/senseonics/graph/GraphView$7;->val$y:F

    iput-object p5, p0, Lcom/senseonics/graph/GraphView$7;->val$listView:Landroid/widget/ListView;

    iput-object p6, p0, Lcom/senseonics/graph/GraphView$7;->val$rect:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 467
    iput-boolean p1, p0, Lcom/senseonics/graph/GraphView$7;->firstAppear:Z

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 15

    .line 472
    iget-boolean v0, p0, Lcom/senseonics/graph/GraphView$7;->firstAppear:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 473
    iput-boolean v0, p0, Lcom/senseonics/graph/GraphView$7;->firstAppear:Z

    .line 474
    iget-object v1, p0, Lcom/senseonics/graph/GraphView$7;->this$0:Lcom/senseonics/graph/GraphView;

    invoke-static {v1}, Lcom/senseonics/graph/GraphView;->access$400(Lcom/senseonics/graph/GraphView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v1

    mul-int/lit8 v2, v1, 0x2

    const/4 v3, 0x3

    .line 477
    div-int/2addr v2, v3

    .line 479
    iget-object v4, p0, Lcom/senseonics/graph/GraphView$7;->val$events:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    mul-int v3, v3, v1

    .line 485
    iget-object v4, p0, Lcom/senseonics/graph/GraphView$7;->this$0:Lcom/senseonics/graph/GraphView;

    invoke-static {v4}, Lcom/senseonics/graph/GraphView;->access$500(Lcom/senseonics/graph/GraphView;)I

    move-result v4

    const/16 v5, 0x190

    if-le v4, v5, :cond_1

    mul-int/lit8 v1, v1, 0x6

    goto :goto_1

    :cond_1
    mul-int/lit8 v1, v1, 0x5

    :goto_1
    add-int/lit8 v4, v3, 0x0

    add-int/2addr v4, v2

    add-int/lit8 v5, v1, 0x0

    .line 494
    div-int/lit8 v6, v5, 0x8

    .line 495
    iget v7, p0, Lcom/senseonics/graph/GraphView$7;->val$x:F

    float-to-int v7, v7

    sub-int/2addr v7, v6

    .line 496
    iget v8, p0, Lcom/senseonics/graph/GraphView$7;->val$x:F

    int-to-float v9, v5

    add-float/2addr v8, v9

    float-to-int v8, v8

    sub-int/2addr v8, v6

    .line 498
    iget-object v9, p0, Lcom/senseonics/graph/GraphView$7;->this$0:Lcom/senseonics/graph/GraphView;

    invoke-static {v9}, Lcom/senseonics/graph/GraphView;->access$500(Lcom/senseonics/graph/GraphView;)I

    move-result v9

    if-le v8, v9, :cond_2

    .line 499
    iget-object v9, p0, Lcom/senseonics/graph/GraphView$7;->this$0:Lcom/senseonics/graph/GraphView;

    .line 500
    invoke-static {v9}, Lcom/senseonics/graph/GraphView;->access$500(Lcom/senseonics/graph/GraphView;)I

    move-result v9

    sub-int/2addr v8, v9

    sub-int/2addr v7, v8

    add-int v8, v7, v5

    int-to-float v8, v8

    .line 503
    iget v9, p0, Lcom/senseonics/graph/GraphView$7;->val$x:F

    div-int/lit8 v10, v2, 0x2

    int-to-float v10, v10

    add-float/2addr v9, v10

    int-to-float v10, v6

    add-float/2addr v9, v10

    cmpg-float v8, v8, v9

    if-gez v8, :cond_2

    add-int/2addr v7, v6

    .line 510
    :cond_2
    iget v6, p0, Lcom/senseonics/graph/GraphView$7;->val$y:F

    int-to-float v8, v4

    sub-float/2addr v6, v8

    const/4 v8, 0x0

    cmpg-float v6, v6, v8

    if-gtz v6, :cond_3

    .line 511
    iget v6, p0, Lcom/senseonics/graph/GraphView$7;->val$y:F

    float-to-int v6, v6

    add-int/lit8 v8, v2, 0x0

    const v9, 0x7f080132

    const v10, 0x7f080131

    const v11, 0x7f080133

    move v9, v2

    const/4 v12, 0x0

    const v13, 0x7f080132

    goto :goto_2

    .line 519
    :cond_3
    iget v6, p0, Lcom/senseonics/graph/GraphView$7;->val$y:F

    float-to-int v6, v6

    sub-int/2addr v6, v4

    sub-int v8, v4, v2

    const v9, 0x7f08012f

    const v10, 0x7f080130

    const v11, 0x7f08012e

    move v12, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const v13, 0x7f08012f

    .line 528
    :goto_2
    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v14, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 530
    iput v7, v14, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 531
    iput v6, v14, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 532
    iget-object v6, p0, Lcom/senseonics/graph/GraphView$7;->this$0:Lcom/senseonics/graph/GraphView;

    invoke-static {v6}, Lcom/senseonics/graph/GraphView;->access$500(Lcom/senseonics/graph/GraphView;)I

    move-result v6

    sub-int/2addr v6, v7

    sub-int/2addr v6, v5

    iput v6, v14, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 534
    iget-object v6, p0, Lcom/senseonics/graph/GraphView$7;->this$0:Lcom/senseonics/graph/GraphView;

    invoke-static {v6}, Lcom/senseonics/graph/GraphView;->access$400(Lcom/senseonics/graph/GraphView;)Landroid/widget/RelativeLayout;

    move-result-object v6

    invoke-virtual {v6, v14}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 535
    iget-object v6, p0, Lcom/senseonics/graph/GraphView$7;->this$0:Lcom/senseonics/graph/GraphView;

    invoke-static {v6}, Lcom/senseonics/graph/GraphView;->access$400(Lcom/senseonics/graph/GraphView;)Landroid/widget/RelativeLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 538
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 540
    iput v0, v6, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 541
    iput v8, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 542
    iget-object v1, p0, Lcom/senseonics/graph/GraphView$7;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v1, v6}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 545
    iget-object v1, p0, Lcom/senseonics/graph/GraphView$7;->this$0:Lcom/senseonics/graph/GraphView;

    invoke-static {v1}, Lcom/senseonics/graph/GraphView;->access$400(Lcom/senseonics/graph/GraphView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const v3, 0x7f09006f

    .line 546
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 548
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    sub-int/2addr v4, v2

    invoke-direct {v3, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 550
    iput v9, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 551
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 552
    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 555
    new-instance v1, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/senseonics/graph/GraphView$7;->this$0:Lcom/senseonics/graph/GraphView;

    invoke-static {v3}, Lcom/senseonics/graph/GraphView;->access$600(Lcom/senseonics/graph/GraphView;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 556
    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 557
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 558
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 560
    iput v12, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 561
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 562
    iget-object v3, p0, Lcom/senseonics/graph/GraphView$7;->this$0:Lcom/senseonics/graph/GraphView;

    invoke-static {v3}, Lcom/senseonics/graph/GraphView;->access$400(Lcom/senseonics/graph/GraphView;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 565
    new-instance v1, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/senseonics/graph/GraphView$7;->this$0:Lcom/senseonics/graph/GraphView;

    invoke-static {v3}, Lcom/senseonics/graph/GraphView;->access$600(Lcom/senseonics/graph/GraphView;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 566
    invoke-virtual {v1, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 567
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 569
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 571
    iget v4, p0, Lcom/senseonics/graph/GraphView$7;->val$x:F

    iget-object v5, p0, Lcom/senseonics/graph/GraphView$7;->val$rect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    int-to-float v5, v7

    sub-float/2addr v4, v5

    float-to-int v4, v4

    .line 572
    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v4, v2

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 574
    iput v12, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 575
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 576
    iget-object v2, p0, Lcom/senseonics/graph/GraphView$7;->this$0:Lcom/senseonics/graph/GraphView;

    invoke-static {v2}, Lcom/senseonics/graph/GraphView;->access$400(Lcom/senseonics/graph/GraphView;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 578
    iget-object v1, p0, Lcom/senseonics/graph/GraphView$7;->this$0:Lcom/senseonics/graph/GraphView;

    invoke-static {v1}, Lcom/senseonics/graph/GraphView;->access$700(Lcom/senseonics/graph/GraphView;)Lcom/senseonics/graph/util/EventsListAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/senseonics/graph/GraphView$7;->val$events:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/senseonics/graph/util/EventsListAdapter;->setEvents(Ljava/util/ArrayList;)V

    .line 579
    iget-object v1, p0, Lcom/senseonics/graph/GraphView$7;->this$0:Lcom/senseonics/graph/GraphView;

    invoke-static {v1}, Lcom/senseonics/graph/GraphView;->access$700(Lcom/senseonics/graph/GraphView;)Lcom/senseonics/graph/util/EventsListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/senseonics/graph/util/EventsListAdapter;->notifyDataSetChanged()V

    .line 581
    iget-object v1, p0, Lcom/senseonics/graph/GraphView$7;->this$0:Lcom/senseonics/graph/GraphView;

    invoke-static {v1}, Lcom/senseonics/graph/GraphView;->access$400(Lcom/senseonics/graph/GraphView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/4 v0, 0x1

    .line 582
    sput-boolean v0, Lcom/senseonics/graph/util/GraphUtils;->listPopUpIsVisible:Z

    .line 584
    iget-object v0, p0, Lcom/senseonics/graph/GraphView$7;->val$listView:Landroid/widget/ListView;

    new-instance v1, Lcom/senseonics/graph/GraphView$7$1;

    invoke-direct {v1, p0}, Lcom/senseonics/graph/GraphView$7$1;-><init>(Lcom/senseonics/graph/GraphView$7;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_4
    return-void
.end method
