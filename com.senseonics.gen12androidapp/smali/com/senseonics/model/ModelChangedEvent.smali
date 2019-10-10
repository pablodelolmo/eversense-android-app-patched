.class public Lcom/senseonics/model/ModelChangedEvent;
.super Ljava/lang/Object;
.source "ModelChangedEvent.java"


# instance fields
.field private transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;


# direct methods
.method public constructor <init>(Lcom/senseonics/model/TransmitterStateModel;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/senseonics/model/ModelChangedEvent;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    return-void
.end method


# virtual methods
.method public getModel()Lcom/senseonics/model/TransmitterStateModel;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/senseonics/model/ModelChangedEvent;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    return-object v0
.end method
