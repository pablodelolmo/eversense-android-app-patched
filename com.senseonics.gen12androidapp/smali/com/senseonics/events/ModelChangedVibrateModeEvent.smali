.class public Lcom/senseonics/events/ModelChangedVibrateModeEvent;
.super Ljava/lang/Object;
.source "ModelChangedVibrateModeEvent.java"


# instance fields
.field private vibrateMode:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-boolean p1, p0, Lcom/senseonics/events/ModelChangedVibrateModeEvent;->vibrateMode:Z

    return-void
.end method


# virtual methods
.method public isVibrateMode()Z
    .locals 1

    .line 12
    iget-boolean v0, p0, Lcom/senseonics/events/ModelChangedVibrateModeEvent;->vibrateMode:Z

    return v0
.end method
