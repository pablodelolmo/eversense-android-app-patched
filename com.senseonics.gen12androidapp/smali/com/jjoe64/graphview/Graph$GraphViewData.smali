.class public Lcom/jjoe64/graphview/Graph$GraphViewData;
.super Ljava/lang/Object;
.source "Graph.java"

# interfaces
.implements Lcom/jjoe64/graphview/GraphViewDataInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jjoe64/graphview/Graph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GraphViewData"
.end annotation


# instance fields
.field public final valueX:D

.field public final valueY:D


# direct methods
.method public constructor <init>(DD)V
    .locals 0

    .line 1025
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1026
    iput-wide p1, p0, Lcom/jjoe64/graphview/Graph$GraphViewData;->valueX:D

    .line 1027
    iput-wide p3, p0, Lcom/jjoe64/graphview/Graph$GraphViewData;->valueY:D

    return-void
.end method


# virtual methods
.method public getX()D
    .locals 2

    .line 1032
    iget-wide v0, p0, Lcom/jjoe64/graphview/Graph$GraphViewData;->valueX:D

    return-wide v0
.end method

.method public getY()D
    .locals 2

    .line 1037
    iget-wide v0, p0, Lcom/jjoe64/graphview/Graph$GraphViewData;->valueY:D

    return-wide v0
.end method
