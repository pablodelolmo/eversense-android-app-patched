.class public Lcom/senseonics/graph/util/Glucose;
.super Ljava/lang/Object;
.source "Glucose.java"


# instance fields
.field private glucoseLevel:I

.field private groupId:I

.field private rawValues:[I

.field private recordNumber:I

.field private timestamp:J

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(FF)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 15
    iput v0, p0, Lcom/senseonics/graph/util/Glucose;->groupId:I

    .line 16
    iput v0, p0, Lcom/senseonics/graph/util/Glucose;->recordNumber:I

    .line 39
    invoke-virtual {p0, p1}, Lcom/senseonics/graph/util/Glucose;->setX(F)V

    .line 40
    invoke-virtual {p0, p2}, Lcom/senseonics/graph/util/Glucose;->setY(F)V

    return-void
.end method

.method public constructor <init>(JIII)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 15
    iput v0, p0, Lcom/senseonics/graph/util/Glucose;->groupId:I

    .line 16
    iput v0, p0, Lcom/senseonics/graph/util/Glucose;->recordNumber:I

    .line 23
    invoke-virtual {p0, p3}, Lcom/senseonics/graph/util/Glucose;->setGlucoseLevel(I)V

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/senseonics/graph/util/Glucose;->setTimestamp(J)V

    .line 25
    invoke-virtual {p0, p4}, Lcom/senseonics/graph/util/Glucose;->setGroupId(I)V

    .line 26
    invoke-virtual {p0, p5}, Lcom/senseonics/graph/util/Glucose;->setRecordNumber(I)V

    const/16 p1, 0x8

    .line 28
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/senseonics/graph/util/Glucose;->rawValues:[I

    return-void
.end method

.method public constructor <init>(JIII[I)V
    .locals 0

    .line 33
    invoke-direct/range {p0 .. p5}, Lcom/senseonics/graph/util/Glucose;-><init>(JIII)V

    .line 34
    iput-object p6, p0, Lcom/senseonics/graph/util/Glucose;->rawValues:[I

    return-void
.end method


# virtual methods
.method public getGlucoseLevel()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/senseonics/graph/util/Glucose;->glucoseLevel:I

    return v0
.end method

.method public getGroupId()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/senseonics/graph/util/Glucose;->groupId:I

    return v0
.end method

.method public getRawValuesAtIndex(Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;)I
    .locals 1

    .line 99
    sget-object v0, Lcom/senseonics/graph/util/Glucose$1;->$SwitchMap$com$senseonics$bluetoothle$MemoryMap$RAW_DATA_INDEX:[I

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 129
    :pswitch_0
    iget-object p1, p0, Lcom/senseonics/graph/util/Glucose;->rawValues:[I

    const/4 v0, 0x7

    aget v0, p1, v0

    goto :goto_0

    .line 125
    :pswitch_1
    iget-object p1, p0, Lcom/senseonics/graph/util/Glucose;->rawValues:[I

    const/4 v0, 0x6

    aget v0, p1, v0

    goto :goto_0

    .line 121
    :pswitch_2
    iget-object p1, p0, Lcom/senseonics/graph/util/Glucose;->rawValues:[I

    const/4 v0, 0x5

    aget v0, p1, v0

    goto :goto_0

    .line 117
    :pswitch_3
    iget-object p1, p0, Lcom/senseonics/graph/util/Glucose;->rawValues:[I

    const/4 v0, 0x4

    aget v0, p1, v0

    goto :goto_0

    .line 113
    :pswitch_4
    iget-object p1, p0, Lcom/senseonics/graph/util/Glucose;->rawValues:[I

    const/4 v0, 0x3

    aget v0, p1, v0

    goto :goto_0

    .line 109
    :pswitch_5
    iget-object p1, p0, Lcom/senseonics/graph/util/Glucose;->rawValues:[I

    const/4 v0, 0x2

    aget v0, p1, v0

    goto :goto_0

    .line 105
    :pswitch_6
    iget-object p1, p0, Lcom/senseonics/graph/util/Glucose;->rawValues:[I

    const/4 v0, 0x1

    aget v0, p1, v0

    goto :goto_0

    .line 101
    :pswitch_7
    iget-object p1, p0, Lcom/senseonics/graph/util/Glucose;->rawValues:[I

    aget v0, p1, v0

    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getRecordNumber()I
    .locals 1

    .line 89
    iget v0, p0, Lcom/senseonics/graph/util/Glucose;->recordNumber:I

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 73
    iget-wide v0, p0, Lcom/senseonics/graph/util/Glucose;->timestamp:J

    return-wide v0
.end method

.method public getX()F
    .locals 1

    .line 57
    iget v0, p0, Lcom/senseonics/graph/util/Glucose;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .line 65
    iget v0, p0, Lcom/senseonics/graph/util/Glucose;->y:F

    return v0
.end method

.method public setGlucoseLevel(I)V
    .locals 0

    .line 53
    iput p1, p0, Lcom/senseonics/graph/util/Glucose;->glucoseLevel:I

    return-void
.end method

.method public setGroupId(I)V
    .locals 0

    .line 85
    iput p1, p0, Lcom/senseonics/graph/util/Glucose;->groupId:I

    return-void
.end method

.method public setRecordNumber(I)V
    .locals 0

    .line 93
    iput p1, p0, Lcom/senseonics/graph/util/Glucose;->recordNumber:I

    return-void
.end method

.method public setRect(Landroid/graphics/Rect;Ljava/util/Calendar;Ljava/util/Calendar;)V
    .locals 7

    .line 44
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/senseonics/graph/util/Glucose;->timestamp:J

    invoke-static/range {v0 .. v6}, Lcom/senseonics/graph/util/GraphUtils;->getPositionX(IJJJ)F

    move-result p2

    invoke-virtual {p0, p2}, Lcom/senseonics/graph/util/Glucose;->setX(F)V

    .line 45
    iget p2, p0, Lcom/senseonics/graph/util/Glucose;->glucoseLevel:I

    invoke-static {p2, p1}, Lcom/senseonics/graph/util/GraphUtils;->getPositionYForGlucose(ILandroid/graphics/Rect;)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/senseonics/graph/util/Glucose;->setY(F)V

    return-void
.end method

.method public setTimestamp(J)V
    .locals 0

    .line 77
    iput-wide p1, p0, Lcom/senseonics/graph/util/Glucose;->timestamp:J

    return-void
.end method

.method public setX(F)V
    .locals 0

    .line 61
    iput p1, p0, Lcom/senseonics/graph/util/Glucose;->x:F

    return-void
.end method

.method public setY(F)V
    .locals 0

    .line 69
    iput p1, p0, Lcom/senseonics/graph/util/Glucose;->y:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 137
    invoke-static {p0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "glucoseLevel"

    iget v2, p0, Lcom/senseonics/graph/util/Glucose;->glucoseLevel:I

    .line 138
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "x"

    iget v2, p0, Lcom/senseonics/graph/util/Glucose;->x:F

    .line 139
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;F)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "y"

    iget v2, p0, Lcom/senseonics/graph/util/Glucose;->y:F

    .line 140
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;F)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "timestamp"

    iget-wide v2, p0, Lcom/senseonics/graph/util/Glucose;->timestamp:J

    .line 141
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "groupId"

    iget v2, p0, Lcom/senseonics/graph/util/Glucose;->groupId:I

    .line 142
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "recordNumber"

    iget v2, p0, Lcom/senseonics/graph/util/Glucose;->recordNumber:I

    .line 143
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "raw1"

    sget-object v2, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->RAW_DATA_INDEX_1:Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;

    .line 144
    invoke-virtual {p0, v2}, Lcom/senseonics/graph/util/Glucose;->getRawValuesAtIndex(Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "raw2"

    sget-object v2, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->RAW_DATA_INDEX_2:Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;

    .line 145
    invoke-virtual {p0, v2}, Lcom/senseonics/graph/util/Glucose;->getRawValuesAtIndex(Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "raw3"

    sget-object v2, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->RAW_DATA_INDEX_3:Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;

    .line 146
    invoke-virtual {p0, v2}, Lcom/senseonics/graph/util/Glucose;->getRawValuesAtIndex(Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "raw4"

    sget-object v2, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->RAW_DATA_INDEX_4:Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;

    .line 147
    invoke-virtual {p0, v2}, Lcom/senseonics/graph/util/Glucose;->getRawValuesAtIndex(Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "raw5"

    sget-object v2, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->RAW_DATA_INDEX_5:Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;

    .line 148
    invoke-virtual {p0, v2}, Lcom/senseonics/graph/util/Glucose;->getRawValuesAtIndex(Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "raw6"

    sget-object v2, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->RAW_DATA_INDEX_6:Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;

    .line 149
    invoke-virtual {p0, v2}, Lcom/senseonics/graph/util/Glucose;->getRawValuesAtIndex(Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "raw7"

    sget-object v2, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->RAW_DATA_INDEX_7:Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;

    .line 150
    invoke-virtual {p0, v2}, Lcom/senseonics/graph/util/Glucose;->getRawValuesAtIndex(Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "raw8"

    sget-object v2, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->RAW_DATA_INDEX_8:Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;

    .line 151
    invoke-virtual {p0, v2}, Lcom/senseonics/graph/util/Glucose;->getRawValuesAtIndex(Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Lcom/google/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
