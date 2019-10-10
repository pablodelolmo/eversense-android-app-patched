.class public abstract Lcom/jjoe64/graphview/Graph;
.super Landroid/widget/LinearLayout;
.source "Graph.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jjoe64/graphview/Graph$EventGroup;,
        Lcom/jjoe64/graphview/Graph$ScaleManager;,
        Lcom/jjoe64/graphview/Graph$GlucoseSection;,
        Lcom/jjoe64/graphview/Graph$LegendAlign;,
        Lcom/jjoe64/graphview/Graph$GraphViewData;,
        Lcom/jjoe64/graphview/Graph$GraphViewContentView;,
        Lcom/jjoe64/graphview/Graph$GraphViewConfig;
    }
.end annotation


# instance fields
.field protected bottomPositionY:F

.field private currentDayType:Lcom/senseonics/graph/GraphView$DAY_TYPE;

.field private customLabelFormatter:Lcom/jjoe64/graphview/CustomLabelFormatter;

.field private dashSize:I

.field private dashedLinePaint:Landroid/graphics/Paint;

.field private disableTouch:Z

.field private endDate:Ljava/util/Calendar;

.field protected eventGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/jjoe64/graphview/Graph$EventGroup;",
            ">;"
        }
    .end annotation
.end field

.field private eventPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/senseonics/events/EventPoint;",
            ">;"
        }
    .end annotation
.end field

.field protected eventsManager:Lcom/jjoe64/graphview/LineGraphView$EventsManager;

.field protected glucosePoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/senseonics/graph/util/Glucose;",
            ">;>;"
        }
    .end annotation
.end field

.field private final graphSeries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jjoe64/graphview/GraphViewSeries;",
            ">;"
        }
    .end annotation
.end field

.field private final graphViewContentView:Lcom/jjoe64/graphview/Graph$GraphViewContentView;

.field protected graphViewStyle:Lcom/jjoe64/graphview/GraphViewStyle;

.field protected graphwidth:F

.field private isLandscape:Z

.field private legendAlign:Lcom/jjoe64/graphview/Graph$LegendAlign;

.field private manager:Lcom/senseonics/graph/GraphView$ScrollManager;

.field private manualMinYValue:D

.field private manualYAxis:Z

.field private final numberformatter:[Ljava/text/NumberFormat;

.field private paddingTop:I

.field protected final paint:Landroid/graphics/Paint;

.field private path:Landroid/graphics/Path;

.field private rect:Landroid/graphics/Rect;

.field private scalable:Z

.field private scaleDetector:Lcom/jjoe64/graphview/ScaleGestureDetector;

.field private scaleManager:Lcom/jjoe64/graphview/Graph$ScaleManager;

.field private scrollable:Z

.field protected scrollableGraph:Z

.field private showLegend:Z

.field private startDate:Ljava/util/Calendar;

.field private textRect:Landroid/graphics/Rect;

.field private verticalLineManager:Lcom/senseonics/graph/VerticalLineManager;

.field private viewportStart:D


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Calendar;Ljava/util/Calendar;IIIZZ)V
    .locals 5

    .line 1079
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x0

    .line 88
    iput-boolean p2, p0, Lcom/jjoe64/graphview/Graph;->scrollableGraph:Z

    .line 1047
    iput-boolean p2, p0, Lcom/jjoe64/graphview/Graph;->isLandscape:Z

    const/4 v0, 0x2

    .line 1052
    new-array v1, v0, [Ljava/text/NumberFormat;

    iput-object v1, p0, Lcom/jjoe64/graphview/Graph;->numberformatter:[Ljava/text/NumberFormat;

    .line 1054
    iput-boolean p2, p0, Lcom/jjoe64/graphview/Graph;->showLegend:Z

    .line 1055
    sget-object v1, Lcom/jjoe64/graphview/Graph$LegendAlign;->MIDDLE:Lcom/jjoe64/graphview/Graph$LegendAlign;

    iput-object v1, p0, Lcom/jjoe64/graphview/Graph;->legendAlign:Lcom/jjoe64/graphview/Graph$LegendAlign;

    .line 1080
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1082
    invoke-virtual {p0, v1}, Lcom/jjoe64/graphview/Graph;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1084
    iput-boolean p8, p0, Lcom/jjoe64/graphview/Graph;->scrollableGraph:Z

    .line 1086
    new-instance p8, Landroid/graphics/Path;

    invoke-direct {p8}, Landroid/graphics/Path;-><init>()V

    iput-object p8, p0, Lcom/jjoe64/graphview/Graph;->path:Landroid/graphics/Path;

    .line 1089
    sget p8, Lcom/senseonics/util/Utils;->screenWidth:I

    div-int/lit8 p8, p8, 0x19

    .line 1091
    sget v1, Lcom/senseonics/util/Utils;->screenWidth:I

    const/16 v3, 0x258

    if-le v1, v3, :cond_0

    const/4 v1, 0x3

    .line 1092
    iput v1, p0, Lcom/jjoe64/graphview/Graph;->dashSize:I

    .line 1093
    sget v1, Lcom/senseonics/util/Utils;->screenWidth:I

    div-int/lit8 v1, v1, 0xf

    goto :goto_0

    .line 1095
    :cond_0
    iput v0, p0, Lcom/jjoe64/graphview/Graph;->dashSize:I

    .line 1096
    sget v1, Lcom/senseonics/util/Utils;->screenWidth:I

    div-int/lit8 v1, v1, 0xa

    .line 1098
    :goto_0
    new-instance v3, Landroid/graphics/Rect;

    add-int/2addr v1, p8

    invoke-direct {v3, p2, p7, v1, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/jjoe64/graphview/Graph;->textRect:Landroid/graphics/Rect;

    .line 1100
    new-instance p8, Landroid/graphics/Paint;

    invoke-direct {p8}, Landroid/graphics/Paint;-><init>()V

    iput-object p8, p0, Lcom/jjoe64/graphview/Graph;->dashedLinePaint:Landroid/graphics/Paint;

    .line 1101
    iget-object p8, p0, Lcom/jjoe64/graphview/Graph;->dashedLinePaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {p8, v1, p2, p2, p2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1102
    iget-object p8, p0, Lcom/jjoe64/graphview/Graph;->dashedLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p8, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1103
    iget-object p8, p0, Lcom/jjoe64/graphview/Graph;->dashedLinePaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/DashPathEffect;

    new-array v0, v0, [F

    iget v3, p0, Lcom/jjoe64/graphview/Graph;->dashSize:I

    int-to-float v3, v3

    aput v3, v0, p2

    iget v3, p0, Lcom/jjoe64/graphview/Graph;->dashSize:I

    int-to-float v3, v3

    const/4 v4, 0x1

    aput v3, v0, v4

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v0, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {p8, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 1105
    iget-object p8, p0, Lcom/jjoe64/graphview/Graph;->dashedLinePaint:Landroid/graphics/Paint;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p8, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1106
    iget-object p8, p0, Lcom/jjoe64/graphview/Graph;->dashedLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060065

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p8, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1109
    new-instance p8, Lcom/jjoe64/graphview/GraphViewStyle;

    invoke-direct {p8}, Lcom/jjoe64/graphview/GraphViewStyle;-><init>()V

    iput-object p8, p0, Lcom/jjoe64/graphview/Graph;->graphViewStyle:Lcom/jjoe64/graphview/GraphViewStyle;

    .line 1110
    iget-object p8, p0, Lcom/jjoe64/graphview/Graph;->graphViewStyle:Lcom/jjoe64/graphview/GraphViewStyle;

    invoke-virtual {p8, p1}, Lcom/jjoe64/graphview/GraphViewStyle;->useTextColorFromTheme(Landroid/content/Context;)V

    .line 1112
    new-instance p8, Landroid/graphics/Paint;

    invoke-direct {p8}, Landroid/graphics/Paint;-><init>()V

    iput-object p8, p0, Lcom/jjoe64/graphview/Graph;->paint:Landroid/graphics/Paint;

    .line 1113
    iget-object p8, p0, Lcom/jjoe64/graphview/Graph;->paint:Landroid/graphics/Paint;

    invoke-virtual {p8, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1114
    new-instance p8, Ljava/util/ArrayList;

    invoke-direct {p8}, Ljava/util/ArrayList;-><init>()V

    iput-object p8, p0, Lcom/jjoe64/graphview/Graph;->graphSeries:Ljava/util/List;

    .line 1116
    iput-object p3, p0, Lcom/jjoe64/graphview/Graph;->startDate:Ljava/util/Calendar;

    .line 1117
    iput-object p4, p0, Lcom/jjoe64/graphview/Graph;->endDate:Ljava/util/Calendar;

    .line 1119
    iput p7, p0, Lcom/jjoe64/graphview/Graph;->paddingTop:I

    .line 1121
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3, p2, p7, p6, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p3, p0, Lcom/jjoe64/graphview/Graph;->rect:Landroid/graphics/Rect;

    .line 1123
    sget p2, Lcom/senseonics/util/Utils;->GRAPH_GLUCOSE_MIN:I

    iget-object p3, p0, Lcom/jjoe64/graphview/Graph;->rect:Landroid/graphics/Rect;

    invoke-static {p2, p3}, Lcom/senseonics/graph/util/GraphUtils;->getPositionYForGlucose(ILandroid/graphics/Rect;)F

    move-result p2

    iput p2, p0, Lcom/jjoe64/graphview/Graph;->bottomPositionY:F

    .line 1126
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/jjoe64/graphview/Graph;->glucosePoints:Ljava/util/List;

    .line 1128
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/jjoe64/graphview/Graph;->eventPoints:Ljava/util/List;

    .line 1129
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/jjoe64/graphview/Graph;->eventGroups:Ljava/util/ArrayList;

    .line 1131
    new-instance p2, Lcom/jjoe64/graphview/Graph$GraphViewContentView;

    invoke-direct {p2, p0, p1, p9}, Lcom/jjoe64/graphview/Graph$GraphViewContentView;-><init>(Lcom/jjoe64/graphview/Graph;Landroid/content/Context;Z)V

    iput-object p2, p0, Lcom/jjoe64/graphview/Graph;->graphViewContentView:Lcom/jjoe64/graphview/Graph$GraphViewContentView;

    .line 1134
    iget-object p1, p0, Lcom/jjoe64/graphview/Graph;->graphViewContentView:Lcom/jjoe64/graphview/Graph$GraphViewContentView;

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, p2}, Lcom/jjoe64/graphview/Graph;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$000(Lcom/jjoe64/graphview/Graph;)Lcom/senseonics/graph/GraphView$ScrollManager;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/jjoe64/graphview/Graph;->manager:Lcom/senseonics/graph/GraphView$ScrollManager;

    return-object p0
.end method

.method static synthetic access$002(Lcom/jjoe64/graphview/Graph;Lcom/senseonics/graph/GraphView$ScrollManager;)Lcom/senseonics/graph/GraphView$ScrollManager;
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/jjoe64/graphview/Graph;->manager:Lcom/senseonics/graph/GraphView$ScrollManager;

    return-object p1
.end method

.method static synthetic access$100(Lcom/jjoe64/graphview/Graph;)Landroid/graphics/Rect;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/jjoe64/graphview/Graph;->rect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/jjoe64/graphview/Graph;)D
    .locals 2

    .line 78
    iget-wide v0, p0, Lcom/jjoe64/graphview/Graph;->viewportStart:D

    return-wide v0
.end method

.method static synthetic access$1002(Lcom/jjoe64/graphview/Graph;D)D
    .locals 0

    .line 78
    iput-wide p1, p0, Lcom/jjoe64/graphview/Graph;->viewportStart:D

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/jjoe64/graphview/Graph;)Lcom/senseonics/graph/GraphView$DAY_TYPE;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/jjoe64/graphview/Graph;->currentDayType:Lcom/senseonics/graph/GraphView$DAY_TYPE;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/jjoe64/graphview/Graph;Lcom/senseonics/graph/GraphView$DAY_TYPE;)Lcom/senseonics/graph/GraphView$DAY_TYPE;
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/jjoe64/graphview/Graph;->currentDayType:Lcom/senseonics/graph/GraphView$DAY_TYPE;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/jjoe64/graphview/Graph;)I
    .locals 0

    .line 78
    iget p0, p0, Lcom/jjoe64/graphview/Graph;->paddingTop:I

    return p0
.end method

.method static synthetic access$1300(Lcom/jjoe64/graphview/Graph;)Landroid/graphics/Rect;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/jjoe64/graphview/Graph;->textRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/jjoe64/graphview/Graph;)Landroid/graphics/Path;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/jjoe64/graphview/Graph;->path:Landroid/graphics/Path;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/jjoe64/graphview/Graph;)Z
    .locals 0

    .line 78
    iget-boolean p0, p0, Lcom/jjoe64/graphview/Graph;->scalable:Z

    return p0
