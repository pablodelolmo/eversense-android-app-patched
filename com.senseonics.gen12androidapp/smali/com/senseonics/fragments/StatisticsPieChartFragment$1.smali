.class synthetic Lcom/senseonics/fragments/StatisticsPieChartFragment$1;
.super Ljava/lang/Object;
.source "StatisticsPieChartFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/fragments/StatisticsPieChartFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$senseonics$util$Utils$STATISTIC_TYPE2:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 285
    invoke-static {}, Lcom/senseonics/util/Utils$STATISTIC_TYPE2;->values()[Lcom/senseonics/util/Utils$STATISTIC_TYPE2;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/senseonics/fragments/StatisticsPieChartFragment$1;->$SwitchMap$com$senseonics$util$Utils$STATISTIC_TYPE2:[I

    :try_start_0
    sget-object v0, Lcom/senseonics/fragments/StatisticsPieChartFragment$1;->$SwitchMap$com$senseonics$util$Utils$STATISTIC_TYPE2:[I

    sget-object v1, Lcom/senseonics/util/Utils$STATISTIC_TYPE2;->ABOVE_TARGET_LEVEL:Lcom/senseonics/util/Utils$STATISTIC_TYPE2;

    invoke-virtual {v1}, Lcom/senseonics/util/Utils$STATISTIC_TYPE2;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/senseonics/fragments/StatisticsPieChartFragment$1;->$SwitchMap$com$senseonics$util$Utils$STATISTIC_TYPE2:[I

    sget-object v1, Lcom/senseonics/util/Utils$STATISTIC_TYPE2;->BELOW_TARGET_LEVEL:Lcom/senseonics/util/Utils$STATISTIC_TYPE2;

    invoke-virtual {v1}, Lcom/senseonics/util/Utils$STATISTIC_TYPE2;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/senseonics/fragments/StatisticsPieChartFragment$1;->$SwitchMap$com$senseonics$util$Utils$STATISTIC_TYPE2:[I

    sget-object v1, Lcom/senseonics/util/Utils$STATISTIC_TYPE2;->WITHIN_TARGET_LEVELS:Lcom/senseonics/util/Utils$STATISTIC_TYPE2;

    invoke-virtual {v1}, Lcom/senseonics/util/Utils$STATISTIC_TYPE2;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
