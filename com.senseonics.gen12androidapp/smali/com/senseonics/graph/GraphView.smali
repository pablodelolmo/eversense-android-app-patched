.class public Lcom/senseonics/graph/GraphView;
.super Landroid/widget/RelativeLayout;
.source "GraphView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/graph/GraphView$ScrollManager;,
        Lcom/senseonics/graph/GraphView$LineScrollManager;,
        Lcom/senseonics/graph/GraphView$SlideLeftAsyncTask;,
        Lcom/senseonics/graph/GraphView$SlideRightAsyncTask;,
        Lcom/senseonics/graph/GraphView$DAY_TYPE;
    }
.end annotation


# instance fields
.field private autoScrollIsOn:Z

.field private context:Landroid/content/Context;

.field private daysCount:I

.field private eventsListAdapter:Lcom/senseonics/graph/util/EventsListAdapter;

.field eventsManager:Lcom/jjoe64/graphview/LineGraphView$EventsManager;

.field private glucoseView:Lcom/jjoe64/graphview/Graph;

.field private graphPaddingTop:I

.field private height:I

.field private layoutInflater:Landroid/view/LayoutInflater;

.field private lineScrollManager:Lcom/senseonics/graph/GraphView$LineScrollManager;

.field private popUpListView:Landroid/widget/RelativeLayout;

.field private relativeLayout:Landroid/widget/RelativeLayout;

.field scaleManager:Lcom/jjoe64/graphview/Graph$ScaleManager;

.field private screenWidth:I

.field private scrollManager:Lcom/senseonics/graph/GraphView$ScrollManager;

.field private scrollViewParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private slideStepSize:I

.field private verticalLineHolder:Lcom/senseonics/graph/VerticalLineHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 127
    new-instance p1, Lcom/senseonics/graph/GraphView$1;

    invoke-direct {p1, p0}, Lcom/senseonics/graph/GraphView$1;-><init>(Lcom/senseonics/graph/GraphView;)V

    iput-object p1, p0, Lcom/senseonics/graph/GraphView;->lineScrollManager:Lcom/senseonics/graph/GraphView$LineScrollManager;

    .line 290
    new-instance p1, Lcom/senseonics/graph/GraphView$4;

    invoke-direct {p1, p0}, Lcom/senseonics/graph/GraphView$4;-><init>(Lcom/senseonics/graph/GraphView;)V

    iput-object p1, p0, Lcom/senseonics/graph/GraphView;->eventsManager:Lcom/jjoe64/graphview/LineGraphView$EventsManager;

    .line 325
    new-instance p1, Lcom/senseonics/graph/GraphView$5;

    invoke-direct {p1, p0}, Lcom/senseonics/graph/GraphView$5;-><init>(Lcom/senseonics/graph/GraphView;)V

    iput-object p1, p0, Lcom/senseonics/graph/GraphView;->scaleManager:Lcom/jjoe64/graphview/Graph$ScaleManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIIILjava/util/Calendar;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 127
    new-instance p2, Lcom/senseonics/graph/GraphView$1;

    invoke-direct {p2, p0}, Lcom/senseonics/graph/GraphView$1;-><init>(Lcom/senseonics/graph/GraphView;)V

    iput-object p2, p0, Lcom/senseonics/graph/GraphView;->lineScrollManager:Lcom/senseonics/graph/GraphView$LineScrollManager;

    .line 290
    new-instance p2, Lcom/senseonics/graph/GraphView$4;

    invoke-direct {p2, p0}, Lcom/senseonics/graph/GraphView$4;-><init>(Lcom/senseonics/graph/GraphView;)V

    iput-object p2, p0, Lcom/senseonics/graph/GraphView;->eventsManager:Lcom/jjoe64/graphview/LineGraphView$EventsManager;

    .line 325
    new-instance p2, Lcom/senseonics/graph/GraphView$5;

    invoke-direct {p2, p0}, Lcom/senseonics/graph/GraphView$5;-><init>(Lcom/senseonics/graph/GraphView;)V

    iput-object p2, p0, Lcom/senseonics/graph/GraphView;->scaleManager:Lcom/jjoe64/graphview/Graph$ScaleManager;

    .line 63
    iput-object p1, p0, Lcom/senseonics/graph/GraphView;->context:Landroid/content/Context;

    .line 64
    iput p3, p0, Lcom/senseonics/graph/GraphView;->screenWidth:I

    .line 65
    iput p4, p0, Lcom/senseonics/graph/GraphView;->height:I

    .line 66
    iput p5, p0, Lcom/senseonics/graph/GraphView;->daysCount:I

    .line 67
    div-int/lit8 p4, p4, 0xa

    iput p4, p0, Lcom/senseonics/graph/GraphView;->graphPaddingTop:I

    .line 69
    new-instance p2, Lcom/senseonics/graph/util/EventsListAdapter;

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p2, p1, p4}, Lcom/senseonics/graph/util/EventsListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object p2, p0, Lcom/senseonics/graph/GraphView;->eventsListAdapter:Lcom/senseonics/graph/util/EventsListAdapter;

    .line 72
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iput-object p2, p0, Lcom/senseonics/graph/GraphView;->layoutInflater:Landroid/view/LayoutInflater;

    .line 74
    invoke-static {p1, p3}, Lcom/senseonics/graph/util/GraphUtils;->loadBitmaps(Landroid/content/Context;I)V

    .line 76
    sget p1, Lcom/senseonics/util/Utils;->daySubviewWidth:F

    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    .line 77
    div-int/lit8 p3, p3, 0x3

    int-to-float p1, p3

    sput p1, Lcom/senseonics/util/Utils;->daySubviewWidth:F

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/senseonics/graph/GraphView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 127
    new-instance p1, Lcom/senseonics/graph/GraphView$1;

    invoke-direct {p1, p0}, Lcom/senseonics/graph/GraphView$1;-><init>(Lcom/senseonics/graph/GraphView;)V

    iput-object p1, p0, Lcom/senseonics/graph/GraphView;->lineScrollManager:Lcom/senseonics/graph/GraphView$LineScrollManager;

    .line 290
    new-instance p1, Lcom/senseonics/graph/GraphView$4;

    invoke-direct {p1, p0}, Lcom/senseonics/graph/GraphView$4;-><init>(Lcom/senseonics/graph/GraphView;)V

    iput-object p1, p0, Lcom/senseonics/graph/GraphView;->eventsManager:Lcom/jjoe64/graphview/LineGraphView$EventsManager;

    .line 325
    new-instance p1, Lcom/senseonics/graph/GraphView$5;

    invoke-direct {p1, p0}, Lcom/senseonics/graph/GraphView$5;-><init>(Lcom/senseonics/graph/GraphView;)V

    iput-object p1, p0, Lcom/senseonics/graph/GraphView;->scaleManager:Lcom/jjoe64/graphview/Graph$ScaleManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 83
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 127
    new-instance p1, Lcom/senseonics/graph/GraphView$1;

    invoke-direct {p1, p0}, Lcom/senseonics/graph/GraphView$1;-><init>(Lcom/senseonics/graph/GraphView;)V

    iput-object p1, p0, Lcom/senseonics/graph/GraphView;->lineScrollManager:Lcom/senseonics/graph/GraphView$LineScrollManager;

    .line 290
    new-instance p1, Lcom/senseonics/graph/GraphView$4;

    invoke-direct {p1, p0}, Lcom/senseonics/graph/GraphView$4;-><init>(Lcom/senseonics/graph/GraphView;)V

    iput-object p1, p0, Lcom/senseonics/graph/GraphView;->eventsManager:Lcom/jjoe64/graphview/LineGraphView$EventsManager;

    .line 325
    new-instance p1, Lcom/senseonics/graph/GraphView$5;

    invoke-direct {p1, p0}, Lcom/senseonics/graph/GraphView$5;-><init>(Lcom/senseonics/graph/GraphView;)V

    iput-object p1, p0, Lcom/senseonics/graph/GraphView;->scaleManager:Lcom/jjoe64/graphview/Graph$ScaleManager;

    return-void
