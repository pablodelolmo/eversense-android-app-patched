.class Lcom/senseonics/util/StatisticsAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "StatisticsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/util/StatisticsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field public avgTextView:Landroid/widget/TextView;

.field public countTextView:Landroid/widget/TextView;

.field public highTextView:Landroid/widget/TextView;

.field public lowTextView:Landroid/widget/TextView;

.field public startTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/senseonics/util/StatisticsAdapter;


# direct methods
.method private constructor <init>(Lcom/senseonics/util/StatisticsAdapter;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/senseonics/util/StatisticsAdapter$ViewHolder;->this$0:Lcom/senseonics/util/StatisticsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/senseonics/util/StatisticsAdapter;Lcom/senseonics/util/StatisticsAdapter$1;)V
    .locals 0

    .line 108
    invoke-direct {p0, p1}, Lcom/senseonics/util/StatisticsAdapter$ViewHolder;-><init>(Lcom/senseonics/util/StatisticsAdapter;)V

    return-void
.end method
