.class public Lcom/jjoe64/graphview/GraphViewSeries$GraphViewSeriesStyle;
.super Ljava/lang/Object;
.source "GraphViewSeries.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jjoe64/graphview/GraphViewSeries;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GraphViewSeriesStyle"
.end annotation


# instance fields
.field public color:I

.field public thickness:I

.field private valueDependentColor:Lcom/jjoe64/graphview/ValueDependentColor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0xff8834

    .line 34
    iput v0, p0, Lcom/jjoe64/graphview/GraphViewSeries$GraphViewSeriesStyle;->color:I

    const/4 v0, 0x3

    .line 35
    iput v0, p0, Lcom/jjoe64/graphview/GraphViewSeries$GraphViewSeriesStyle;->thickness:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0xff8834

    .line 34
    iput v0, p0, Lcom/jjoe64/graphview/GraphViewSeries$GraphViewSeriesStyle;->color:I

    const/4 v0, 0x3

    .line 35
    iput v0, p0, Lcom/jjoe64/graphview/GraphViewSeries$GraphViewSeriesStyle;->thickness:I

    .line 43
    iput p1, p0, Lcom/jjoe64/graphview/GraphViewSeries$GraphViewSeriesStyle;->color:I

    .line 44
    iput p2, p0, Lcom/jjoe64/graphview/GraphViewSeries$GraphViewSeriesStyle;->thickness:I

    return-void
.end method


# virtual methods
.method public getValueDependentColor()Lcom/jjoe64/graphview/ValueDependentColor;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/jjoe64/graphview/GraphViewSeries$GraphViewSeriesStyle;->valueDependentColor:Lcom/jjoe64/graphview/ValueDependentColor;

    return-object v0
.end method

.method public setValueDependentColor(Lcom/jjoe64/graphview/ValueDependentColor;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/jjoe64/graphview/GraphViewSeries$GraphViewSeriesStyle;->valueDependentColor:Lcom/jjoe64/graphview/ValueDependentColor;

    return-void
.end method
