.class public Lcom/senseonics/gen12androidapp/Event;
.super Ljava/lang/Object;
.source "Event.java"


# instance fields
.field private eventType:I

.field private noteKey:I

.field private recordNumber:I

.field private syncBit:I

.field private timestamp:J

.field private variableParamLong:I

.field private variableParamShort:I


# direct methods
.method public constructor <init>(JIIIIII)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/senseonics/gen12androidapp/Event;->noteKey:I

    .line 8
    iput v0, p0, Lcom/senseonics/gen12androidapp/Event;->variableParamShort:I

    .line 9
    iput v0, p0, Lcom/senseonics/gen12androidapp/Event;->variableParamLong:I

    .line 10
    iput v0, p0, Lcom/senseonics/gen12androidapp/Event;->syncBit:I

    .line 11
    iput v0, p0, Lcom/senseonics/gen12androidapp/Event;->recordNumber:I

    .line 17
    iput-wide p1, p0, Lcom/senseonics/gen12androidapp/Event;->timestamp:J

    .line 18
    iput p3, p0, Lcom/senseonics/gen12androidapp/Event;->eventType:I

    .line 19
    iput p4, p0, Lcom/senseonics/gen12androidapp/Event;->noteKey:I

    .line 20
    iput p5, p0, Lcom/senseonics/gen12androidapp/Event;->variableParamShort:I

    .line 21
    iput p6, p0, Lcom/senseonics/gen12androidapp/Event;->variableParamLong:I

    .line 22
    iput p7, p0, Lcom/senseonics/gen12androidapp/Event;->syncBit:I

    .line 23
    iput p8, p0, Lcom/senseonics/gen12androidapp/Event;->recordNumber:I

    return-void
.end method


# virtual methods
.method public getEventType()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/senseonics/gen12androidapp/Event;->eventType:I

    return v0
.end method

.method public getNoteKey()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/senseonics/gen12androidapp/Event;->noteKey:I

    return v0
.end method

.method public getRecordNumber()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/senseonics/gen12androidapp/Event;->recordNumber:I

    return v0
.end method

.method public getSyncBit()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/senseonics/gen12androidapp/Event;->syncBit:I

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 27
    iget-wide v0, p0, Lcom/senseonics/gen12androidapp/Event;->timestamp:J

    return-wide v0
.end method

.method public getVariableParamLong()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/senseonics/gen12androidapp/Event;->variableParamLong:I

    return v0
.end method

.method public getVariableParamShort()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/senseonics/gen12androidapp/Event;->variableParamShort:I

    return v0
.end method

.method public setEventType(I)V
    .locals 0

    .line 39
    iput p1, p0, Lcom/senseonics/gen12androidapp/Event;->eventType:I

    return-void
.end method

.method public setNoteKey(I)V
    .locals 0

    .line 47
    iput p1, p0, Lcom/senseonics/gen12androidapp/Event;->noteKey:I

    return-void
.end method

.method public setRecordNumber(I)V
    .locals 0

    .line 79
    iput p1, p0, Lcom/senseonics/gen12androidapp/Event;->recordNumber:I

    return-void
.end method

.method public setSyncBit(I)V
    .locals 0

    .line 71
    iput p1, p0, Lcom/senseonics/gen12androidapp/Event;->syncBit:I

    return-void
.end method

.method public setTimestamp(I)V
    .locals 2

    int-to-long v0, p1

    .line 31
    iput-wide v0, p0, Lcom/senseonics/gen12androidapp/Event;->timestamp:J

    return-void
.end method

.method public setVariableParamLong(I)V
    .locals 0

    .line 63
    iput p1, p0, Lcom/senseonics/gen12androidapp/Event;->variableParamLong:I

    return-void
.end method

.method public setVariableParamShort(I)V
    .locals 0

    .line 55
    iput p1, p0, Lcom/senseonics/gen12androidapp/Event;->variableParamShort:I

    return-void
.end method
