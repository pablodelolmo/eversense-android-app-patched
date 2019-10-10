.class public Lcom/senseonics/model/ReadFourByteSerialFlashRegisterParsedResponse;
.super Ljava/lang/Object;
.source "ReadFourByteSerialFlashRegisterParsedResponse.java"

# interfaces
.implements Lcom/senseonics/model/ParsedResponse;


# instance fields
.field private final children:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "[I",
            "Lcom/senseonics/model/FourByteMemoryMapParsedResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .param p1    # Ljava/util/Map;
        .annotation runtime Ljavax/inject/Named;
            value = "readfourbyteregisters"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "[I",
            "Lcom/senseonics/model/FourByteMemoryMapParsedResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/senseonics/model/ReadFourByteSerialFlashRegisterParsedResponse;->children:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public apply([ILcom/senseonics/model/TransmitterStateModel;)V
    .locals 8

    const/4 v0, 0x4

    .line 42
    aget v2, p1, v0

    const/4 v0, 0x5

    .line 43
    aget v3, p1, v0

    const/4 v0, 0x6

    .line 44
    aget v4, p1, v0

    const/4 v0, 0x7

    .line 45
    aget v5, p1, v0

    const/4 v0, 0x3

    .line 46
    new-array v1, v0, [I

    aget v0, p1, v0

    const/4 v6, 0x0

    aput v0, v1, v6

    const/4 v0, 0x2

    aget v6, p1, v0

    const/4 v7, 0x1

    aput v6, v1, v7

    aget p1, p1, v7

    aput p1, v1, v0

    .line 47
    iget-object p1, p0, Lcom/senseonics/model/ReadFourByteSerialFlashRegisterParsedResponse;->children:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 48
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    invoke-static {v6, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 49
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/senseonics/model/FourByteMemoryMapParsedResponse;

    move-object v6, p2

    invoke-interface/range {v1 .. v6}, Lcom/senseonics/model/FourByteMemoryMapParsedResponse;->apply(IIIILcom/senseonics/model/TransmitterStateModel;)V

    :cond_1
    return-void
.end method

.method public check([I)Z
    .locals 5

    .line 28
    invoke-static {p1}, Lcom/senseonics/bluetoothle/ResponseOperations;->isReadFourByteSerialFlashRegisterResponseCorrect([I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    .line 29
    new-array v2, v0, [I

    aget v0, p1, v0

    aput v0, v2, v1

    const/4 v0, 0x2

    aget v3, p1, v0

    const/4 v4, 0x1

    aput v3, v2, v4

    aget p1, p1, v4

    aput p1, v2, v0

    .line 31
    iget-object p1, p0, Lcom/senseonics/model/ReadFourByteSerialFlashRegisterParsedResponse;->children:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 32
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    return v4

    :cond_1
    return v1
.end method

.method public getExpectedResponseId()I
    .locals 1

    const/16 v0, 0xae

    return v0
.end method
