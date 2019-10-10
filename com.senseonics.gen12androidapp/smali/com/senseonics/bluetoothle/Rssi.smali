.class public Lcom/senseonics/bluetoothle/Rssi;
.super Ljava/lang/Object;
.source "Rssi.java"


# instance fields
.field private time:J

.field private value:I


# direct methods
.method public constructor <init>(JI)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-wide p1, p0, Lcom/senseonics/bluetoothle/Rssi;->time:J

    .line 9
    iput p3, p0, Lcom/senseonics/bluetoothle/Rssi;->value:I

    return-void
.end method


# virtual methods
.method public getTime()J
    .locals 2

    .line 13
    iget-wide v0, p0, Lcom/senseonics/bluetoothle/Rssi;->time:J

    return-wide v0
.end method

.method public getValue()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/senseonics/bluetoothle/Rssi;->value:I

    return v0
.end method
