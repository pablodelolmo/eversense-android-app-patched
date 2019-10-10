.class public Lcom/senseonics/util/StatisticsAdapter;
.super Landroid/widget/BaseAdapter;
.source "StatisticsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/util/StatisticsAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private grayColor:I

.field private inflater:Landroid/view/LayoutInflater;

.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Statistics;",
            ">;"
        }
    .end annotation
.end field

.field private whiteColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Statistics;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/senseonics/util/StatisticsAdapter;->context:Landroid/content/Context;

    .line 25
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/util/StatisticsAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 26
    iput-object p2, p0, Lcom/senseonics/util/StatisticsAdapter;->items:Ljava/util/ArrayList;

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f060042

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/senseonics/util/StatisticsAdapter;->grayColor:I

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x106000d

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/senseonics/util/StatisticsAdapter;->whiteColor:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/senseonics/util/StatisticsAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/senseonics/util/StatisticsAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    if-nez p2, :cond_0

    .line 54
    new-instance p2, Lcom/senseonics/util/StatisticsAdapter$ViewHolder;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/senseonics/util/StatisticsAdapter$ViewHolder;-><init>(Lcom/senseonics/util/StatisticsAdapter;Lcom/senseonics/util/StatisticsAdapter$1;)V

    .line 55
    iget-object v0, p0, Lcom/senseonics/util/StatisticsAdapter;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0b00d2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f090265

    .line 56
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/senseonics/util/StatisticsAdapter$ViewHolder;->startTextView:Landroid/widget/TextView;

    const v0, 0x7f090069

    .line 57
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/senseonics/util/StatisticsAdapter$ViewHolder;->avgTextView:Landroid/widget/TextView;

    const v0, 0x7f090189

    .line 58
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/senseonics/util/StatisticsAdapter$ViewHolder;->lowTextView:Landroid/widget/TextView;

    const v0, 0x7f090133

    .line 59
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/senseonics/util/StatisticsAdapter$ViewHolder;->highTextView:Landroid/widget/TextView;

    const v0, 0x7f0900ae

    .line 60
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/senseonics/util/StatisticsAdapter$ViewHolder;->countTextView:Landroid/widget/TextView;

    .line 61
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v4, p3

    move-object p3, p2

    move-object p2, v4

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/senseonics/util/StatisticsAdapter$ViewHolder;

    .line 66
    :goto_0
    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_1

    .line 67
    iget v0, p0, Lcom/senseonics/util/StatisticsAdapter;->whiteColor:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 69
    :cond_1
    iget v0, p0, Lcom/senseonics/util/StatisticsAdapter;->grayColor:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 72
    :goto_1
    iget-object v0, p0, Lcom/senseonics/util/StatisticsAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/senseonics/util/Statistics;

    .line 73
    iget-object v0, p0, Lcom/senseonics/util/StatisticsAdapter;->context:Landroid/content/Context;

    .line 74
    invoke-virtual {p1}, Lcom/senseonics/util/Statistics;->getMealType()Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getMealTimeString(Landroid/content/Context;Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;)Ljava/lang/String;

    move-result-object v0

    .line 76
    iget-object v1, p3, Lcom/senseonics/util/StatisticsAdapter$ViewHolder;->startTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    invoke-virtual {p1}, Lcom/senseonics/util/Statistics;->getAverage()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 80
    invoke-static {v0}, Lcom/senseonics/util/Utils;->getGlucoseLevelValue(I)Ljava/lang/String;

    move-result-object v0

    .line 81
    iget-object v2, p3, Lcom/senseonics/util/StatisticsAdapter$ViewHolder;->avgTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 83
    :cond_2
    iget-object v0, p3, Lcom/senseonics/util/StatisticsAdapter$ViewHolder;->avgTextView:Landroid/widget/TextView;

    sget-object v2, Lcom/senseonics/util/Utils;->unknownString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    :goto_2
    invoke-virtual {p1}, Lcom/senseonics/util/Statistics;->getLow()I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 87
    invoke-static {v0}, Lcom/senseonics/util/Utils;->getGlucoseLevelValue(I)Ljava/lang/String;

    move-result-object v0

    .line 88
    iget-object v2, p3, Lcom/senseonics/util/StatisticsAdapter$ViewHolder;->lowTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 90
    :cond_3
    iget-object v0, p3, Lcom/senseonics/util/StatisticsAdapter$ViewHolder;->lowTextView:Landroid/widget/TextView;

    sget-object v2, Lcom/senseonics/util/Utils;->unknownString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    :goto_3
    invoke-virtual {p1}, Lcom/senseonics/util/Statistics;->getHigh()I

    move-result v0

    if-eq v0, v1, :cond_4

    .line 94
    invoke-static {v0}, Lcom/senseonics/util/Utils;->getGlucoseLevelValue(I)Ljava/lang/String;

    move-result-object v0

    .line 95
    iget-object v1, p3, Lcom/senseonics/util/StatisticsAdapter$ViewHolder;->highTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 97
    :cond_4
    iget-object v0, p3, Lcom/senseonics/util/StatisticsAdapter$ViewHolder;->highTextView:Landroid/widget/TextView;

    sget-object v1, Lcom/senseonics/util/Utils;->unknownString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    :goto_4
    invoke-virtual {p1}, Lcom/senseonics/util/Statistics;->getCount()D

    move-result-wide v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpl-double p1, v0, v2

    if-eqz p1, :cond_5

    .line 101
    iget-object p1, p3, Lcom/senseonics/util/StatisticsAdapter$ViewHolder;->countTextView:Landroid/widget/TextView;

    double-to-float p3, v0

    invoke-static {p3}, Lcom/senseonics/util/Utils;->getGlucoseLevelValue(F)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 103
    :cond_5
    iget-object p1, p3, Lcom/senseonics/util/StatisticsAdapter$ViewHolder;->countTextView:Landroid/widget/TextView;

    sget-object p3, Lcom/senseonics/util/Utils;->unknownString:Ljava/lang/String;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    return-object p2
.end method
