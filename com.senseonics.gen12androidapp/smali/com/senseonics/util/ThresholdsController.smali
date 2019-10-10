.class public Lcom/senseonics/util/ThresholdsController;
.super Ljava/lang/Object;
.source "ThresholdsController.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private final alarmHighMax:I

.field private final alarmHighMaxMMOL:F

.field private final alarmHighMin:I

.field private final alarmHighMinMMOL:F

.field private final alarmLowMax:I

.field private final alarmLowMaxMMOL:F

.field private final alarmLowMin:I

.field private final alarmLowMinMMOL:F

.field private dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

.field private final incValue:I

.field private final incValueMmol:F

.field private final targetHighMax:I

.field private final targetHighMaxMMOL:F

.field private final targetHighMin:I

.field private final targetHighMinMMOL:F

.field private final targetLowMax:I

.field private final targetLowMaxMMOL:F

.field private final targetLowMin:I

.field private final targetLowMinMMOL:F


# direct methods
.method public constructor <init>(Lcom/senseonics/bluetoothle/DialogUtils;)V
    .locals 3
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 13
    iput v0, p0, Lcom/senseonics/util/ThresholdsController;->incValue:I

    const v0, 0x3dcccccd    # 0.1f

    .line 14
    iput v0, p0, Lcom/senseonics/util/ThresholdsController;->incValueMmol:F

    const/16 v0, 0x78

    .line 51
    iput v0, p0, Lcom/senseonics/util/ThresholdsController;->targetHighMin:I

    const/16 v1, 0x15e

    .line 52
    iput v1, p0, Lcom/senseonics/util/ThresholdsController;->targetHighMax:I

    const/16 v2, 0x41

    .line 53
    iput v2, p0, Lcom/senseonics/util/ThresholdsController;->targetLowMin:I

    .line 54
    iput v0, p0, Lcom/senseonics/util/ThresholdsController;->targetLowMax:I

    const/16 v0, 0x7d

    .line 55
    iput v0, p0, Lcom/senseonics/util/ThresholdsController;->alarmHighMin:I

    .line 56
    iput v1, p0, Lcom/senseonics/util/ThresholdsController;->alarmHighMax:I

    const/16 v0, 0x3c

    .line 57
    iput v0, p0, Lcom/senseonics/util/ThresholdsController;->alarmLowMin:I

    const/16 v0, 0x73

    .line 58
    iput v0, p0, Lcom/senseonics/util/ThresholdsController;->alarmLowMax:I

    const v0, 0x40d66666    # 6.7f

    .line 61
    iput v0, p0, Lcom/senseonics/util/ThresholdsController;->targetHighMinMMOL:F

    const v1, 0x419b3333    # 19.4f

    .line 62
    iput v1, p0, Lcom/senseonics/util/ThresholdsController;->targetHighMaxMMOL:F

    const v2, 0x40666666    # 3.6f

    .line 63
    iput v2, p0, Lcom/senseonics/util/ThresholdsController;->targetLowMinMMOL:F

    .line 64
    iput v0, p0, Lcom/senseonics/util/ThresholdsController;->targetLowMaxMMOL:F

    const v0, 0x40dccccd    # 6.9f

    .line 65
    iput v0, p0, Lcom/senseonics/util/ThresholdsController;->alarmHighMinMMOL:F

    .line 66
    iput v1, p0, Lcom/senseonics/util/ThresholdsController;->alarmHighMaxMMOL:F

    const v0, 0x40533333    # 3.3f

    .line 67
    iput v0, p0, Lcom/senseonics/util/ThresholdsController;->alarmLowMinMMOL:F

    const v0, 0x40cccccd    # 6.4f

    .line 68
    iput v0, p0, Lcom/senseonics/util/ThresholdsController;->alarmLowMaxMMOL:F

    .line 74
    iput-object p1, p0, Lcom/senseonics/util/ThresholdsController;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    return-void
.end method

.method private getGlucoseValueInRange(III)I
    .locals 0

    if-ge p1, p2, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    if-le p1, p3, :cond_1

    move p1, p3

    :cond_1
    :goto_0
    return p1
.end method

