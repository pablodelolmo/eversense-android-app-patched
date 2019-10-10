.class public Lcom/senseonics/events/ModelChangedBatteryLevelEvent;
.super Ljava/lang/Object;
.source "ModelChangedBatteryLevelEvent.java"


# instance fields
.field private batteryLevel:Lcom/senseonics/model/BATTERY_LEVEL;


# direct methods
.method public constructor <init>(Lcom/senseonics/model/BATTERY_LEVEL;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/senseonics/events/ModelChangedBatteryLevelEvent;->batteryLevel:Lcom/senseonics/model/BATTERY_LEVEL;

    return-void
.end method


# virtual methods
.method public getBatteryLevel()Lcom/senseonics/model/BATTERY_LEVEL;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/senseonics/events/ModelChangedBatteryLevelEvent;->batteryLevel:Lcom/senseonics/model/BATTERY_LEVEL;

    return-object v0
.end method