.end method

.method static synthetic access$000(Lcom/senseonics/graph/GraphView;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/senseonics/graph/GraphView;->autoScrollIsOn:Z

    return p0
.end method

.method static synthetic access$002(Lcom/senseonics/graph/GraphView;Z)Z
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/senseonics/graph/GraphView;->autoScrollIsOn:Z

    return p1
.end method

.method static synthetic access$100(Lcom/senseonics/graph/GraphView;)Lcom/jjoe64/graphview/Graph;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/senseonics/graph/GraphView;->glucoseView:Lcom/jjoe64/graphview/Graph;

    return-object p0
.end method

.method static synthetic access$200(Lcom/senseonics/graph/GraphView;)Lcom/senseonics/graph/GraphView$ScrollManager;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/senseonics/graph/GraphView;->scrollManager:Lcom/senseonics/graph/GraphView$ScrollManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/senseonics/graph/GraphView;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/senseonics/graph/GraphView;->slideStepSize:I

    return p0
.end method

.method static synthetic access$400(Lcom/senseonics/graph/GraphView;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/senseonics/graph/GraphView;->popUpListView:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$500(Lcom/senseonics/graph/GraphView;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/senseonics/graph/GraphView;->screenWidth:I

    return p0
.end method

.method static synthetic access$600(Lcom/senseonics/graph/GraphView;)Landroid/content/Context;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/senseonics/graph/GraphView;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$700(Lcom/senseonics/graph/GraphView;)Lcom/senseonics/graph/util/EventsListAdapter;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/senseonics/graph/GraphView;->eventsListAdapter:Lcom/senseonics/graph/util/EventsListAdapter;

    return-object p0
.end method

.method private getDefaultViewPortStart()D
    .locals 6

    .line 273
    iget-object v0, p0, Lcom/senseonics/graph/GraphView;->glucoseView:Lcom/jjoe64/graphview/Graph;

    invoke-virtual {v0}, Lcom/jjoe64/graphview/Graph;->getMaxScroll()D

    move-result-wide v0

    .line 274
    sget-wide v2, Lcom/senseonics/graph/util/GraphUtils;->viewportSize:D

    const-wide v4, 0x3fb99999a0000000L    # 0.10000000149011612

    mul-double v2, v2, v4

    sub-double/2addr v0, v2

    .line 275
    sget-wide v2, Lcom/senseonics/graph/util/GraphUtils;->viewportSize:D

    sub-double/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public addGlucoseSubView(Ljava/util/List;Ljava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/senseonics/graph/util/Glucose;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/senseonics/events/EventPoint;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 335
    sget-object v1, Lcom/senseonics/util/Utils;->endDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    sget-object v3, Lcom/senseonics/util/Utils;->startDate:Ljava/util/Calendar;

    .line 336
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    sget-wide v3, Lcom/senseonics/graph/util/GraphUtils;->DAY:J

    div-long/2addr v1, v3

    long-to-int v1, v1

    .line 338
    sget-object v2, Lcom/senseonics/util/Utils;->startDate:Ljava/util/Calendar;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 339
    sget-object v4, Lcom/senseonics/util/Utils;->endDateFinished:Ljava/util/Calendar;

    invoke-virtual {v4, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 341
    sget v4, Lcom/senseonics/util/Utils;->daySubviewWidth:F

    float-to-int v4, v4

    mul-int v4, v4, v1

    if-eq v2, v3, :cond_0

    if-eqz v3, :cond_0

    mul-int/lit8 v3, v3, 0x64

    int-to-long v1, v3

    .line 344
    sget-wide v5, Lcom/senseonics/graph/util/GraphUtils;->DAY:J

    div-long/2addr v1, v5

    long-to-int v1, v1

    .line 345
    sget v2, Lcom/senseonics/util/Utils;->daySubviewWidth:F

    int-to-float v1, v1

    mul-float v2, v2, v1

    float-to-int v1, v2

    div-int/lit8 v1, v1, 0x64

    sub-int/2addr v4, v1

    :cond_0
    move v10, v4

    .line 349
    new-instance v1, Lcom/jjoe64/graphview/LineGraphView;

    invoke-virtual/range {p0 .. p0}, Lcom/senseonics/graph/GraphView;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, ""

    sget-object v8, Lcom/senseonics/util/Utils;->startDate:Ljava/util/Calendar;

    sget-object v9, Lcom/senseonics/util/Utils;->endDateFinished:Ljava/util/Calendar;

    iget v11, v0, Lcom/senseonics/graph/GraphView;->height:I

    iget v12, v0, Lcom/senseonics/graph/GraphView;->screenWidth:I

    iget v13, v0, Lcom/senseonics/graph/GraphView;->graphPaddingTop:I

    const/4 v14, 0x1

    const/4 v15, 0x1

    move-object v5, v1

    invoke-direct/range {v5 .. v15}, Lcom/jjoe64/graphview/LineGraphView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Calendar;Ljava/util/Calendar;IIIIZZ)V

    iput-object v1, v0, Lcom/senseonics/graph/GraphView;->glucoseView:Lcom/jjoe64/graphview/Graph;

    .line 352
    iget-object v1, v0, Lcom/senseonics/graph/GraphView;->glucoseView:Lcom/jjoe64/graphview/Graph;

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Lcom/jjoe64/graphview/Graph;->addSeries(Ljava/util/List;)V

    .line 353
    iget-object v1, v0, Lcom/senseonics/graph/GraphView;->glucoseView:Lcom/jjoe64/graphview/Graph;

    sget-object v2, Lcom/senseonics/util/Utils;->startDate:Ljava/util/Calendar;

    sget-object v3, Lcom/senseonics/util/Utils;->endDateFinished:Ljava/util/Calendar;

    move-object/from16 v4, p2

    invoke-virtual {v1, v4, v2, v3}, Lcom/jjoe64/graphview/Graph;->setEventPoints(Ljava/util/List;Ljava/util/Calendar;Ljava/util/Calendar;)V

    .line 355
    iget-object v1, v0, Lcom/senseonics/graph/GraphView;->glucoseView:Lcom/jjoe64/graphview/Graph;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/jjoe64/graphview/Graph;->setScalable(Z)V

    .line 356
    iget-object v1, v0, Lcom/senseonics/graph/GraphView;->glucoseView:Lcom/jjoe64/graphview/Graph;

    invoke-virtual {v1, v2}, Lcom/jjoe64/graphview/Graph;->setScrollable(Z)V

    .line 358
    iget-object v1, v0, Lcom/senseonics/graph/GraphView;->glucoseView:Lcom/jjoe64/graphview/Graph;

    iget-object v3, v0, Lcom/senseonics/graph/GraphView;->scrollManager:Lcom/senseonics/graph/GraphView$ScrollManager;

    invoke-virtual {v1, v3}, Lcom/jjoe64/graphview/Graph;->setManager(Lcom/senseonics/graph/GraphView$ScrollManager;)V

    .line 359
    iget-object v1, v0, Lcom/senseonics/graph/GraphView;->glucoseView:Lcom/jjoe64/graphview/Graph;

    iget-object v3, v0, Lcom/senseonics/graph/GraphView;->verticalLineHolder:Lcom/senseonics/graph/VerticalLineHolder;

    invoke-virtual {v3}, Lcom/senseonics/graph/VerticalLineHolder;->getVerticalLineManager()Lcom/senseonics/graph/VerticalLineManager;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/jjoe64/graphview/Graph;->setVerticalLineManager(Lcom/senseonics/graph/VerticalLineManager;)V

    .line 361
    invoke-direct/range {p0 .. p0}, Lcom/senseonics/graph/GraphView;->getDefaultViewPortStart()D

    move-result-wide v3

    sput-wide v3, Lcom/senseonics/graph/util/GraphUtils;->viewportStart:D

    .line 363
    iget-object v1, v0, Lcom/senseonics/graph/GraphView;->glucoseView:Lcom/jjoe64/graphview/Graph;

    sget-wide v3, Lcom/senseonics/graph/util/GraphUtils;->viewportStart:D

    sget-wide v5, Lcom/senseonics/graph/util/GraphUtils;->viewportSize:D

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/jjoe64/graphview/Graph;->setViewPort(DD)V

    .line 367
    iget v1, v0, Lcom/senseonics/graph/GraphView;->screenWidth:I

    int-to-float v1, v1

    sput v1, Lcom/senseonics/graph/util/GraphUtils;->maxViewPortSize:F

    .line 368
    sget v1, Lcom/senseonics/util/Utils;->daySubviewWidth:F

    const/high16 v3, 0x41000000    # 8.0f

    div-float/2addr v1, v3

    sput v1, Lcom/senseonics/graph/util/GraphUtils;->minViewPortSize:F

    .line 370
    iget-object v1, v0, Lcom/senseonics/graph/GraphView;->glucoseView:Lcom/jjoe64/graphview/Graph;

    check-cast v1, Lcom/jjoe64/graphview/LineGraphView;

    invoke-virtual {v1, v2}, Lcom/jjoe64/graphview/LineGraphView;->setDrawBackground(Z)V

    .line 371
    iget-object v1, v0, Lcom/senseonics/graph/GraphView;->glucoseView:Lcom/jjoe64/graphview/Graph;

    check-cast v1, Lcom/jjoe64/graphview/LineGraphView;

    iget-object v2, v0, Lcom/senseonics/graph/GraphView;->eventsManager:Lcom/jjoe64/graphview/LineGraphView$EventsManager;

    invoke-virtual {v1, v2}, Lcom/jjoe64/graphview/LineGraphView;->setEventsManager(Lcom/jjoe64/graphview/LineGraphView$EventsManager;)V

    .line 373
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v0, Lcom/senseonics/graph/GraphView;->screenWidth:I

    iget v3, v0, Lcom/senseonics/graph/GraphView;->height:I

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 375
    iget-object v2, v0, Lcom/senseonics/graph/GraphView;->glucoseView:Lcom/jjoe64/graphview/Graph;

    invoke-virtual {v2, v1}, Lcom/jjoe64/graphview/Graph;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 376
    iget-object v1, v0, Lcom/senseonics/graph/GraphView;->glucoseView:Lcom/jjoe64/graphview/Graph;

    iget-object v2, v0, Lcom/senseonics/graph/GraphView;->scaleManager:Lcom/jjoe64/graphview/Graph$ScaleManager;

    invoke-virtual {v1, v2}, Lcom/jjoe64/graphview/Graph;->setScaleManager(Lcom/jjoe64/graphview/Graph$ScaleManager;)V

    .line 377
    iget-object v1, v0, Lcom/senseonics/graph/GraphView;->relativeLayout:Landroid/widget/RelativeLayout;

    iget-object v2, v0, Lcom/senseonics/graph/GraphView;->glucoseView:Lcom/jjoe64/graphview/Graph;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public createEventsPopUp(FFLcom/jjoe64/graphview/Graph$EventGroup;)V
    .locals 8

    .line 428
    invoke-virtual {p0}, Lcom/senseonics/graph/GraphView;->hidePopUp()V

    .line 429
    iget-object v0, p0, Lcom/senseonics/graph/GraphView;->layoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0b00c3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/senseonics/graph/GraphView;->popUpListView:Landroid/widget/RelativeLayout;

    .line 431
    iget-object v0, p0, Lcom/senseonics/graph/GraphView;->popUpListView:Landroid/widget/RelativeLayout;

    const v1, 0x7f090185

    .line 432
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/ListView;

    .line 433
    new-instance v0, Lcom/senseonics/graph/GraphView$6;

    invoke-direct {v0, p0}, Lcom/senseonics/graph/GraphView$6;-><init>(Lcom/senseonics/graph/GraphView;)V

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 442
    invoke-virtual {p3}, Lcom/jjoe64/graphview/Graph$EventGroup;->getEvents()Ljava/util/ArrayList;

    move-result-object v3

    .line 444
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 445
    iget-object p1, p0, Lcom/senseonics/graph/GraphView;->scrollManager:Lcom/senseonics/graph/GraphView$ScrollManager;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/senseonics/events/EventPoint;

    invoke-interface {p1, p2}, Lcom/senseonics/graph/GraphView$ScrollManager;->onEventSelected(Lcom/senseonics/events/EventPoint;)V

    goto :goto_0

    .line 448
    :cond_0
    iget-object p3, p0, Lcom/senseonics/graph/GraphView;->eventsListAdapter:Lcom/senseonics/graph/util/EventsListAdapter;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/events/EventPoint;

    invoke-virtual {p3, v0}, Lcom/senseonics/graph/util/EventsListAdapter;->setEvent(Lcom/senseonics/events/EventPoint;)V

    .line 449
    iget-object p3, p0, Lcom/senseonics/graph/GraphView;->eventsListAdapter:Lcom/senseonics/graph/util/EventsListAdapter;

    invoke-virtual {v6, p3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 451
    new-instance p3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p3, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 454
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 456
    iget v0, p0, Lcom/senseonics/graph/GraphView;->screenWidth:I

    iput v0, p3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    float-to-int v0, p2

    .line 457
    iget v1, p0, Lcom/senseonics/graph/GraphView;->height:I

    sub-int/2addr v0, v1

    iput v0, p3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 458
    iget-object v0, p0, Lcom/senseonics/graph/GraphView;->popUpListView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 460
    iget-object p3, p0, Lcom/senseonics/graph/GraphView;->popUpListView:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p3}, Lcom/senseonics/graph/GraphView;->addView(Landroid/view/View;)V

    .line 462
    iget-object p3, p0, Lcom/senseonics/graph/GraphView;->popUpListView:Landroid/widget/RelativeLayout;

    const/4 v0, 0x4

    invoke-virtual {p3, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 464
    iget-object p3, p0, Lcom/senseonics/graph/GraphView;->popUpListView:Landroid/widget/RelativeLayout;

    invoke-virtual {p3}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p3

    .line 465
    new-instance v0, Lcom/senseonics/graph/GraphView$7;

    move-object v1, v0

    move-object v2, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v1 .. v7}, Lcom/senseonics/graph/GraphView$7;-><init>(Lcom/senseonics/graph/GraphView;Ljava/util/ArrayList;FFLandroid/widget/ListView;Landroid/graphics/Rect;)V

    invoke-virtual {p3, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_0
    return-void
.end method

.method public getCurrentVisibleDate()Ljava/util/Calendar;
    .locals 9

    .line 281
    iget-object v0, p0, Lcom/senseonics/graph/GraphView;->glucoseView:Lcom/jjoe64/graphview/Graph;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/senseonics/graph/GraphView;->glucoseView:Lcom/jjoe64/graphview/Graph;

    .line 282
    invoke-virtual {v0}, Lcom/jjoe64/graphview/Graph;->getRectWidth()I

    move-result v0

    sget-object v1, Lcom/senseonics/util/Utils;->startDate:Ljava/util/Calendar;

    sget-object v2, Lcom/senseonics/util/Utils;->endDateFinished:Ljava/util/Calendar;

    sget-wide v3, Lcom/senseonics/graph/util/GraphUtils;->viewportStart:D

    double-to-float v3, v3

    float-to-double v3, v3

    sget-wide v5, Lcom/senseonics/graph/util/GraphUtils;->viewportSize:D

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    div-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-float v3, v3

    invoke-static {v0, v1, v2, v3}, Lcom/senseonics/graph/util/GraphUtils;->getDateForPositionX(ILjava/util/Calendar;Ljava/util/Calendar;F)Ljava/util/Calendar;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getDayType(I)Lcom/senseonics/graph/GraphView$DAY_TYPE;
    .locals 0

    .line 650
    sget-object p1, Lcom/senseonics/graph/GraphView$DAY_TYPE;->THIRDWIDTH_2SECTION:Lcom/senseonics/graph/GraphView$DAY_TYPE;

    return-object p1
.end method

.method public hidePopUp()V
    .locals 2

    .line 603
    iget-object v0, p0, Lcom/senseonics/graph/GraphView;->popUpListView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/senseonics/graph/GraphView;->popUpListView:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x0

    .line 605
    sput-boolean v0, Lcom/senseonics/graph/util/GraphUtils;->listPopUpIsVisible:Z

    return-void
.end method

.method public init()V
    .locals 4

    .line 103
    invoke-virtual {p0}, Lcom/senseonics/graph/GraphView;->removeAllViews()V

    .line 105
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/senseonics/graph/GraphView;->screenWidth:I

    iget v2, p0, Lcom/senseonics/graph/GraphView;->height:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/senseonics/graph/GraphView;->scrollViewParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 108
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/senseonics/graph/GraphView;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/senseonics/graph/GraphView;->relativeLayout:Landroid/widget/RelativeLayout;

    .line 109
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/senseonics/graph/GraphView;->screenWidth:I

    iget v2, p0, Lcom/senseonics/graph/GraphView;->height:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 111
    iget-object v1, p0, Lcom/senseonics/graph/GraphView;->relativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    iget-object v0, p0, Lcom/senseonics/graph/GraphView;->relativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/senseonics/graph/GraphView;->addView(Landroid/view/View;)V

    .line 115
    iget v0, p0, Lcom/senseonics/graph/GraphView;->screenWidth:I

    const/16 v1, 0x15e

    if-le v0, v1, :cond_0

    .line 116
    iget v0, p0, Lcom/senseonics/graph/GraphView;->screenWidth:I

    div-int/lit8 v0, v0, 0x28

    iput v0, p0, Lcom/senseonics/graph/GraphView;->slideStepSize:I

    goto :goto_0

    .line 118
    :cond_0
    iget v0, p0, Lcom/senseonics/graph/GraphView;->screenWidth:I

    div-int/lit8 v0, v0, 0x19

    iput v0, p0, Lcom/senseonics/graph/GraphView;->slideStepSize:I

    .line 120
    :goto_0
    new-instance v0, Lcom/senseonics/graph/VerticalLineHolder;

    iget-object v1, p0, Lcom/senseonics/graph/GraphView;->context:Landroid/content/Context;

    iget v2, p0, Lcom/senseonics/graph/GraphView;->screenWidth:I

    iget v3, p0, Lcom/senseonics/graph/GraphView;->height:I

    invoke-direct {v0, v1, v2, v3}, Lcom/senseonics/graph/VerticalLineHolder;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/senseonics/graph/GraphView;->verticalLineHolder:Lcom/senseonics/graph/VerticalLineHolder;

    .line 121
    iget-object v0, p0, Lcom/senseonics/graph/GraphView;->verticalLineHolder:Lcom/senseonics/graph/VerticalLineHolder;

    iget-object v1, p0, Lcom/senseonics/graph/GraphView;->scrollViewParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Lcom/senseonics/graph/VerticalLineHolder;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    iget-object v0, p0, Lcom/senseonics/graph/GraphView;->verticalLineHolder:Lcom/senseonics/graph/VerticalLineHolder;

    invoke-virtual {p0, v0}, Lcom/senseonics/graph/GraphView;->addView(Landroid/view/View;)V

    .line 124
    iget-object v0, p0, Lcom/senseonics/graph/GraphView;->verticalLineHolder:Lcom/senseonics/graph/VerticalLineHolder;

    iget-object v1, p0, Lcom/senseonics/graph/GraphView;->lineScrollManager:Lcom/senseonics/graph/GraphView$LineScrollManager;

    invoke-virtual {v0, v1}, Lcom/senseonics/graph/VerticalLineHolder;->setScrollManager(Lcom/senseonics/graph/GraphView$LineScrollManager;)V

    return-void
.end method

.method public numberOfDaysBetweenStartDate(Ljava/util/Calendar;Ljava/util/Calendar;)I
    .locals 2

    .line 96
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 97
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    sub-long/2addr v0, p1

    const-wide/16 p1, 0x3e8

    .line 98
    div-long/2addr v0, p1

    long-to-int p1, v0

    div-int/lit8 p1, p1, 0x3c

    div-int/lit8 p1, p1, 0x3c

    div-int/lit8 p1, p1, 0x18

    return p1
.end method

.method public redrawGraphWithExistingStartEndDates(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/senseonics/graph/util/Glucose;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/senseonics/events/EventPoint;",
            ">;)V"
        }
    .end annotation

    .line 398
    iget-object v0, p0, Lcom/senseonics/graph/GraphView;->glucoseView:Lcom/jjoe64/graphview/Graph;

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/senseonics/graph/GraphView;->glucoseView:Lcom/jjoe64/graphview/Graph;

    invoke-virtual {v0, p1}, Lcom/jjoe64/graphview/Graph;->addSeries(Ljava/util/List;)V

    .line 400
    iget-object p1, p0, Lcom/senseonics/graph/GraphView;->glucoseView:Lcom/jjoe64/graphview/Graph;

    sget-object v0, Lcom/senseonics/util/Utils;->startDate:Ljava/util/Calendar;

    sget-object v1, Lcom/senseonics/util/Utils;->endDateFinished:Ljava/util/Calendar;

    invoke-virtual {p1, p2, v0, v1}, Lcom/jjoe64/graphview/Graph;->setEventPoints(Ljava/util/List;Ljava/util/Calendar;Ljava/util/Calendar;)V

    .line 401
    iget-object p1, p0, Lcom/senseonics/graph/GraphView;->glucoseView:Lcom/jjoe64/graphview/Graph;

    sget-wide v0, Lcom/senseonics/graph/util/GraphUtils;->viewportStart:D

    sget-wide v2, Lcom/senseonics/graph/util/GraphUtils;->viewportSize:D

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/jjoe64/graphview/Graph;->setViewPort(DD)V

    .line 402
    iget-object p1, p0, Lcom/senseonics/graph/GraphView;->glucoseView:Lcom/jjoe64/graphview/Graph;

    invoke-virtual {p1}, Lcom/jjoe64/graphview/Graph;->redrawAll()V

    goto :goto_0

    .line 404
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/senseonics/graph/GraphView;->addGlucoseSubView(Ljava/util/List;Ljava/util/List;)V

    .line 407
    :goto_0
    invoke-virtual {p0}, Lcom/senseonics/graph/GraphView;->showEventPopUp()V

    return-void
.end method

.method public redrawGraphWithNewStartEndDates(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/senseonics/graph/util/Glucose;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/senseonics/events/EventPoint;",
            ">;)V"
        }
    .end annotation

    .line 382
    iget-object v0, p0, Lcom/senseonics/graph/GraphView;->glucoseView:Lcom/jjoe64/graphview/Graph;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/senseonics/graph/GraphView;->glucoseView:Lcom/jjoe64/graphview/Graph;

    sget-object v1, Lcom/senseonics/util/Utils;->startDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Lcom/jjoe64/graphview/Graph;->setStartDate(Ljava/util/Calendar;)V

    .line 384
    iget-object v0, p0, Lcom/senseonics/graph/GraphView;->glucoseView:Lcom/jjoe64/graphview/Graph;

    sget-object v1, Lcom/senseonics/util/Utils;->endDateFinished:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Lcom/jjoe64/graphview/Graph;->setEndDate(Ljava/util/Calendar;)V

    .line 385
    iget-object v0, p0, Lcom/senseonics/graph/GraphView;->glucoseView:Lcom/jjoe64/graphview/Graph;

    invoke-virtual {v0, p1}, Lcom/jjoe64/graphview/Graph;->addSeries(Ljava/util/List;)V

    .line 386
    iget-object p1, p0, Lcom/senseonics/graph/GraphView;->glucoseView:Lcom/jjoe64/graphview/Graph;

    sget-object v0, Lcom/senseonics/util/Utils;->startDate:Ljava/util/Calendar;

    sget-object v1, Lcom/senseonics/util/Utils;->endDateFinished:Ljava/util/Calendar;

    invoke-virtual {p1, p2, v0, v1}, Lcom/jjoe64/graphview/Graph;->setEventPoints(Ljava/util/List;Ljava/util/Calendar;Ljava/util/Calendar;)V

    .line 388
    iget-object p1, p0, Lcom/senseonics/graph/GraphView;->glucoseView:Lcom/jjoe64/graphview/Graph;

    sget-wide v0, Lcom/senseonics/graph/util/GraphUtils;->viewportStart:D

    sget-wide v2, Lcom/senseonics/graph/util/GraphUtils;->viewportSize:D

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/jjoe64/graphview/Graph;->setViewPort(DD)V

    .line 390
    iget-object p1, p0, Lcom/senseonics/graph/GraphView;->glucoseView:Lcom/jjoe64/graphview/Graph;

    invoke-virtual {p1}, Lcom/jjoe64/graphview/Graph;->redrawAll()V

    .line 392
    invoke-virtual {p0}, Lcom/senseonics/graph/GraphView;->showEventPopUp()V

    :cond_0
    return-void
.end method

.method public scrollToPosition(I)V
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/senseonics/graph/GraphView;->glucoseView:Lcom/jjoe64/graphview/Graph;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/jjoe64/graphview/Graph;->scrollTo(II)V

    return-void
.end method

.method public selectDay(Ljava/util/Calendar;)V
    .locals 7

    .line 223
    iget-object v0, p0, Lcom/senseonics/graph/GraphView;->glucoseView:Lcom/jjoe64/graphview/Graph;

    if-nez v0, :cond_0

    return-void

    .line 227
    :cond_0
    sget-wide v0, Lcom/senseonics/graph/util/GraphUtils;->viewportStart:D

    sget-wide v2, Lcom/senseonics/graph/util/GraphUtils;->viewportSize:D

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    .line 228
    iget-object v1, p0, Lcom/senseonics/graph/GraphView;->glucoseView:Lcom/jjoe64/graphview/Graph;

    .line 229
    invoke-virtual {v1}, Lcom/jjoe64/graphview/Graph;->getRectWidth()I

    move-result v1

    sget-object v2, Lcom/senseonics/util/Utils;->startDate:Ljava/util/Calendar;

    sget-object v3, Lcom/senseonics/util/Utils;->endDateFinished:Ljava/util/Calendar;

    invoke-static {v1, v2, v3, v0}, Lcom/senseonics/graph/util/GraphUtils;->getDateForPositionX(ILjava/util/Calendar;Ljava/util/Calendar;F)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x0

    .line 235
    sget-object v2, Lcom/senseonics/util/Utils;->currentDate:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sget-wide v4, Lcom/senseonics/graph/util/GraphUtils;->DAY:J

    cmp-long v2, v2, v4

    const/16 v3, 0xe

    const/16 v4, 0xd

    const/16 v5, 0xc

    const/16 v6, 0xb

    if-gez v2, :cond_2

    const/4 v1, 0x1

    .line 238
    sget-object v0, Lcom/senseonics/util/Utils;->currentDate:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 239
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    sub-int/2addr v0, v2

    if-gez v0, :cond_1

    .line 240
    sget-object v0, Lcom/senseonics/util/Utils;->currentDate:Ljava/util/Calendar;

    .line 241
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 240
    invoke-virtual {p1, v6, v0}, Ljava/util/Calendar;->set(II)V

    .line 242
    :cond_1
    sget-object v0, Lcom/senseonics/util/Utils;->currentDate:Ljava/util/Calendar;

    .line 243
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 242
    invoke-virtual {p1, v5, v0}, Ljava/util/Calendar;->set(II)V

    .line 244
    sget-object v0, Lcom/senseonics/util/Utils;->currentDate:Ljava/util/Calendar;

    .line 245
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 244
    invoke-virtual {p1, v4, v0}, Ljava/util/Calendar;->set(II)V

    .line 246
    sget-object v0, Lcom/senseonics/util/Utils;->currentDate:Ljava/util/Calendar;

    .line 247
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 246
    invoke-virtual {p1, v3, v0}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    .line 250
    :cond_2
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 249
    invoke-virtual {p1, v6, v2}, Ljava/util/Calendar;->set(II)V

    .line 251
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v5, v2}, Ljava/util/Calendar;->set(II)V

    .line 252
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 254
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 253
    invoke-virtual {p1, v3, v0}, Ljava/util/Calendar;->set(II)V

    :goto_0
    if-eqz v1, :cond_3

    .line 261
    invoke-direct {p0}, Lcom/senseonics/graph/GraphView;->getDefaultViewPortStart()D

    move-result-wide v0

    goto :goto_1

    .line 263
    :cond_3
    iget-object v0, p0, Lcom/senseonics/graph/GraphView;->glucoseView:Lcom/jjoe64/graphview/Graph;

    invoke-virtual {v0}, Lcom/jjoe64/graphview/Graph;->getRectWidth()I

    move-result v0

    sget-object v1, Lcom/senseonics/util/Utils;->startDate:Ljava/util/Calendar;

    sget-object v2, Lcom/senseonics/util/Utils;->endDateFinished:Ljava/util/Calendar;

    invoke-static {v0, v1, v2, p1}, Lcom/senseonics/graph/util/GraphUtils;->getPositionX(ILjava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;)F

    move-result p1

    sget-wide v0, Lcom/senseonics/graph/util/GraphUtils;->viewportSize:D

    double-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float/2addr p1, v0

    float-to-double v0, p1

    .line 268
    :goto_1
    iget-object p1, p0, Lcom/senseonics/graph/GraphView;->glucoseView:Lcom/jjoe64/graphview/Graph;

    sget-wide v2, Lcom/senseonics/graph/util/GraphUtils;->viewportSize:D

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/jjoe64/graphview/Graph;->setViewPort(DD)V

    .line 269
    iget-object p1, p0, Lcom/senseonics/graph/GraphView;->glucoseView:Lcom/jjoe64/graphview/Graph;

    invoke-virtual {p1}, Lcom/jjoe64/graphview/Graph;->redrawAll()V

    return-void
.end method

.method public setScrollManager(Lcom/senseonics/graph/GraphView$ScrollManager;)V
    .locals 0

    .line 646
    iput-object p1, p0, Lcom/senseonics/graph/GraphView;->scrollManager:Lcom/senseonics/graph/GraphView$ScrollManager;

    return-void
.end method

.method public showEventPopUp()V
    .locals 4

    .line 411
    sget-boolean v0, Lcom/senseonics/graph/util/GraphUtils;->listPopUpIsVisible:Z

    if-eqz v0, :cond_0

    .line 412
    sget-object v0, Lcom/senseonics/graph/util/GraphUtils;->popUpCalendar:Ljava/util/Calendar;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/senseonics/graph/GraphView;->glucoseView:Lcom/jjoe64/graphview/Graph;

    invoke-virtual {v0}, Lcom/jjoe64/graphview/Graph;->getRectWidth()I

    move-result v0

    sget-object v1, Lcom/senseonics/util/Utils;->startDate:Ljava/util/Calendar;

    sget-object v2, Lcom/senseonics/util/Utils;->endDateFinished:Ljava/util/Calendar;

    sget-object v3, Lcom/senseonics/graph/util/GraphUtils;->popUpCalendar:Ljava/util/Calendar;

    invoke-static {v0, v1, v2, v3}, Lcom/senseonics/graph/util/GraphUtils;->getPositionX(ILjava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;)F

    move-result v0

    .line 417
    iget-object v1, p0, Lcom/senseonics/graph/GraphView;->glucoseView:Lcom/jjoe64/graphview/Graph;

    invoke-virtual {v1, v0}, Lcom/jjoe64/graphview/Graph;->getPosOnScreen(F)F

    move-result v0

    sput v0, Lcom/senseonics/graph/util/GraphUtils;->popUpX:F

    const/4 v0, 0x0

    .line 418
    sput-boolean v0, Lcom/senseonics/graph/util/GraphUtils;->listPopUpIsVisible:Z

    .line 419
    iget-object v0, p0, Lcom/senseonics/graph/GraphView;->glucoseView:Lcom/jjoe64/graphview/Graph;

    sget v1, Lcom/senseonics/graph/util/GraphUtils;->popUpX:F

    sget v2, Lcom/senseonics/graph/util/GraphUtils;->popUpY:F

    invoke-virtual {v0, v1, v2}, Lcom/jjoe64/graphview/Graph;->clickEvent(FF)V

    :cond_0
    return-void
.end method

.method public slide(I)V
    .locals 3

    .line 199
    iget-boolean v0, p0, Lcom/senseonics/graph/GraphView;->autoScrollIsOn:Z

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/senseonics/graph/GraphView;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/senseonics/graph/GraphView$2;

    invoke-direct {v1, p0, p1}, Lcom/senseonics/graph/GraphView$2;-><init>(Lcom/senseonics/graph/GraphView;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 207
    new-instance v0, Lcom/senseonics/graph/GraphView$3;

    invoke-direct {v0, p0, p1}, Lcom/senseonics/graph/GraphView$3;-><init>(Lcom/senseonics/graph/GraphView;I)V

    const-wide/16 v1, 0x14

    invoke-virtual {p0, v0, v1, v2}, Lcom/senseonics/graph/GraphView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