.method private getNumberFactorForHighBound(II)I
    .locals 2

    .line 252
    rem-int v0, p1, p2

    .line 253
    div-int v1, p1, p2

    if-nez v0, :cond_0

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    mul-int v1, v1, p2

    return v1
.end method

.method private getNumberFactorForLowBound(II)I
    .locals 2

    .line 240
    rem-int v0, p1, p2

    .line 241
    div-int v1, p1, p2

    if-nez v0, :cond_0

    return p1

    :cond_0
    mul-int v1, v1, p2

    return v1
.end method


# virtual methods
.method public getAlarmHighMax()I
    .locals 1

    const/16 v0, 0x15e

    return v0
.end method

.method public getAlarmHighMin()I
    .locals 1

    const/16 v0, 0x7d

    return v0
.end method

.method public getAlarmHighValues(I)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Item;",
            ">;"
        }
    .end annotation

    .line 158
    sget-object v0, Lcom/senseonics/util/Utils;->currentGlucoseUnit:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    sget-object v1, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MG_DL:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    if-ne v0, v1, :cond_1

    const/16 v0, 0x7d

    const/4 v1, 0x5

    if-lt p1, v0, :cond_0

    add-int/lit8 v0, p1, 0x5

    .line 163
    :cond_0
    iget-object p1, p0, Lcom/senseonics/util/ThresholdsController;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    .line 164
    invoke-direct {p0, v0, v1}, Lcom/senseonics/util/ThresholdsController;->getNumberFactorForLowBound(II)I

    move-result v0

    const/16 v2, 0x15e

    .line 165
    invoke-direct {p0, v2, v1}, Lcom/senseonics/util/ThresholdsController;->getNumberFactorForHighBound(II)I

    move-result v2

    .line 163
    invoke-virtual {p1, v0, v2, v1}, Lcom/senseonics/bluetoothle/DialogUtils;->getGlucoseLevels(III)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    :cond_1
    int-to-float p1, p1

    .line 170
    invoke-static {p1}, Lcom/senseonics/util/Convert;->MLConvertMgToMmol(F)F

    move-result p1

    const/high16 v0, 0x41200000    # 10.0f

    mul-float p1, p1, v0

    .line 171
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    const v0, 0x40dccccd    # 6.9f

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_2

    const v0, 0x3dcccccd    # 0.1f

    add-float/2addr v0, p1

    .line 177
    :cond_2
    iget-object p1, p0, Lcom/senseonics/util/ThresholdsController;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    const v1, 0x419b3333    # 19.4f

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-virtual {p1, v0, v1, v2}, Lcom/senseonics/bluetoothle/DialogUtils;->getGlucoseLevels(FFF)Ljava/util/ArrayList;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getAlarmHighWithRangeChecked(I)I
    .locals 2

    const/16 v0, 0x7d

    const/16 v1, 0x15e

    .line 222
    invoke-direct {p0, p1, v0, v1}, Lcom/senseonics/util/ThresholdsController;->getGlucoseValueInRange(III)I

    move-result p1

    return p1
.end method

.method public getAlarmLowMax()I
    .locals 1

    const/16 v0, 0x73

    return v0
.end method

.method public getAlarmLowMin()I
    .locals 1

    const/16 v0, 0x3c

    return v0
.end method

