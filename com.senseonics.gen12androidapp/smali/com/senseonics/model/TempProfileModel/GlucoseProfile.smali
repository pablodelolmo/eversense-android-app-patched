.class public Lcom/senseonics/model/TempProfileModel/GlucoseProfile;
.super Ljava/lang/Object;
.source "GlucoseProfile.java"


# static fields
.field public static final TEMP_PROFILE_THRESHOLD_INIT_VALUE:I


# instance fields
.field private AlarmHigh:I

.field private AlarmLow:I

.field private TargetHigh:I

.field private TargetLow:I

.field private UsedAtLeastOnce_AlarmHigh:Z

.field private UsedAtLeastOnce_AlarmLow:Z

.field private UsedAtLeastOnce_TargetHigh:Z

.field private UsedAtLeastOnce_TargetLow:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p0}, Lcom/senseonics/model/TempProfileModel/GlucoseProfile;->initAllThresholds()V

    return-void
.end method


# virtual methods
.method public getAlarmHigh()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/senseonics/model/TempProfileModel/GlucoseProfile;->AlarmHigh:I

    return v0
.end method

.method public getAlarmLow()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/senseonics/model/TempProfileModel/GlucoseProfile;->AlarmLow:I

    return v0
.end method

.method public getTargetHigh()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/senseonics/model/TempProfileModel/GlucoseProfile;->TargetHigh:I

    return v0
.end method

.method public getTargetLow()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/senseonics/model/TempProfileModel/GlucoseProfile;->TargetLow:I

    return v0
.end method

.method public hasInitialValues()Z
    .locals 1

    .line 33
    iget v0, p0, Lcom/senseonics/model/TempProfileModel/GlucoseProfile;->TargetHigh:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/senseonics/model/TempProfileModel/GlucoseProfile;->TargetLow:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/senseonics/model/TempProfileModel/GlucoseProfile;->AlarmHigh:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/senseonics/model/TempProfileModel/GlucoseProfile;->AlarmLow:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public initAllThresholds()V
    .locals 1

    const/4 v0, 0x0

    .line 21
    invoke-virtual {p0, v0}, Lcom/senseonics/model/TempProfileModel/GlucoseProfile;->setTargetHigh(I)V

    .line 22
    invoke-virtual {p0, v0}, Lcom/senseonics/model/TempProfileModel/GlucoseProfile;->setTargetLow(I)V

    .line 23
    invoke-virtual {p0, v0}, Lcom/senseonics/model/TempProfileModel/GlucoseProfile;->setAlarmHigh(I)V

    .line 24
    invoke-virtual {p0, v0}, Lcom/senseonics/model/TempProfileModel/GlucoseProfile;->setAlarmLow(I)V

    .line 26
    invoke-virtual {p0, v0}, Lcom/senseonics/model/TempProfileModel/GlucoseProfile;->setUsedAtLeastOnce_TargetHigh(Z)V

    .line 27
    invoke-virtual {p0, v0}, Lcom/senseonics/model/TempProfileModel/GlucoseProfile;->setUsedAtLeastOnce_TargetLow(Z)V

    .line 28
    invoke-virtual {p0, v0}, Lcom/senseonics/model/TempProfileModel/GlucoseProfile;->setUsedAtLeastOnce_AlarmHigh(Z)V

    .line 29
    invoke-virtual {p0, v0}, Lcom/senseonics/model/TempProfileModel/GlucoseProfile;->setUsedAtLeastOnce_AlarmLow(Z)V

    return-void
.end method

.method public isUsedAtLeastOnce_AlarmHigh()Z
    .locals 1

    .line 85
    iget-boolean v0, p0, Lcom/senseonics/model/TempProfileModel/GlucoseProfile;->UsedAtLeastOnce_AlarmHigh:Z

    return v0
.end method

.method public isUsedAtLeastOnce_AlarmLow()Z
    .locals 1

    .line 93
    iget-boolean v0, p0, Lcom/senseonics/model/TempProfileModel/GlucoseProfile;->UsedAtLeastOnce_AlarmLow:Z

    return v0
.end method

.method public isUsedAtLeastOnce_TargetHigh()Z
    .locals 1

    .line 101
    iget-boolean v0, p0, Lcom/senseonics/model/TempProfileModel/GlucoseProfile;->UsedAtLeastOnce_TargetHigh:Z

    return v0
.end method

.method public isUsedAtLeastOnce_TargetLow()Z
    .locals 1

    .line 109
    iget-boolean v0, p0, Lcom/senseonics/model/TempProfileModel/GlucoseProfile;->UsedAtLeastOnce_TargetLow:Z

    return v0
.end method

.method public setAlarmHigh(I)V
    .locals 0

    .line 57
    iput p1, p0, Lcom/senseonics/model/TempProfileModel/GlucoseProfile;->AlarmHigh:I

    return-void
.end method

.method public setAlarmLow(I)V
    .locals 0

    .line 65
    iput p1, p0, Lcom/senseonics/model/TempProfileModel/GlucoseProfile;->AlarmLow:I

    return-void
.end method

.method public setTargetHigh(I)V
    .locals 0

    .line 73
    iput p1, p0, Lcom/senseonics/model/TempProfileModel/GlucoseProfile;->TargetHigh:I

    return-void
.end method

.method public setTargetLow(I)V
    .locals 0

    .line 81
    iput p1, p0, Lcom/senseonics/model/TempProfileModel/GlucoseProfile;->TargetLow:I

    return-void
.end method

.method public setUsedAtLeastOnce_AlarmHigh(Z)V
    .locals 0

    .line 89
    iput-boolean p1, p0, Lcom/senseonics/model/TempProfileModel/GlucoseProfile;->UsedAtLeastOnce_AlarmHigh:Z

    return-void
.end method

.method public setUsedAtLeastOnce_AlarmLow(Z)V
    .locals 0

    .line 97
    iput-boolean p1, p0, Lcom/senseonics/model/TempProfileModel/GlucoseProfile;->UsedAtLeastOnce_AlarmLow:Z

    return-void
.end method

.method public setUsedAtLeastOnce_TargetHigh(Z)V
    .locals 0

    .line 105
    iput-boolean p1, p0, Lcom/senseonics/model/TempProfileModel/GlucoseProfile;->UsedAtLeastOnce_TargetHigh:Z

    return-void
.end method

.method public setUsedAtLeastOnce_TargetLow(Z)V
    .locals 0

    .line 113
    iput-boolean p1, p0, Lcom/senseonics/model/TempProfileModel/GlucoseProfile;->UsedAtLeastOnce_TargetLow:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ Target High:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/senseonics/model/TempProfileModel/GlucoseProfile;->TargetHigh:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/senseonics/model/TempProfileModel/GlucoseProfile;->UsedAtLeastOnce_TargetHigh:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ") ; Target Low:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/senseonics/model/TempProfileModel/GlucoseProfile;->TargetLow:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/senseonics/model/TempProfileModel/GlucoseProfile;->UsedAtLeastOnce_TargetLow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ") ; Alarm High:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/senseonics/model/TempProfileModel/GlucoseProfile;->AlarmHigh:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/senseonics/model/TempProfileModel/GlucoseProfile;->UsedAtLeastOnce_AlarmHigh:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ") ; Alarm Low:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/senseonics/model/TempProfileModel/GlucoseProfile;->AlarmLow:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/senseonics/model/TempProfileModel/GlucoseProfile;->UsedAtLeastOnce_AlarmLow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ") }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
