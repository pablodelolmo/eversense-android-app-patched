.class public Lcom/senseonics/events/ExerciseEventPoint;
.super Lcom/senseonics/events/EventPoint;
.source "ExerciseEventPoint.java"

# interfaces
.implements Lcom/senseonics/events/PatientEventPoint;


# instance fields
.field private duration:I

.field private intensity:Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;


# direct methods
.method public constructor <init>(ILjava/util/Calendar;IILcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/senseonics/events/EventPoint;-><init>(ILjava/util/Calendar;I)V

    .line 28
    invoke-virtual {p0, p4}, Lcom/senseonics/events/ExerciseEventPoint;->setDuration(I)V

    .line 29
    invoke-virtual {p0, p5}, Lcom/senseonics/events/ExerciseEventPoint;->setIntensity(Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;)V

    .line 30
    invoke-virtual {p0, p6}, Lcom/senseonics/events/ExerciseEventPoint;->setNotes(Ljava/lang/String;)V

    .line 31
    sget-object p1, Lcom/senseonics/util/Utils$EVENT_TYPE;->EXERCISE_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    invoke-virtual {p0, p1}, Lcom/senseonics/events/ExerciseEventPoint;->setEventType(Lcom/senseonics/util/Utils$EVENT_TYPE;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;IILcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/senseonics/events/EventPoint;-><init>(Ljava/util/Calendar;I)V

    .line 18
    invoke-virtual {p0, p3}, Lcom/senseonics/events/ExerciseEventPoint;->setDuration(I)V

    .line 19
    invoke-virtual {p0, p4}, Lcom/senseonics/events/ExerciseEventPoint;->setIntensity(Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;)V

    .line 20
    invoke-virtual {p0, p5}, Lcom/senseonics/events/ExerciseEventPoint;->setNotes(Ljava/lang/String;)V

    .line 21
    sget-object p1, Lcom/senseonics/util/Utils$EVENT_TYPE;->EXERCISE_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    invoke-virtual {p0, p1}, Lcom/senseonics/events/ExerciseEventPoint;->setEventType(Lcom/senseonics/util/Utils$EVENT_TYPE;)V

    return-void
.end method


# virtual methods
.method public eventSubTypeId()I
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/senseonics/events/ExerciseEventPoint;->intensity:Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;

    invoke-virtual {v0}, Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;->getSubType()I

    move-result v0

    return v0
.end method

.method public eventTypeId()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public getDuration()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/senseonics/events/ExerciseEventPoint;->duration:I

    return v0
.end method

.method public getDurationText(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 39
    iget v0, p0, Lcom/senseonics/events/ExerciseEventPoint;->duration:I

    div-int/lit8 v0, v0, 0x3c

    .line 40
    iget v1, p0, Lcom/senseonics/events/ExerciseEventPoint;->duration:I

    rem-int/lit8 v1, v1, 0x3c

    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0f0123

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0f016b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getIntensity()Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/senseonics/events/ExerciseEventPoint;->intensity:Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;

    return-object v0
.end method

.method public quantity()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/senseonics/events/ExerciseEventPoint;->duration:I

    return v0
.end method

.method public setDuration(I)V
    .locals 0

    .line 47
    iput p1, p0, Lcom/senseonics/events/ExerciseEventPoint;->duration:I

    return-void
.end method

.method public setIntensity(Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/senseonics/events/ExerciseEventPoint;->intensity:Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;

    return-void
.end method