.method public getAlarmLowValues(I)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Item;",
            ">;"
        }
    .end annotation

    .line 187
    sget-object v0, Lcom/senseonics/util/Utils;->currentGlucoseUnit:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    sget-object v1, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MG_DL:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    if-ne v0, v1, :cond_1

    const/16 v0, 0x73

    const/4 v1, 0x5

    if-gt p1, v0, :cond_0

    add-int/lit8 v0, p1, -0x5

    .line 191
    :cond_0
    iget-object p1, p0, Lcom/senseonics/util/ThresholdsController;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    const/16 v2, 0x3c

    .line 192
    invoke-direct {p0, v2, v1}, Lcom/senseonics/util/ThresholdsController;->getNumberFactorForLowBound(II)I

    move-result v2

    .line 193
    invoke-direct {p0, v0, v1}, Lcom/senseonics/util/ThresholdsController;->getNumberFactorForHighBound(II)I

    move-result v0

    .line 191
    invoke-virtual {p1, v2, v0, v1}, Lcom/senseonics/bluetoothle/DialogUtils;->getGlucoseLevels(III)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    :cond_1
    int-to-float p1, p1

    .line 198
    invoke-static {p1}, Lcom/senseonics/util/Convert;->MLConvertMgToMmol(F)F

    move-result p1

    const/high16 v0, 0x41200000    # 10.0f

    mul-float p1, p1, v0

    .line 199
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    const v0, 0x40cccccd    # 6.4f

    cmpg-float v1, p1, v0

    const v2, 0x3dcccccd    # 0.1f

    if-gtz v1, :cond_2

    sub-float v0, p1, v2

    .line 205
    :cond_2
    iget-object p1, p0, Lcom/senseonics/util/ThresholdsController;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    const v1, 0x40533333    # 3.3f

    invoke-virtual {p1, v1, v0, v2}, Lcom/senseonics/bluetoothle/DialogUtils;->getGlucoseLevels(FFF)Ljava/util/ArrayList;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getAlarmLowWithRangeChecked(I)I
    .locals 2

    const/16 v0, 0x3c

    const/16 v1, 0x73

    .line 226
    invoke-direct {p0, p1, v0, v1}, Lcom/senseonics/util/ThresholdsController;->getGlucoseValueInRange(III)I

    move-result p1

    return p1
.end method

