.class public Lcom/senseonics/model/WriteSingleByteSerialFlashRegisterParsedResponse;
.super Ljava/lang/Object;
.source "WriteSingleByteSerialFlashRegisterParsedResponse.java"

# interfaces
.implements Lcom/senseonics/model/ParsedResponse;


# instance fields
.field private final children:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "[I",
            "Lcom/senseonics/model/SingleByteMemoryMapParsedResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .param p1    # Ljava/util/Map;
        .annotation runtime Ljavax/inject/Named;
            value = "writesinglebyteregisters"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "[I",
            "Lcom/senseonics/model/SingleByteMemoryMapParsedResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/senseonics/model/WriteSingleByteSerialFlashRegisterParsedResponse;->children:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public apply([ILcom/senseonics/model/TransmitterStateModel;)V
    .locals 5

    const/4 v0, 0x4

    .line 42
    aget v0, p1, v0

    const/4 v1, 0x3

    .line 43
    new-array v2, v1, [I

    aget v1, p1, v1

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v1, 0x2

    aget v3, p1, v1

    const/4 v4, 0x1

    aput v3, v2, v4

    aget p1, p1, v4

    aput p1, v2, v1

    .line 44
    iget-object p1, p0, Lcom/senseonics/model/WriteSingleByteSerialFlashRegisterParsedResponse;->children:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 45
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    invoke-static {v3, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 46
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/senseonics/model/SingleByteMemoryMapParsedResponse;

    invoke-interface {p1, v0, p2}, Lcom/senseonics/model/SingleByteMemoryMapParsedResponse;->apply(ILcom/senseonics/model/TransmitterStateModel;)V

    :cond_1
    return-void
.end method

.method public check([I)Z
    .locals 5

    .line 28
    invoke-static {p1}, Lcom/senseonics/bluetoothle/ResponseOperations;->isWriteSingleByteSerialFlashRegisterResponseCorrect([I)Z

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
    iget-object p1, p0, Lcom/senseonics/model/WriteSingleByteSerialFlashRegisterParsedResponse;->children:Ljava/util/Map;

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

    const/16 v0, 0xab

    return v0
.end method
