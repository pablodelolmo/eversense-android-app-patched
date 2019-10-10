.class synthetic Lcom/jjoe64/graphview/Graph$2;
.super Ljava/lang/Object;
.source "Graph.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jjoe64/graphview/Graph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$jjoe64$graphview$Graph$LegendAlign:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1535
    invoke-static {}, Lcom/jjoe64/graphview/Graph$LegendAlign;->values()[Lcom/jjoe64/graphview/Graph$LegendAlign;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/jjoe64/graphview/Graph$2;->$SwitchMap$com$jjoe64$graphview$Graph$LegendAlign:[I

    :try_start_0
    sget-object v0, Lcom/jjoe64/graphview/Graph$2;->$SwitchMap$com$jjoe64$graphview$Graph$LegendAlign:[I

    sget-object v1, Lcom/jjoe64/graphview/Graph$LegendAlign;->TOP:Lcom/jjoe64/graphview/Graph$LegendAlign;

    invoke-virtual {v1}, Lcom/jjoe64/graphview/Graph$LegendAlign;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/jjoe64/graphview/Graph$2;->$SwitchMap$com$jjoe64$graphview$Graph$LegendAlign:[I

    sget-object v1, Lcom/jjoe64/graphview/Graph$LegendAlign;->MIDDLE:Lcom/jjoe64/graphview/Graph$LegendAlign;

    invoke-virtual {v1}, Lcom/jjoe64/graphview/Graph$LegendAlign;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
