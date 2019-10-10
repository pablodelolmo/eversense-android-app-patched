.class public Lcom/senseonics/events/ModelChangedCurrentCalibrationPhaseEvent;
.super Ljava/lang/Object;
.source "ModelChangedCurrentCalibrationPhaseEvent.java"


# instance fields
.field private currentCalibrationPhase:Lcom/senseonics/util/Utils$CAL_PHASE;


# direct methods
.method public constructor <init>(Lcom/senseonics/util/Utils$CAL_PHASE;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/senseonics/events/ModelChangedCurrentCalibrationPhaseEvent;->currentCalibrationPhase:Lcom/senseonics/util/Utils$CAL_PHASE;

    return-void
.end method


# virtual methods
.method public getCurrentCalibrationPhase()Lcom/senseonics/util/Utils$CAL_PHASE;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/senseonics/events/ModelChangedCurrentCalibrationPhaseEvent;->currentCalibrationPhase:Lcom/senseonics/util/Utils$CAL_PHASE;

    return-object v0
.end method
