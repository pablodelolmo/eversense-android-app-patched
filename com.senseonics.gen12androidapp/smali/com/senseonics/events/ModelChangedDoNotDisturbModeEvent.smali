.class public Lcom/senseonics/events/ModelChangedDoNotDisturbModeEvent;
.super Ljava/lang/Object;
.source "ModelChangedDoNotDisturbModeEvent.java"


# instance fields
.field private newValue:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-boolean p1, p0, Lcom/senseonics/events/ModelChangedDoNotDisturbModeEvent;->newValue:Z

    return-void
.end method


# virtual methods
.method public isNewValue()Z
    .locals 1

    .line 12
    iget-boolean v0, p0, Lcom/senseonics/events/ModelChangedDoNotDisturbModeEvent;->newValue:Z

    return v0
.end method