.end method

.method static synthetic access$1700(Lcom/jjoe64/graphview/Graph;)Lcom/jjoe64/graphview/ScaleGestureDetector;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/jjoe64/graphview/Graph;->scaleDetector:Lcom/jjoe64/graphview/ScaleGestureDetector;

    return-object p0
.end method

.method static synthetic access$200(Lcom/jjoe64/graphview/Graph;)Ljava/util/Calendar;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/jjoe64/graphview/Graph;->startDate:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/jjoe64/graphview/Graph;)Lcom/senseonics/graph/VerticalLineManager;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/jjoe64/graphview/Graph;->verticalLineManager:Lcom/senseonics/graph/VerticalLineManager;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/jjoe64/graphview/Graph;)Lcom/jjoe64/graphview/Graph$ScaleManager;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/jjoe64/graphview/Graph;->scaleManager:Lcom/jjoe64/graphview/Graph$ScaleManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/jjoe64/graphview/Graph;)Ljava/util/Calendar;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/jjoe64/graphview/Graph;->endDate:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic access$800(Lcom/jjoe64/graphview/Graph;)Ljava/util/List;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/jjoe64/graphview/Graph;->graphSeries:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$900(Lcom/jjoe64/graphview/Graph;I)[Lcom/jjoe64/graphview/GraphViewDataInterface;
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/jjoe64/graphview/Graph;->getValues(I)[Lcom/jjoe64/graphview/GraphViewDataInterface;

    move-result-object p0

    return-object p0
.end method

.method private getValues(I)[Lcom/jjoe64/graphview/GraphViewDataInterface;
    .locals 10

    .line 1140
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph;->graphSeries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jjoe64/graphview/GraphViewSeries;

    iget-object p1, p1, Lcom/jjoe64/graphview/GraphViewSeries;->values:[Lcom/jjoe64/graphview/GraphViewDataInterface;

    .line 1141
    monitor-enter p1

    .line 1142
    :try_start_0
    iget-boolean v0, p0, Lcom/jjoe64/graphview/Graph;->scrollableGraph:Z

    if-nez v0, :cond_0

    .line 1143
    monitor-exit p1

    return-object p1

    .line 1146
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1147
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_4

    .line 1148
    aget-object v3, p1, v2

    invoke-interface {v3}, Lcom/jjoe64/graphview/GraphViewDataInterface;->getX()D

    move-result-wide v3

    iget-wide v5, p0, Lcom/jjoe64/graphview/Graph;->viewportStart:D

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_2

    .line 1149
    aget-object v3, p1, v2

    invoke-interface {v3}, Lcom/jjoe64/graphview/GraphViewDataInterface;->getX()D

    move-result-wide v3

    iget-wide v5, p0, Lcom/jjoe64/graphview/Graph;->viewportStart:D

    sget-wide v7, Lcom/senseonics/graph/util/GraphUtils;->viewportSize:D

    const/4 v9, 0x0

    add-double/2addr v5, v7

    cmpl-double v3, v3, v5

    if-lez v3, :cond_1

    .line 1151
    aget-object v1, p1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1155
    :cond_1
    aget-object v3, p1, v2

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1158
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1159
    aget-object v3, p1, v2

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1161
    :cond_3
    aget-object v3, p1, v2

    invoke-interface {v0, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1166
    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/jjoe64/graphview/GraphViewDataInterface;

    .line 1167
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1168
    monitor-exit p1

    return-object v1

    :catchall_0
    move-exception v0

    .line 1170
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public addSeries(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/senseonics/graph/util/Glucose;",
            ">;>;)V"
        }
    .end annotation

    .line 1180
    invoke-virtual {p0, p1}, Lcom/jjoe64/graphview/Graph;->setGlucosePoints(Ljava/util/List;)V

    .line 1182
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph;->graphSeries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1183
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1184
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1185
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcom/jjoe64/graphview/Graph$GraphViewData;

    const/4 v4, 0x0

    .line 1187
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 1188
    new-instance v5, Lcom/jjoe64/graphview/Graph$GraphViewData;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/senseonics/graph/util/Glucose;

    invoke-virtual {v6}, Lcom/senseonics/graph/util/Glucose;->getX()F

    move-result v6

    float-to-double v6, v6

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/senseonics/graph/util/Glucose;

    .line 1189
    invoke-virtual {v8}, Lcom/senseonics/graph/util/Glucose;->getGlucoseLevel()I

    move-result v8

    int-to-double v8, v8

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/jjoe64/graphview/Graph$GraphViewData;-><init>(DD)V

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1191
    :cond_0
    new-instance v2, Lcom/jjoe64/graphview/GraphViewSeries;

    invoke-direct {v2, v3}, Lcom/jjoe64/graphview/GraphViewSeries;-><init>([Lcom/jjoe64/graphview/GraphViewDataInterface;)V

    .line 1192
    invoke-virtual {v2, p0}, Lcom/jjoe64/graphview/GraphViewSeries;->addGraphView(Lcom/jjoe64/graphview/Graph;)V

    .line 1193
    iget-object v3, p0, Lcom/jjoe64/graphview/Graph;->graphSeries:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1195
    :cond_1
    invoke-virtual {p0}, Lcom/jjoe64/graphview/Graph;->redrawAll()V

    return-void
.end method

.method public abstract clickEvent(FF)V
.end method

.method protected drawHorizontalLabels(Landroid/graphics/Canvas;FFF[Ljava/lang/String;F)V
    .locals 9

    .line 1505
    array-length v0, p5

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    .line 1506
    :goto_0
    array-length v2, p5

    if-ge v1, v2, :cond_2

    .line 1507
    iget-object v2, p0, Lcom/jjoe64/graphview/Graph;->paint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/jjoe64/graphview/Graph;->graphViewStyle:Lcom/jjoe64/graphview/GraphViewStyle;

    invoke-virtual {v3}, Lcom/jjoe64/graphview/GraphViewStyle;->getGridColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v2, v0

    div-float v2, p6, v2

    int-to-float v3, v1

    mul-float v2, v2, v3

    add-float/2addr v2, p3

    sub-float v5, p4, p2

    .line 1509
    iget-object v8, p0, Lcom/jjoe64/graphview/Graph;->paint:Landroid/graphics/Paint;

    move-object v3, p1

    move v4, v2

    move v6, v2

    move v7, p2

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1510
    iget-object v3, p0, Lcom/jjoe64/graphview/Graph;->paint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1511
    array-length v3, p5

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_0

    .line 1512
    iget-object v3, p0, Lcom/jjoe64/graphview/Graph;->paint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    :cond_0
    if-nez v1, :cond_1

    .line 1514
    iget-object v3, p0, Lcom/jjoe64/graphview/Graph;->paint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1515
    :cond_1
    iget-object v3, p0, Lcom/jjoe64/graphview/Graph;->paint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/jjoe64/graphview/Graph;->graphViewStyle:Lcom/jjoe64/graphview/GraphViewStyle;

    invoke-virtual {v4}, Lcom/jjoe64/graphview/GraphViewStyle;->getHorizontalLabelsColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1516
    aget-object v3, p5, v1

    const/high16 v4, 0x40800000    # 4.0f

    sub-float v4, p4, v4

    iget-object v5, p0, Lcom/jjoe64/graphview/Graph;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected drawLegend(Landroid/graphics/Canvas;FF)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1521
    iget-object v3, v0, Lcom/jjoe64/graphview/Graph;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSize()F

    move-result v3

    .line 1522
    invoke-virtual/range {p0 .. p0}, Lcom/jjoe64/graphview/Graph;->getGraphViewStyle()Lcom/jjoe64/graphview/GraphViewStyle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jjoe64/graphview/GraphViewStyle;->getLegendSpacing()I

    move-result v4

    .line 1523
    invoke-virtual/range {p0 .. p0}, Lcom/jjoe64/graphview/Graph;->getGraphViewStyle()Lcom/jjoe64/graphview/GraphViewStyle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jjoe64/graphview/GraphViewStyle;->getLegendBorder()I

    move-result v5

    .line 1524
    invoke-virtual/range {p0 .. p0}, Lcom/jjoe64/graphview/Graph;->getGraphViewStyle()Lcom/jjoe64/graphview/GraphViewStyle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jjoe64/graphview/GraphViewStyle;->getLegendWidth()I

    move-result v6

    float-to-double v7, v3

    const-wide v9, 0x3fe999999999999aL    # 0.8

    mul-double v7, v7, v9

    double-to-int v3, v7

    const-string v7, "GraphView"

    .line 1527
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "draw legend size: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/jjoe64/graphview/Graph;->paint:Landroid/graphics/Paint;

    invoke-virtual {v9}, Landroid/graphics/Paint;->getTextSize()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    iget-object v7, v0, Lcom/jjoe64/graphview/Graph;->paint:Landroid/graphics/Paint;

    const/16 v8, 0x64

    const/16 v9, 0xb4

    invoke-virtual {v7, v9, v8, v8, v8}, Landroid/graphics/Paint;->setARGB(IIII)V

    add-int v7, v3, v4

    .line 1531
    iget-object v8, v0, Lcom/jjoe64/graphview/Graph;->graphSeries:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    mul-int v8, v8, v7

    mul-int/lit8 v9, v5, 0x2

    add-int/2addr v8, v9

    sub-int/2addr v8, v4

    int-to-float v8, v8

    int-to-float v6, v6

    sub-float v10, p3, v6

    int-to-float v9, v9

    sub-float/2addr v10, v9

    .line 1535
    sget-object v9, Lcom/jjoe64/graphview/Graph$2;->$SwitchMap$com$jjoe64$graphview$Graph$LegendAlign:[I

    iget-object v11, v0, Lcom/jjoe64/graphview/Graph;->legendAlign:Lcom/jjoe64/graphview/Graph$LegendAlign;

    invoke-virtual {v11}, Lcom/jjoe64/graphview/Graph$LegendAlign;->ordinal()I

    move-result v11

    aget v9, v9, v11

    packed-switch v9, :pswitch_data_0

    const/high16 v9, 0x41a00000    # 20.0f

    sub-float v2, p2, v9

    sub-float/2addr v2, v8

    .line 1544
    invoke-virtual/range {p0 .. p0}, Lcom/jjoe64/graphview/Graph;->getGraphViewStyle()Lcom/jjoe64/graphview/GraphViewStyle;

    move-result-object v9

    invoke-virtual {v9}, Lcom/jjoe64/graphview/GraphViewStyle;->getLegendMarginBottom()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v2, v9

    goto :goto_0

    :pswitch_0
    const/high16 v9, 0x40000000    # 2.0f

    div-float v2, p2, v9

    div-float v9, v8, v9

    sub-float/2addr v2, v9

    goto :goto_0

    :pswitch_1
    const/4 v2, 0x0

    :goto_0
    add-float/2addr v6, v10

    add-float/2addr v8, v2

    .line 1548
    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9, v10, v2, v6, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v6, v0, Lcom/jjoe64/graphview/Graph;->paint:Landroid/graphics/Paint;

    const/high16 v8, 0x41000000    # 8.0f

    invoke-virtual {v1, v9, v8, v8, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    const/4 v6, 0x0

    .line 1551
    :goto_1
    iget-object v8, v0, Lcom/jjoe64/graphview/Graph;->graphSeries:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_1

    .line 1552
    iget-object v8, v0, Lcom/jjoe64/graphview/Graph;->paint:Landroid/graphics/Paint;

    iget-object v9, v0, Lcom/jjoe64/graphview/Graph;->graphSeries:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jjoe64/graphview/GraphViewSeries;

    iget-object v9, v9, Lcom/jjoe64/graphview/GraphViewSeries;->style:Lcom/jjoe64/graphview/GraphViewSeries$GraphViewSeriesStyle;

    iget v9, v9, Lcom/jjoe64/graphview/GraphViewSeries$GraphViewSeriesStyle;->color:I

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 1553
    new-instance v8, Landroid/graphics/RectF;

    int-to-float v9, v5

    add-float v11, v10, v9

    add-float/2addr v9, v2

    mul-int v12, v6, v7

    int-to-float v12, v12

    add-float v13, v9, v12

    int-to-float v14, v3

    add-float v15, v11, v14

    move/from16 v16, v2

    add-float v2, v13, v14

    invoke-direct {v8, v11, v13, v15, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v2, v0, Lcom/jjoe64/graphview/Graph;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1557
    iget-object v2, v0, Lcom/jjoe64/graphview/Graph;->graphSeries:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jjoe64/graphview/GraphViewSeries;

    iget-object v2, v2, Lcom/jjoe64/graphview/GraphViewSeries;->description:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1558
    iget-object v2, v0, Lcom/jjoe64/graphview/Graph;->paint:Landroid/graphics/Paint;

    const/4 v8, -0x1

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 1559
    iget-object v2, v0, Lcom/jjoe64/graphview/Graph;->paint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1560
    iget-object v2, v0, Lcom/jjoe64/graphview/Graph;->graphSeries:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jjoe64/graphview/GraphViewSeries;

    iget-object v2, v2, Lcom/jjoe64/graphview/GraphViewSeries;->description:Ljava/lang/String;

    int-to-float v8, v4

    add-float/2addr v15, v8

    add-float/2addr v9, v14

    add-float/2addr v9, v12

    iget-object v8, v0, Lcom/jjoe64/graphview/Graph;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v15, v9, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    add-int/lit8 v6, v6, 0x1

    move/from16 v2, v16

    goto :goto_1

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected abstract drawSeries(Landroid/graphics/Canvas;Ljava/util/ArrayList;FFFDDDDFLcom/jjoe64/graphview/GraphViewSeries$GraphViewSeriesStyle;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ljava/util/ArrayList<",
            "Lcom/jjoe64/graphview/Graph$GlucoseSection;",
            ">;FFFDDDDF",
            "Lcom/jjoe64/graphview/GraphViewSeries$GraphViewSeriesStyle;",
            "Z)V"
        }
    .end annotation
.end method

.method protected formatLabel(DZ)Ljava/lang/String;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1586
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph;->customLabelFormatter:Lcom/jjoe64/graphview/CustomLabelFormatter;

    if-eqz v0, :cond_0

    .line 1587
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph;->customLabelFormatter:Lcom/jjoe64/graphview/CustomLabelFormatter;

    invoke-interface {v0, p1, p2, p3}, Lcom/jjoe64/graphview/CustomLabelFormatter;->formatLabel(DZ)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 1593
    :cond_0
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph;->numberformatter:[Ljava/text/NumberFormat;

    aget-object v0, v0, p3

    if-nez v0, :cond_7

    .line 1594
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph;->numberformatter:[Ljava/text/NumberFormat;

    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v1

    aput-object v1, v0, p3

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 1595
    invoke-virtual {p0, v0}, Lcom/jjoe64/graphview/Graph;->getMaxX(Z)D

    move-result-wide v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/jjoe64/graphview/Graph;->getMaxY()D

    move-result-wide v1

    :goto_0
    if-eqz p3, :cond_2

    .line 1596
    invoke-virtual {p0, v0}, Lcom/jjoe64/graphview/Graph;->getMinX(Z)D

    move-result-wide v3

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/jjoe64/graphview/Graph;->getMinY()D

    move-result-wide v3

    :goto_1
    const/4 v5, 0x0

    sub-double/2addr v1, v3

    const-wide v3, 0x3fb999999999999aL    # 0.1

    cmpg-double v3, v1, v3

    if-gez v3, :cond_3

    .line 1598
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph;->numberformatter:[Ljava/text/NumberFormat;

    aget-object v0, v0, p3

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    goto :goto_2

    :cond_3
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpg-double v3, v1, v3

    if-gez v3, :cond_4

    .line 1600
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph;->numberformatter:[Ljava/text/NumberFormat;

    aget-object v0, v0, p3

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    goto :goto_2

    :cond_4
    const-wide/high16 v3, 0x4034000000000000L    # 20.0

    cmpg-double v3, v1, v3

    if-gez v3, :cond_5

    .line 1602
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph;->numberformatter:[Ljava/text/NumberFormat;

    aget-object v0, v0, p3

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    goto :goto_2

    :cond_5
    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    cmpg-double v1, v1, v3

    if-gez v1, :cond_6

    .line 1604
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph;->numberformatter:[Ljava/text/NumberFormat;

    aget-object v0, v0, p3

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    goto :goto_2

    .line 1606
    :cond_6
    iget-object v1, p0, Lcom/jjoe64/graphview/Graph;->numberformatter:[Ljava/text/NumberFormat;

    aget-object v1, v1, p3

    invoke-virtual {v1, v0}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 1609
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph;->numberformatter:[Ljava/text/NumberFormat;

    aget-object p3, v0, p3

    invoke-virtual {p3, p1, p2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCustomLabelFormatter()Lcom/jjoe64/graphview/CustomLabelFormatter;
    .locals 1

    .line 1616
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph;->customLabelFormatter:Lcom/jjoe64/graphview/CustomLabelFormatter;

    return-object v0
.end method

.method public getDayType(I)Lcom/senseonics/graph/GraphView$DAY_TYPE;
    .locals 2

    int-to-float p1, p1

    .line 1000
    sget v0, Lcom/senseonics/util/Utils;->daySubviewWidth:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 1001
    sget-object p1, Lcom/senseonics/graph/GraphView$DAY_TYPE;->THIRDWIDTH_2SECTION:Lcom/senseonics/graph/GraphView$DAY_TYPE;

    return-object p1

    .line 1003
    :cond_0
    sget v0, Lcom/senseonics/util/Utils;->daySubviewWidth:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 1004
    sget-object p1, Lcom/senseonics/graph/GraphView$DAY_TYPE;->HALFWIDTH_6SECTION:Lcom/senseonics/graph/GraphView$DAY_TYPE;

    return-object p1

    .line 1005
    :cond_1
    sget v0, Lcom/senseonics/util/Utils;->daySubviewWidth:F

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr v0, v1

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    .line 1006
    sget-object p1, Lcom/senseonics/graph/GraphView$DAY_TYPE;->WIDTHX2_12SECTION:Lcom/senseonics/graph/GraphView$DAY_TYPE;

    return-object p1

    .line 1007
    :cond_2
    sget v0, Lcom/senseonics/util/Utils;->daySubviewWidth:F

    const/high16 v1, 0x41000000    # 8.0f

    div-float/2addr v0, v1

    cmpl-float v0, p1, v0

    if-lez v0, :cond_3

    .line 1008
    sget-object p1, Lcom/senseonics/graph/GraphView$DAY_TYPE;->WIDTHX4_24SECTION:Lcom/senseonics/graph/GraphView$DAY_TYPE;

    return-object p1

    .line 1009
    :cond_3
    sget v0, Lcom/senseonics/util/Utils;->daySubviewWidth:F

    const/high16 v1, 0x41400000    # 12.0f

    div-float/2addr v0, v1

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_4

    .line 1010
    sget-object p1, Lcom/senseonics/graph/GraphView$DAY_TYPE;->WIDTHX8_TO_WIDTHX12_48SECTION:Lcom/senseonics/graph/GraphView$DAY_TYPE;

    return-object p1

    .line 1011
    :cond_4
    sget v0, Lcom/senseonics/util/Utils;->daySubviewWidth:F

    div-float/2addr v0, v1

    cmpg-float p1, p1, v0

    if-gez p1, :cond_5

    .line 1012
    sget-object p1, Lcom/senseonics/graph/GraphView$DAY_TYPE;->WIDTHX8_TO_WIDTHX12_48SECTION:Lcom/senseonics/graph/GraphView$DAY_TYPE;

    return-object p1

    .line 1014
    :cond_5
    sget-object p1, Lcom/senseonics/graph/GraphView$DAY_TYPE;->THIRDWIDTH_2SECTION:Lcom/senseonics/graph/GraphView$DAY_TYPE;

    return-object p1
.end method

.method public getDirection(FFLcom/senseonics/graph/util/GraphUtils$DIRECTION;)Lcom/senseonics/graph/util/GraphUtils$DIRECTION;
    .locals 1

    cmpg-float v0, p1, p2

    if-gez v0, :cond_0

    .line 1496
    sget-object p1, Lcom/senseonics/graph/util/GraphUtils$DIRECTION;->ASCENDANT:Lcom/senseonics/graph/util/GraphUtils$DIRECTION;

    return-object p1

    :cond_0
    cmpl-float p1, p1, p2

    if-lez p1, :cond_1

    .line 1498
    sget-object p1, Lcom/senseonics/graph/util/GraphUtils$DIRECTION;->DESCENDANT:Lcom/senseonics/graph/util/GraphUtils$DIRECTION;

    return-object p1

    :cond_1
    return-object p3
.end method

.method public getEventsManager()Lcom/jjoe64/graphview/LineGraphView$EventsManager;
    .locals 1

    .line 2065
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph;->eventsManager:Lcom/jjoe64/graphview/LineGraphView$EventsManager;

    return-object v0
.end method

.method public getGraphViewStyle()Lcom/jjoe64/graphview/GraphViewStyle;
    .locals 1

    .line 1623
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph;->graphViewStyle:Lcom/jjoe64/graphview/GraphViewStyle;

    return-object v0
.end method

.method public getLegendAlign()Lcom/jjoe64/graphview/Graph$LegendAlign;
    .locals 1

    .line 1632
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph;->legendAlign:Lcom/jjoe64/graphview/Graph$LegendAlign;

    return-object v0
.end method

.method public getLegendWidth()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1641
    invoke-virtual {p0}, Lcom/jjoe64/graphview/Graph;->getGraphViewStyle()Lcom/jjoe64/graphview/GraphViewStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jjoe64/graphview/GraphViewStyle;->getLegendWidth()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getManager()Lcom/senseonics/graph/GraphView$ScrollManager;
    .locals 1

    .line 2073
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph;->manager:Lcom/senseonics/graph/GraphView$ScrollManager;

    return-object v0
.end method

.method public getMaxScroll()D
    .locals 2

    .line 988
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph;->graphViewContentView:Lcom/jjoe64/graphview/Graph$GraphViewContentView;

    invoke-virtual {v0}, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->getMaxScroll()D

    move-result-wide v0

    return-wide v0
.end method

.method protected getMaxX(Z)D
    .locals 4

    .line 1655
    iget-boolean v0, p0, Lcom/jjoe64/graphview/Graph;->scrollableGraph:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-nez p1, :cond_0

    sget-wide v0, Lcom/senseonics/graph/util/GraphUtils;->viewportSize:D

    const-wide/16 v2, 0x0

    cmpl-double p1, v0, v2

    if-eqz p1, :cond_0

    .line 1658
    iget-wide v0, p0, Lcom/jjoe64/graphview/Graph;->viewportStart:D

    sget-wide v2, Lcom/senseonics/graph/util/GraphUtils;->viewportSize:D

    add-double/2addr v0, v2

    return-wide v0

    .line 1660
    :cond_0
    iget-object p1, p0, Lcom/jjoe64/graphview/Graph;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-double v0, p1

    return-wide v0
.end method

.method protected getMaxY()D
    .locals 2

    .line 1670
    sget v0, Lcom/senseonics/graph/util/GraphUtils;->glucoseMaximumLevel:I

    int-to-double v0, v0

    return-wide v0
.end method

.method protected getMinX(Z)D
    .locals 4

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    .line 1684
    sget-wide v2, Lcom/senseonics/graph/util/GraphUtils;->viewportSize:D

    cmpl-double p1, v2, v0

    if-eqz p1, :cond_0

    .line 1685
    iget-wide v0, p0, Lcom/jjoe64/graphview/Graph;->viewportStart:D

    return-wide v0

    :cond_0
    return-wide v0
.end method

.method protected getMinY()D
    .locals 8

    .line 1698
    iget-boolean v0, p0, Lcom/jjoe64/graphview/Graph;->manualYAxis:Z

    if-eqz v0, :cond_0

    .line 1699
    iget-wide v0, p0, Lcom/jjoe64/graphview/Graph;->manualMinYValue:D

    goto :goto_2

    :cond_0
    const-wide v0, 0x41dfffffffc00000L    # 2.147483647E9

    const/4 v2, 0x0

    move-wide v3, v0

    const/4 v0, 0x0

    .line 1702
    :goto_0
    iget-object v1, p0, Lcom/jjoe64/graphview/Graph;->graphSeries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1703
    invoke-direct {p0, v0}, Lcom/jjoe64/graphview/Graph;->getValues(I)[Lcom/jjoe64/graphview/GraphViewDataInterface;

    move-result-object v1

    move-wide v4, v3

    const/4 v3, 0x0

    .line 1704
    :goto_1
    array-length v6, v1

    if-ge v3, v6, :cond_2

    .line 1705
    aget-object v6, v1, v3

    invoke-interface {v6}, Lcom/jjoe64/graphview/GraphViewDataInterface;->getY()D

    move-result-wide v6

    cmpg-double v6, v6, v4

    if-gez v6, :cond_1

    .line 1706
    aget-object v4, v1, v3

    invoke-interface {v4}, Lcom/jjoe64/graphview/GraphViewDataInterface;->getY()D

    move-result-wide v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    move-wide v3, v4

    goto :goto_0

    .line 1709
    :cond_3
    :goto_2
    sget v0, Lcom/senseonics/graph/util/GraphUtils;->glucoseMinimumLevel:I

    int-to-double v0, v0

    return-wide v0
.end method

.method public getPosOnScreen(F)F
    .locals 7

    const/4 v0, 0x0

    .line 2047
    invoke-virtual {p0, v0}, Lcom/jjoe64/graphview/Graph;->getMaxX(Z)D

    move-result-wide v1

    .line 2048
    invoke-virtual {p0, v0}, Lcom/jjoe64/graphview/Graph;->getMinX(Z)D

    move-result-wide v3

    sub-double/2addr v1, v3

    float-to-double v5, p1

    sub-double/2addr v5, v3

    double-to-float p1, v5

    float-to-double v3, p1

    div-double/2addr v3, v1

    double-to-float p1, v3

    .line 2053
    iget v0, p0, Lcom/jjoe64/graphview/Graph;->graphwidth:F

    mul-float v0, v0, p1

    return v0
.end method

.method public getRectWidth()I
    .locals 1

    .line 984
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public abstract hideEvent()V
.end method

.method public abstract ifEventAtPosition(F)Lcom/senseonics/events/EventPoint;
.end method

.method public abstract ifEventClick(FF)Z
.end method

.method public abstract ifGlucoseAtPosition(F)Lcom/senseonics/graph/util/Glucose;
.end method

.method public isDisableTouch()Z
    .locals 1

    .line 1713
    iget-boolean v0, p0, Lcom/jjoe64/graphview/Graph;->disableTouch:Z

    return v0
.end method

.method public isScrollable()Z
    .locals 1

    .line 1717
    iget-boolean v0, p0, Lcom/jjoe64/graphview/Graph;->scrollable:Z

    return v0
.end method

.method public isShowLegend()Z
    .locals 1

    .line 1721
    iget-boolean v0, p0, Lcom/jjoe64/graphview/Graph;->showLegend:Z

    return v0
.end method

.method public redrawAll()V
    .locals 3

    .line 1729
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph;->numberformatter:[Ljava/text/NumberFormat;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1730
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph;->numberformatter:[Ljava/text/NumberFormat;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 1732
    invoke-virtual {p0}, Lcom/jjoe64/graphview/Graph;->invalidate()V

    .line 1733
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph;->graphViewContentView:Lcom/jjoe64/graphview/Graph$GraphViewContentView;

    invoke-virtual {v0}, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->invalidate()V

    return-void
.end method

.method public removeAllSeries()V
    .locals 2

    .line 1740
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph;->graphSeries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jjoe64/graphview/GraphViewSeries;

    .line 1741
    invoke-virtual {v1, p0}, Lcom/jjoe64/graphview/GraphViewSeries;->removeGraphView(Lcom/jjoe64/graphview/Graph;)V

    goto :goto_0

    .line 1743
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph;->graphSeries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1744
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph;->graphSeries:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 1746
    :cond_1
    invoke-virtual {p0}, Lcom/jjoe64/graphview/Graph;->redrawAll()V

    return-void
.end method

.method public removeSeries(I)V
    .locals 3

    if-ltz p1, :cond_1

    .line 1767
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph;->graphSeries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 1771
    :cond_0
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph;->graphSeries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jjoe64/graphview/GraphViewSeries;

    invoke-virtual {p0, p1}, Lcom/jjoe64/graphview/Graph;->removeSeries(Lcom/jjoe64/graphview/GraphViewSeries;)V

    return-void

    .line 1768
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No series at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeSeries(Lcom/jjoe64/graphview/GraphViewSeries;)V
    .locals 1

    .line 1756
    invoke-virtual {p1, p0}, Lcom/jjoe64/graphview/GraphViewSeries;->removeGraphView(Lcom/jjoe64/graphview/Graph;)V

    .line 1757
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph;->graphSeries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1758
    invoke-virtual {p0}, Lcom/jjoe64/graphview/Graph;->redrawAll()V

    return-void
.end method

.method public scrollToEnd()V
    .locals 4

    .line 1781
    iget-boolean v0, p0, Lcom/jjoe64/graphview/Graph;->scrollable:Z

    if-nez v0, :cond_0

    .line 1782
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This GraphView is not scrollable."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    .line 1783
    invoke-virtual {p0, v0}, Lcom/jjoe64/graphview/Graph;->getMaxX(Z)D

    move-result-wide v0

    .line 1784
    sget-wide v2, Lcom/senseonics/graph/util/GraphUtils;->viewportSize:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/jjoe64/graphview/Graph;->viewportStart:D

    .line 1789
    invoke-virtual {p0}, Lcom/jjoe64/graphview/Graph;->invalidate()V

    .line 1790
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph;->graphViewContentView:Lcom/jjoe64/graphview/Graph$GraphViewContentView;

    invoke-virtual {v0}, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->invalidate()V

    return-void
.end method

.method public setCustomLabelFormatter(Lcom/jjoe64/graphview/CustomLabelFormatter;)V
    .locals 0

    .line 1800
    iput-object p1, p0, Lcom/jjoe64/graphview/Graph;->customLabelFormatter:Lcom/jjoe64/graphview/CustomLabelFormatter;

    return-void
.end method

.method public setDisableTouch(Z)V
    .locals 0

    .line 1810
    iput-boolean p1, p0, Lcom/jjoe64/graphview/Graph;->disableTouch:Z

    return-void
.end method

.method public setEndDate(Ljava/util/Calendar;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/jjoe64/graphview/Graph;->endDate:Ljava/util/Calendar;

    return-void
.end method

.method public setEventGroups(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/senseonics/events/EventPoint;",
            ">;)V"
        }
    .end annotation

    .line 1298
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph;->eventGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1299
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/events/EventPoint;

    const/4 v1, 0x0

    .line 1323
    iget-object v2, p0, Lcom/jjoe64/graphview/Graph;->eventGroups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jjoe64/graphview/Graph$EventGroup;

    .line 1324
    invoke-virtual {v3, v0}, Lcom/jjoe64/graphview/Graph$EventGroup;->isNearOnScreen(Lcom/senseonics/events/EventPoint;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1325
    invoke-virtual {v3, v0}, Lcom/jjoe64/graphview/Graph$EventGroup;->addEvent(Lcom/senseonics/events/EventPoint;)V

    const/4 v1, 0x1

    :cond_2
    if-nez v1, :cond_0

    .line 1331
    new-instance v1, Lcom/jjoe64/graphview/Graph$EventGroup;

    invoke-virtual {v0}, Lcom/senseonics/events/EventPoint;->getX()F

    move-result v4

    .line 1332
    invoke-virtual {v0}, Lcom/senseonics/events/EventPoint;->getGlucoseLevel()I

    move-result v2

    int-to-float v5, v2

    .line 1333
    invoke-virtual {v0}, Lcom/senseonics/events/EventPoint;->getxOnScreen()F

    move-result v6

    invoke-virtual {v0}, Lcom/senseonics/events/EventPoint;->getyOnScreen()F

    move-result v7

    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/jjoe64/graphview/Graph$EventGroup;-><init>(Lcom/jjoe64/graphview/Graph;FFFF)V

    .line 1334
    invoke-virtual {v1, v0}, Lcom/jjoe64/graphview/Graph$EventGroup;->addEvent(Lcom/senseonics/events/EventPoint;)V

    .line 1335
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph;->eventGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setEventPoints(Ljava/util/List;Ljava/util/Calendar;Ljava/util/Calendar;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/senseonics/events/EventPoint;",
            ">;",
            "Ljava/util/Calendar;",
            "Ljava/util/Calendar;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1202
    iput-object p1, p0, Lcom/jjoe64/graphview/Graph;->eventPoints:Ljava/util/List;

    .line 1203
    iget-object p1, p0, Lcom/jjoe64/graphview/Graph;->eventPoints:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/events/EventPoint;

    .line 1204
    iget-object v1, p0, Lcom/jjoe64/graphview/Graph;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, p2, p3}, Lcom/senseonics/events/EventPoint;->setRect(Landroid/graphics/Rect;Ljava/util/Calendar;Ljava/util/Calendar;)V

    goto :goto_0

    .line 1205
    :cond_0
    iget-object p1, p0, Lcom/jjoe64/graphview/Graph;->eventGroups:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1207
    invoke-virtual {p0}, Lcom/jjoe64/graphview/Graph;->setUpEventGroups()V

    .line 1209
    :cond_1
    invoke-virtual {p0}, Lcom/jjoe64/graphview/Graph;->redrawAll()V

    return-void
.end method

.method public setEventsManager(Lcom/jjoe64/graphview/LineGraphView$EventsManager;)V
    .locals 0

    .line 2069
    iput-object p1, p0, Lcom/jjoe64/graphview/Graph;->eventsManager:Lcom/jjoe64/graphview/LineGraphView$EventsManager;

    return-void
.end method

.method public setGlucosePoints(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/senseonics/graph/util/Glucose;",
            ">;>;)V"
        }
    .end annotation

    .line 1342
    iput-object p1, p0, Lcom/jjoe64/graphview/Graph;->glucosePoints:Ljava/util/List;

    .line 1343
    iget-object p1, p0, Lcom/jjoe64/graphview/Graph;->glucosePoints:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1344
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/senseonics/graph/util/Glucose;

    .line 1345
    iget-object v2, p0, Lcom/jjoe64/graphview/Graph;->rect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/jjoe64/graphview/Graph;->startDate:Ljava/util/Calendar;

    iget-object v4, p0, Lcom/jjoe64/graphview/Graph;->endDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2, v3, v4}, Lcom/senseonics/graph/util/Glucose;->setRect(Landroid/graphics/Rect;Ljava/util/Calendar;Ljava/util/Calendar;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setGraphViewStyle(Lcom/jjoe64/graphview/GraphViewStyle;)V
    .locals 0

    .line 1819
    iput-object p1, p0, Lcom/jjoe64/graphview/Graph;->graphViewStyle:Lcom/jjoe64/graphview/GraphViewStyle;

    return-void
.end method

.method public setIsLandscape(Z)V
    .locals 0

    .line 1982
    iput-boolean p1, p0, Lcom/jjoe64/graphview/Graph;->isLandscape:Z

    return-void
.end method

.method public setLegendAlign(Lcom/jjoe64/graphview/Graph$LegendAlign;)V
    .locals 0

    .line 1835
    iput-object p1, p0, Lcom/jjoe64/graphview/Graph;->legendAlign:Lcom/jjoe64/graphview/Graph$LegendAlign;

    return-void
.end method

.method public setLegendWidth(F)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1846
    invoke-virtual {p0}, Lcom/jjoe64/graphview/Graph;->getGraphViewStyle()Lcom/jjoe64/graphview/GraphViewStyle;

    move-result-object v0

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/jjoe64/graphview/GraphViewStyle;->setLegendWidth(I)V

    return-void
.end method

.method public setManager(Lcom/senseonics/graph/GraphView$ScrollManager;)V
    .locals 0

    .line 2077
    iput-object p1, p0, Lcom/jjoe64/graphview/Graph;->manager:Lcom/senseonics/graph/GraphView$ScrollManager;

    return-void
.end method

.method public setManualYAxis(Z)V
    .locals 0

    .line 1857
    iput-boolean p1, p0, Lcom/jjoe64/graphview/Graph;->manualYAxis:Z

    return-void
.end method

.method public declared-synchronized setScalable(Z)V
    .locals 2

    monitor-enter p0

    .line 1883
    :try_start_0
    iput-boolean p1, p0, Lcom/jjoe64/graphview/Graph;->scalable:Z

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1885
    iget-object p1, p0, Lcom/jjoe64/graphview/Graph;->scaleDetector:Lcom/jjoe64/graphview/ScaleGestureDetector;

    if-nez p1, :cond_0

    .line 1886
    iput-boolean v0, p0, Lcom/jjoe64/graphview/Graph;->scrollable:Z

    .line 1887
    new-instance p1, Lcom/jjoe64/graphview/ScaleGestureDetector;

    invoke-virtual {p0}, Lcom/jjoe64/graphview/Graph;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/jjoe64/graphview/Graph$1;

    invoke-direct {v1, p0}, Lcom/jjoe64/graphview/Graph$1;-><init>(Lcom/jjoe64/graphview/Graph;)V

    invoke-direct {p1, v0, v1}, Lcom/jjoe64/graphview/ScaleGestureDetector;-><init>(Landroid/content/Context;Lcom/jjoe64/graphview/ScaleGestureDetector$SimpleOnScaleGestureListener;)V

    iput-object p1, p0, Lcom/jjoe64/graphview/Graph;->scaleDetector:Lcom/jjoe64/graphview/ScaleGestureDetector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1968
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 1882
    monitor-exit p0

    throw p1
.end method

.method public setScaleManager(Lcom/jjoe64/graphview/Graph$ScaleManager;)V
    .locals 0

    .line 1879
    iput-object p1, p0, Lcom/jjoe64/graphview/Graph;->scaleManager:Lcom/jjoe64/graphview/Graph$ScaleManager;

    return-void
.end method

.method public setScrollable(Z)V
    .locals 0

    .line 1978
    iput-boolean p1, p0, Lcom/jjoe64/graphview/Graph;->scrollable:Z

    return-void
.end method

.method public setShowLegend(Z)V
    .locals 0

    .line 1986
    iput-boolean p1, p0, Lcom/jjoe64/graphview/Graph;->showLegend:Z

    return-void
.end method

.method public setStartDate(Ljava/util/Calendar;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/jjoe64/graphview/Graph;->startDate:Ljava/util/Calendar;

    return-void
.end method

.method public setUpEventGroups()V
    .locals 10

    const/4 v0, 0x0

    .line 1214
    invoke-virtual {p0, v0}, Lcom/jjoe64/graphview/Graph;->getMaxX(Z)D

    move-result-wide v1

    .line 1215
    invoke-virtual {p0, v0}, Lcom/jjoe64/graphview/Graph;->getMinX(Z)D

    move-result-wide v3

    sub-double/2addr v1, v3

    .line 1218
    iget-object v5, p0, Lcom/jjoe64/graphview/Graph;->eventPoints:Ljava/util/List;

    .line 1220
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_9

    .line 1221
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/senseonics/events/EventPoint;

    .line 1222
    invoke-virtual {v6}, Lcom/senseonics/events/EventPoint;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v7

    .line 1225
    invoke-virtual {p0}, Lcom/jjoe64/graphview/Graph;->isScrollable()Z

    move-result v8

    const/high16 v9, -0x3db80000    # -50.0f

    if-nez v8, :cond_0

    iget-boolean v8, p0, Lcom/jjoe64/graphview/Graph;->isLandscape:Z

    if-eqz v8, :cond_1

    .line 1228
    :cond_0
    sget-object v8, Lcom/senseonics/util/Utils$EVENT_TYPE;->ALARM_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne v7, v8, :cond_1

    .line 1229
    invoke-virtual {v6, v9}, Lcom/senseonics/events/EventPoint;->setxOnScreen(F)V

    .line 1230
    invoke-virtual {v6, v9}, Lcom/senseonics/events/EventPoint;->setyOnScreen(F)V

    goto/16 :goto_3

    .line 1236
    :cond_1
    sget-object v8, Lcom/senseonics/util/Utils$EVENT_TYPE;->RATE_ALERT_EVENT_FALLING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-eq v7, v8, :cond_8

    sget-object v8, Lcom/senseonics/util/Utils$EVENT_TYPE;->RATE_ALERT_EVENT_RISING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne v7, v8, :cond_2

    goto :goto_2

    .line 1244
    :cond_2
    invoke-virtual {v6}, Lcom/senseonics/events/EventPoint;->getGlucoseLevel()I

    move-result v8

    .line 1248
    sget-object v9, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_RED:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne v7, v9, :cond_4

    .line 1249
    invoke-virtual {v6}, Lcom/senseonics/events/EventPoint;->getNotificationEventType()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v7

    .line 1250
    sget-object v9, Lcom/senseonics/util/TransmitterMessageCode;->SeriouslyLowAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-eq v7, v9, :cond_3

    sget-object v9, Lcom/senseonics/util/TransmitterMessageCode;->SeriouslyHighAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v7, v9, :cond_4

    .line 1253
    :cond_3
    sget v9, Lcom/senseonics/util/Utils;->GLUCOSE_LEVEL_UNKNOWN:I

    if-ne v8, v9, :cond_4

    .line 1254
    sget-object v9, Lcom/senseonics/util/TransmitterMessageCode;->SeriouslyHighAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v7, v9, :cond_4

    .line 1255
    sget v7, Lcom/senseonics/util/Utils;->GLUCOSE_MAX:I

    add-int/lit8 v8, v7, 0x1

    .line 1262
    :cond_4
    sget v7, Lcom/senseonics/util/Utils;->GLUCOSE_LEVEL_UNKNOWN:I

    if-ne v8, v7, :cond_5

    .line 1263
    sget v7, Lcom/senseonics/util/Utils;->EVENT_POSITION:I

    iget-object v8, p0, Lcom/jjoe64/graphview/Graph;->rect:Landroid/graphics/Rect;

    invoke-static {v7, v8}, Lcom/senseonics/graph/util/GraphUtils;->getPositionYForGlucose(ILandroid/graphics/Rect;)F

    move-result v7

    goto :goto_1

    .line 1266
    :cond_5
    sget v7, Lcom/senseonics/util/Utils;->GLUCOSE_MAX:I

    if-le v8, v7, :cond_6

    .line 1267
    sget v7, Lcom/senseonics/util/Utils;->GLUCOSE_MAX:I

    iget-object v8, p0, Lcom/jjoe64/graphview/Graph;->rect:Landroid/graphics/Rect;

    invoke-static {v7, v8}, Lcom/senseonics/graph/util/GraphUtils;->getPositionYForGlucose(ILandroid/graphics/Rect;)F

    move-result v7

    goto :goto_1

    .line 1268
    :cond_6
    sget v7, Lcom/senseonics/util/Utils;->GLUCOSE_MIN_Y:I

    if-ge v8, v7, :cond_7

    .line 1269
    sget v7, Lcom/senseonics/util/Utils;->GLUCOSE_MIN_Y:I

    iget-object v8, p0, Lcom/jjoe64/graphview/Graph;->rect:Landroid/graphics/Rect;

    invoke-static {v7, v8}, Lcom/senseonics/graph/util/GraphUtils;->getPositionYForGlucose(ILandroid/graphics/Rect;)F

    move-result v7

    goto :goto_1

    .line 1271
    :cond_7
    iget-object v7, p0, Lcom/jjoe64/graphview/Graph;->rect:Landroid/graphics/Rect;

    invoke-static {v8, v7}, Lcom/senseonics/graph/util/GraphUtils;->getPositionYForGlucose(ILandroid/graphics/Rect;)F

    move-result v7

    .line 1275
    :goto_1
    invoke-virtual {v6}, Lcom/senseonics/events/EventPoint;->getX()F

    move-result v8

    float-to-double v8, v8

    sub-double/2addr v8, v3

    double-to-float v8, v8

    float-to-double v8, v8

    div-double/2addr v8, v1

    double-to-float v8, v8

    .line 1277
    iget v9, p0, Lcom/jjoe64/graphview/Graph;->graphwidth:F

    mul-float v9, v9, v8

    .line 1279
    invoke-virtual {v6, v9}, Lcom/senseonics/events/EventPoint;->setxOnScreen(F)V

    .line 1280
    invoke-virtual {v6, v7}, Lcom/senseonics/events/EventPoint;->setyOnScreen(F)V

    goto :goto_3

    .line 1238
    :cond_8
    :goto_2
    invoke-virtual {v6, v9}, Lcom/senseonics/events/EventPoint;->setxOnScreen(F)V

    .line 1239
    invoke-virtual {v6, v9}, Lcom/senseonics/events/EventPoint;->setyOnScreen(F)V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 1283
    :cond_9
    invoke-virtual {p0, v5}, Lcom/jjoe64/graphview/Graph;->setEventGroups(Ljava/util/List;)V

    return-void
.end method

.method public setVerticalLineManager(Lcom/senseonics/graph/VerticalLineManager;)V
    .locals 0

    .line 996
    iput-object p1, p0, Lcom/jjoe64/graphview/Graph;->verticalLineManager:Lcom/senseonics/graph/VerticalLineManager;

    return-void
.end method

.method public setViewPort(DD)V
    .locals 7

    const-wide/16 v0, 0x0

    cmpg-double v0, p3, v0

    if-gez v0, :cond_0

    .line 2012
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Viewport size must be greater than 0!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2016
    :cond_0
    iput-wide p1, p0, Lcom/jjoe64/graphview/Graph;->viewportStart:D

    .line 2018
    iget-object p1, p0, Lcom/jjoe64/graphview/Graph;->manager:Lcom/senseonics/graph/GraphView$ScrollManager;

    if-eqz p1, :cond_2

    .line 2019
    iget-wide p1, p0, Lcom/jjoe64/graphview/Graph;->viewportStart:D

    sput-wide p1, Lcom/senseonics/graph/util/GraphUtils;->viewportStart:D

    .line 2020
    sput-wide p3, Lcom/senseonics/graph/util/GraphUtils;->viewportSize:D

    .line 2022
    iget-object p1, p0, Lcom/jjoe64/graphview/Graph;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object p2, p0, Lcom/jjoe64/graphview/Graph;->startDate:Ljava/util/Calendar;

    iget-object p3, p0, Lcom/jjoe64/graphview/Graph;->endDate:Ljava/util/Calendar;

    iget-wide v0, p0, Lcom/jjoe64/graphview/Graph;->viewportStart:D

    double-to-float p4, v0

    invoke-static {p1, p2, p3, p4}, Lcom/senseonics/graph/util/GraphUtils;->getDateForPositionX(ILjava/util/Calendar;Ljava/util/Calendar;F)Ljava/util/Calendar;

    move-result-object p1

    .line 2025
    iget-object p2, p0, Lcom/jjoe64/graphview/Graph;->rect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    iget-object p3, p0, Lcom/jjoe64/graphview/Graph;->startDate:Ljava/util/Calendar;

    iget-object p4, p0, Lcom/jjoe64/graphview/Graph;->endDate:Ljava/util/Calendar;

    iget-wide v0, p0, Lcom/jjoe64/graphview/Graph;->viewportStart:D

    double-to-float v0, v0

    float-to-double v0, v0

    sget-wide v2, Lcom/senseonics/graph/util/GraphUtils;->viewportSize:D

    add-double/2addr v0, v2

    double-to-float v0, v0

    invoke-static {p2, p3, p4, v0}, Lcom/senseonics/graph/util/GraphUtils;->getDateForPositionX(ILjava/util/Calendar;Ljava/util/Calendar;F)Ljava/util/Calendar;

    move-result-object p2

    .line 2029
    iget-object p3, p0, Lcom/jjoe64/graphview/Graph;->rect:Landroid/graphics/Rect;

    .line 2031
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    iget-object p4, p0, Lcom/jjoe64/graphview/Graph;->startDate:Ljava/util/Calendar;

    iget-object v0, p0, Lcom/jjoe64/graphview/Graph;->endDate:Ljava/util/Calendar;

    iget-wide v1, p0, Lcom/jjoe64/graphview/Graph;->viewportStart:D

    double-to-float v1, v1

    float-to-double v1, v1

    sget-wide v3, Lcom/senseonics/graph/util/GraphUtils;->viewportSize:D

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    div-double/2addr v3, v5

    add-double/2addr v1, v3

    double-to-float v1, v1

    .line 2030
    invoke-static {p3, p4, v0, v1}, Lcom/senseonics/graph/util/GraphUtils;->getDateForPositionX(ILjava/util/Calendar;Ljava/util/Calendar;F)Ljava/util/Calendar;

    move-result-object p3

    .line 2036
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 2037
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 2038
    sget-wide v2, Lcom/senseonics/graph/util/GraphUtils;->DAY:J

    cmp-long p4, v0, v2

    if-lez p4, :cond_1

    .line 2039
    iget-object p3, p0, Lcom/jjoe64/graphview/Graph;->manager:Lcom/senseonics/graph/GraphView$ScrollManager;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Lcom/senseonics/graph/GraphView$ScrollManager;->dayChanged(Ljava/util/Date;Ljava/util/Date;)V

    goto :goto_0

    .line 2041
    :cond_1
    iget-object p1, p0, Lcom/jjoe64/graphview/Graph;->manager:Lcom/senseonics/graph/GraphView$ScrollManager;

    invoke-virtual {p3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/senseonics/graph/GraphView$ScrollManager;->dayChanged(Ljava/util/Date;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public slide(F)V
    .locals 1

    .line 992
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph;->graphViewContentView:Lcom/jjoe64/graphview/Graph$GraphViewContentView;

    invoke-static {v0, p1}, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->access$2200(Lcom/jjoe64/graphview/Graph$GraphViewContentView;F)V

    return-void
.end method

.method public slideBackToEnd()V
    .locals 1

    .line 2061
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph;->graphViewContentView:Lcom/jjoe64/graphview/Graph$GraphViewContentView;

    invoke-static {v0}, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->access$2500(Lcom/jjoe64/graphview/Graph$GraphViewContentView;)V

    return-void
.end method

.method public slideBackToStart()V
    .locals 1

    .line 2057
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph;->graphViewContentView:Lcom/jjoe64/graphview/Graph$GraphViewContentView;

    invoke-static {v0}, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->access$2400(Lcom/jjoe64/graphview/Graph$GraphViewContentView;)V

    return-void
.end method

.method public subDivideGlucosePoints([Lcom/jjoe64/graphview/GraphViewDataInterface;)Ljava/util/ArrayList;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/jjoe64/graphview/GraphViewDataInterface;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/jjoe64/graphview/Graph$GlucoseSection;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1353
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    .line 1355
    array-length v4, v1

    const/4 v5, 0x1

    if-le v4, v5, :cond_5

    .line 1357
    sget-object v4, Lcom/senseonics/graph/util/GraphUtils$DIRECTION;->ASCENDANT:Lcom/senseonics/graph/util/GraphUtils$DIRECTION;

    .line 1359
    aget-object v6, v1, v3

    invoke-interface {v6}, Lcom/jjoe64/graphview/GraphViewDataInterface;->getY()D

    move-result-wide v6

    double-to-float v6, v6

    .line 1360
    aget-object v7, v1, v5

    invoke-interface {v7}, Lcom/jjoe64/graphview/GraphViewDataInterface;->getY()D

    move-result-wide v7

    double-to-float v7, v7

    .line 1364
    invoke-virtual {v0, v6, v7, v4}, Lcom/jjoe64/graphview/Graph;->getDirection(FFLcom/senseonics/graph/util/GraphUtils$DIRECTION;)Lcom/senseonics/graph/util/GraphUtils$DIRECTION;

    move-result-object v4

    .line 1365
    aget-object v6, v1, v3

    .line 1366
    invoke-interface {v6}, Lcom/jjoe64/graphview/GraphViewDataInterface;->getY()D

    move-result-wide v6

    double-to-int v6, v6

    .line 1365
    invoke-static {v6, v4}, Lcom/senseonics/graph/util/GraphUtils;->getGlucoseLevelColor(ILcom/senseonics/graph/util/GraphUtils$DIRECTION;)Lcom/senseonics/graph/util/GraphUtils$COLOR;

    move-result-object v6

    .line 1368
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1369
    new-instance v8, Lcom/jjoe64/graphview/Graph$GraphViewData;

    aget-object v9, v1, v3

    invoke-interface {v9}, Lcom/jjoe64/graphview/GraphViewDataInterface;->getX()D

    move-result-wide v9

    aget-object v3, v1, v3

    .line 1370
    invoke-interface {v3}, Lcom/jjoe64/graphview/GraphViewDataInterface;->getY()D

    move-result-wide v11

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/jjoe64/graphview/Graph$GraphViewData;-><init>(DD)V

    .line 1369
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    .line 1374
    :goto_0
    array-length v8, v1

    if-ge v3, v8, :cond_6

    .line 1377
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v5

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/jjoe64/graphview/Graph$GraphViewData;

    .line 1378
    invoke-virtual {v8}, Lcom/jjoe64/graphview/Graph$GraphViewData;->getY()D

    move-result-wide v8

    double-to-float v8, v8

    .line 1379
    aget-object v9, v1, v3

    invoke-interface {v9}, Lcom/jjoe64/graphview/GraphViewDataInterface;->getY()D

    move-result-wide v9

    double-to-float v9, v9

    .line 1381
    invoke-virtual {v0, v8, v9, v4}, Lcom/jjoe64/graphview/Graph;->getDirection(FFLcom/senseonics/graph/util/GraphUtils$DIRECTION;)Lcom/senseonics/graph/util/GraphUtils$DIRECTION;

    move-result-object v4

    .line 1383
    iget-object v10, v0, Lcom/jjoe64/graphview/Graph;->rect:Landroid/graphics/Rect;

    invoke-static {v8, v9, v10}, Lcom/senseonics/graph/util/GraphUtils;->getGlucoseLevelBetween(FFLandroid/graphics/Rect;)I

    move-result v10

    if-nez v10, :cond_0

    float-to-int v6, v8

    .line 1386
    invoke-static {v6, v4}, Lcom/senseonics/graph/util/GraphUtils;->getGlucoseLevelColor(ILcom/senseonics/graph/util/GraphUtils$DIRECTION;)Lcom/senseonics/graph/util/GraphUtils$COLOR;

    move-result-object v6

    .line 1388
    aget-object v10, v1, v3

    invoke-interface {v10}, Lcom/jjoe64/graphview/GraphViewDataInterface;->getY()D

    move-result-wide v10

    double-to-int v10, v10

    .line 1391
    :cond_0
    invoke-static {v10, v4}, Lcom/senseonics/graph/util/GraphUtils;->getGlucoseLevelColor(ILcom/senseonics/graph/util/GraphUtils$DIRECTION;)Lcom/senseonics/graph/util/GraphUtils$COLOR;

    move-result-object v10

    if-eq v6, v10, :cond_3

    .line 1397
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int/2addr v10, v5

    .line 1396
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/jjoe64/graphview/Graph$GraphViewData;

    .line 1397
    invoke-virtual {v10}, Lcom/jjoe64/graphview/Graph$GraphViewData;->getX()D

    move-result-wide v10

    double-to-float v10, v10

    .line 1398
    aget-object v11, v1, v3

    invoke-interface {v11}, Lcom/jjoe64/graphview/GraphViewDataInterface;->getX()D

    move-result-wide v11

    double-to-float v11, v11

    .line 1400
    iget-object v12, v0, Lcom/jjoe64/graphview/Graph;->rect:Landroid/graphics/Rect;

    invoke-static {v8, v9, v12}, Lcom/senseonics/graph/util/GraphUtils;->getGlucoseLevelBetween(FFLandroid/graphics/Rect;)I

    move-result v12

    int-to-float v13, v12

    float-to-int v14, v9

    .line 1403
    iget-object v15, v0, Lcom/jjoe64/graphview/Graph;->rect:Landroid/graphics/Rect;

    .line 1404
    invoke-static {v14, v15}, Lcom/senseonics/graph/util/GraphUtils;->getPositionYForGlucose(ILandroid/graphics/Rect;)F

    move-result v14

    float-to-int v15, v8

    iget-object v5, v0, Lcom/jjoe64/graphview/Graph;->rect:Landroid/graphics/Rect;

    .line 1405
    invoke-static {v15, v5}, Lcom/senseonics/graph/util/GraphUtils;->getPositionYForGlucose(ILandroid/graphics/Rect;)F

    move-result v5

    float-to-int v15, v13

    move/from16 v16, v12

    iget-object v12, v0, Lcom/jjoe64/graphview/Graph;->rect:Landroid/graphics/Rect;

    .line 1406
    invoke-static {v15, v12}, Lcom/senseonics/graph/util/GraphUtils;->getPositionYForGlucose(ILandroid/graphics/Rect;)F

    move-result v12

    .line 1403
    invoke-static {v11, v14, v10, v5, v12}, Lcom/senseonics/graph/util/GraphUtils;->getXOnLine(FFFFF)F

    move-result v5

    const/4 v10, 0x0

    cmpl-float v10, v13, v10

    if-nez v10, :cond_1

    .line 1410
    iget-object v10, v0, Lcom/jjoe64/graphview/Graph;->rect:Landroid/graphics/Rect;

    invoke-static {v8, v9, v10}, Lcom/senseonics/graph/util/GraphUtils;->getGlucoseLevelBetween(FFLandroid/graphics/Rect;)I

    move-result v12

    goto :goto_1

    :cond_1
    move/from16 v12, v16

    .line 1414
    :goto_1
    new-instance v8, Lcom/jjoe64/graphview/Graph$GraphViewData;

    float-to-double v10, v5

    float-to-double v14, v13

    invoke-direct {v8, v10, v11, v14, v15}, Lcom/jjoe64/graphview/Graph$GraphViewData;-><init>(DD)V

    .line 1415
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1418
    new-instance v5, Lcom/jjoe64/graphview/Graph$GlucoseSection;

    invoke-direct {v5, v7, v6}, Lcom/jjoe64/graphview/Graph$GlucoseSection;-><init>(Ljava/util/ArrayList;Lcom/senseonics/graph/util/GraphUtils$COLOR;)V

    .line 1420
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1423
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1424
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    cmpl-float v6, v13, v9

    if-nez v6, :cond_2

    add-int/lit8 v6, v3, 0x1

    .line 1425
    array-length v7, v1

    if-ge v6, v7, :cond_2

    .line 1426
    aget-object v6, v1, v6

    invoke-interface {v6}, Lcom/jjoe64/graphview/GraphViewDataInterface;->getY()D

    move-result-wide v6

    double-to-float v9, v6

    .line 1428
    :cond_2
    invoke-virtual {v0, v13, v9, v4}, Lcom/jjoe64/graphview/Graph;->getDirection(FFLcom/senseonics/graph/util/GraphUtils$DIRECTION;)Lcom/senseonics/graph/util/GraphUtils$DIRECTION;

    move-result-object v4

    .line 1429
    invoke-static {v12, v4}, Lcom/senseonics/graph/util/GraphUtils;->getGlucoseLevelColor(ILcom/senseonics/graph/util/GraphUtils$DIRECTION;)Lcom/senseonics/graph/util/GraphUtils$COLOR;

    move-result-object v6

    move-object v7, v5

    const/4 v8, 0x1

    goto :goto_2

    .line 1433
    :cond_3
    new-instance v5, Lcom/jjoe64/graphview/Graph$GraphViewData;

    aget-object v8, v1, v3

    .line 1434
    invoke-interface {v8}, Lcom/jjoe64/graphview/GraphViewDataInterface;->getX()D

    move-result-wide v8

    aget-object v10, v1, v3

    invoke-interface {v10}, Lcom/jjoe64/graphview/GraphViewDataInterface;->getY()D

    move-result-wide v10

    invoke-direct {v5, v8, v9, v10, v11}, Lcom/jjoe64/graphview/Graph$GraphViewData;-><init>(DD)V

    .line 1433
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1436
    array-length v5, v1

    const/4 v8, 0x1

    sub-int/2addr v5, v8

    if-ne v3, v5, :cond_4

    .line 1437
    new-instance v5, Lcom/jjoe64/graphview/Graph$GlucoseSection;

    invoke-direct {v5, v7, v6}, Lcom/jjoe64/graphview/Graph$GlucoseSection;-><init>(Ljava/util/ArrayList;Lcom/senseonics/graph/util/GraphUtils$COLOR;)V

    .line 1439
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v3, v3, 0x1

    :goto_2
    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_5
    if-eqz v1, :cond_6

    .line 1447
    aget-object v4, v1, v3

    .line 1448
    invoke-interface {v4}, Lcom/jjoe64/graphview/GraphViewDataInterface;->getY()D

    move-result-wide v4

    double-to-int v4, v4

    sget-object v5, Lcom/senseonics/graph/util/GraphUtils$DIRECTION;->ASCENDANT:Lcom/senseonics/graph/util/GraphUtils$DIRECTION;

    .line 1447
    invoke-static {v4, v5}, Lcom/senseonics/graph/util/GraphUtils;->getGlucoseLevelColor(ILcom/senseonics/graph/util/GraphUtils$DIRECTION;)Lcom/senseonics/graph/util/GraphUtils$COLOR;

    move-result-object v4

    .line 1450
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1451
    new-instance v6, Lcom/jjoe64/graphview/Graph$GraphViewData;

    aget-object v7, v1, v3

    invoke-interface {v7}, Lcom/jjoe64/graphview/GraphViewDataInterface;->getX()D

    move-result-wide v7

    aget-object v1, v1, v3

    .line 1452
    invoke-interface {v1}, Lcom/jjoe64/graphview/GraphViewDataInterface;->getY()D

    move-result-wide v9

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/jjoe64/graphview/Graph$GraphViewData;-><init>(DD)V

    .line 1451
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1455
    new-instance v1, Lcom/jjoe64/graphview/Graph$GlucoseSection;

    invoke-direct {v1, v5, v4}, Lcom/jjoe64/graphview/Graph$GlucoseSection;-><init>(Ljava/util/ArrayList;Lcom/senseonics/graph/util/GraphUtils$COLOR;)V

    .line 1457
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    return-object v2
.end method
