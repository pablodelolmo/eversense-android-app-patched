.class public Lcom/senseonics/model/NoOpParsedResponse;
.super Ljava/lang/Object;
.source "NoOpParsedResponse.java"

# interfaces
.implements Lcom/senseonics/model/ParsedResponse;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply([ILcom/senseonics/model/TransmitterStateModel;)V
    .locals 0

    return-void
.end method

.method public check([I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getExpectedResponseId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