.method public getPosition(ILjava/util/ArrayList;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Item;",
            ">;)I"
        }
    .end annotation

    .line 79
    sget-object v0, Lcom/senseonics/util/Utils;->currentGlucoseUnit:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    sget-object v1, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MG_DL:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    if-ne v0, v1, :cond_0

    .line 80
    invoke-static {p2, p1}, Lcom/senseonics/util/Utils;->getItemPosition(Ljava/util/ArrayList;I)I

    move-result p1

    goto :goto_0

    .line 82
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%.1f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    int-to-float p1, p1

    .line 83
    invoke-static {p1}, Lcom/senseonics/util/Convert;->MLConvertMgToMmol(F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 82
    invoke-static {p2, p1}, Lcom/senseonics/util/Utils;->getItemPosition(Ljava/util/ArrayList;Ljava/lang/String;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public getTargetHighMax()I
    .locals 1

    const/16 v0, 0x15e

    return v0
.end method

.method public getTargetHighMin()I
    .locals 1

    const/16 v0, 0x78

    return v0
.end method

.method public getTargetHighValues(II)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Item;",
            ">;"
        }
    .end annotation

    .line 89
    sget-object v0, Lcom/senseonics/util/Utils;->currentGlucoseUnit:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    sget-object v1, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MG_DL:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    if-ne v0, v1, :cond_2

    const/16 v0, 0x78

    const/4 v1, 0x5

    if-lt p1, v0, :cond_0

    add-int/lit8 v0, p1, 0x5

    :cond_0
    const/16 p1, 0x15e

    if-gt p2, p1, :cond_1

    add-int/lit8 p1, p2, -0x5

    .line 96
    :cond_1
    iget-object p2, p0, Lcom/senseonics/util/ThresholdsController;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    .line 97
    invoke-direct {p0, v0, v1}, Lcom/senseonics/util/ThresholdsController;->getNumberFactorForLowBound(II)I

    move-result v0

    .line 98
    invoke-direct {p0, p1, v1}, Lcom/senseonics/util/ThresholdsController;->getNumberFactorForHighBound(II)I

    move-result p1

    .line 96
    invoke-virtual {p2, v0, p1, v1}, Lcom/senseonics/bluetoothle/DialogUtils;->getNumbersBetween(III)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    :cond_2
    int-to-float p2, p2

    .line 103
    invoke-static {p2}, Lcom/senseonics/util/Convert;->MLConvertMgToMmol(F)F

    move-result p2

    int-to-float p1, p1

    .line 104
    invoke-static {p1}, Lcom/senseonics/util/Convert;->MLConvertMgToMmol(F)F

    move-result p1

    const/high16 v0, 0x41200000    # 10.0f

    mul-float p2, p2, v0

    .line 105
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v0

    mul-float p1, p1, v0

    .line 106
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    const v0, 0x40d66666    # 6.7f

    const v1, 0x419b3333    # 19.4f

    cmpl-float v2, p1, v0

    const v3, 0x3dcccccd    # 0.1f

    if-ltz v2, :cond_3

    add-float v0, p1, v3

    :cond_3
    cmpg-float p1, p2, v1

    if-gtz p1, :cond_4

    sub-float v1, p2, v3

    .line 115
    :cond_4
    iget-object p1, p0, Lcom/senseonics/util/ThresholdsController;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-virtual {p1, v0, v1, v3}, Lcom/senseonics/bluetoothle/DialogUtils;->getGlucoseLevels(FFF)Ljava/util/ArrayList;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getTargetHighWithRangeChecked(I)I
    .locals 2

    const/16 v0, 0x78

    const/16 v1, 0x15e

    .line 214
    invoke-direct {p0, p1, v0, v1}, Lcom/senseonics/util/ThresholdsController;->getGlucoseValueInRange(III)I

    move-result p1

    return p1
.end method

.method public getTargetLowMax()I
    .locals 1

    const/16 v0, 0x78

    return v0
.end method

.method public getTargetLowMin()I
    .locals 1

    const/16 v0, 0x41

    return v0
.end method

.method public getTargetLowValues(II)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Item;",
            ">;"
        }
    .end annotation

    .line 124
    sget-object v0, Lcom/senseonics/util/Utils;->currentGlucoseUnit:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    sget-object v1, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MG_DL:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    if-ne v0, v1, :cond_2

    const/16 v0, 0x41

    const/4 v1, 0x5

    if-lt p2, v0, :cond_0

    add-int/lit8 v0, p2, 0x5

    :cond_0
    const/16 p2, 0x78

    if-gt p1, p2, :cond_1

    add-int/lit8 p2, p1, -0x5

    .line 131
    :cond_1
    iget-object p1, p0, Lcom/senseonics/util/ThresholdsController;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    .line 132
    invoke-direct {p0, v0, v1}, Lcom/senseonics/util/ThresholdsController;->getNumberFactorForLowBound(II)I

    move-result v0

    .line 133
    invoke-direct {p0, p2, v1}, Lcom/senseonics/util/ThresholdsController;->getNumberFactorForHighBound(II)I

    move-result p2

    .line 131
    invoke-virtual {p1, v0, p2, v1}, Lcom/senseonics/bluetoothle/DialogUtils;->getNumbersBetween(III)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    :cond_2
    int-to-float p2, p2

    .line 138
    invoke-static {p2}, Lcom/senseonics/util/Convert;->MLConvertMgToMmol(F)F

    move-result p2

    int-to-float p1, p1

    .line 139
    invoke-static {p1}, Lcom/senseonics/util/Convert;->MLConvertMgToMmol(F)F

    move-result p1

    const/high16 v0, 0x41200000    # 10.0f

    mul-float p2, p2, v0

    .line 140
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v0

    mul-float p1, p1, v0

    .line 141
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    const v0, 0x40666666    # 3.6f

    const v1, 0x40d66666    # 6.7f

    cmpl-float v2, p2, v0

    const v3, 0x3dcccccd    # 0.1f

    if-ltz v2, :cond_3

    add-float v0, p2, v3

    :cond_3
    cmpg-float p2, p1, v1

    if-gtz p2, :cond_4

    sub-float v1, p1, v3

    .line 149
    :cond_4
    iget-object p1, p0, Lcom/senseonics/util/ThresholdsController;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-virtual {p1, v0, v1, v3}, Lcom/senseonics/bluetoothle/DialogUtils;->getGlucoseLevels(FFF)Ljava/util/ArrayList;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getTargetLowWithRangeChecked(I)I
    .locals 2

    const/16 v0, 0x41

    const/16 v1, 0x78

    .line 218
    invoke-direct {p0, p1, v0, v1}, Lcom/senseonics/util/ThresholdsController;->getGlucoseValueInRange(III)I

    move-result p1

    return p1
.end method
