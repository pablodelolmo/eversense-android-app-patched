.class public Lcom/senseonics/events/ModelChangedTransmitterModelNoEvent;
.super Ljava/lang/Object;
.source "ModelChangedTransmitterModelNoEvent.java"


# instance fields
.field private transmitterModelNo:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/senseonics/events/ModelChangedTransmitterModelNoEvent;->transmitterModelNo:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTransmitterModelNo()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/senseonics/events/ModelChangedTransmitterModelNoEvent;->transmitterModelNo:Ljava/lang/String;

    return-object v0
.end method
