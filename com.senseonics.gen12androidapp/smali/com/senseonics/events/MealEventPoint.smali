.class public Lcom/senseonics/events/MealEventPoint;
.super Lcom/senseonics/events/EventPoint;
.source "MealEventPoint.java"

# interfaces
.implements Lcom/senseonics/events/PatientEventPoint;


# instance fields
.field private carbs:I

.field private mealType:Lcom/senseonics/events/EventUtils$MEAL_TYPE;


# direct methods
.method public constructor <init>(ILjava/util/Calendar;ILcom/senseonics/events/EventUtils$MEAL_TYPE;ILjava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/senseonics/events/EventPoint;-><init>(ILjava/util/Calendar;I)V

    .line 24
    invoke-virtual {p0, p4}, Lcom/senseonics/events/MealEventPoint;->setMealType(Lcom/senseonics/events/EventUtils$MEAL_TYPE;)V

    .line 25
    invoke-virtual {p0, p5}, Lcom/senseonics/events/MealEventPoint;->setCarbs(I)V

    .line 26
    invoke-virtual {p0, p6}, Lcom/senseonics/events/MealEventPoint;->setNotes(Ljava/lang/String;)V

    .line 27
    sget-object p1, Lcom/senseonics/util/Utils$EVENT_TYPE;->MEAL_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    invoke-virtual {p0, p1}, Lcom/senseonics/events/MealEventPoint;->setEventType(Lcom/senseonics/util/Utils$EVENT_TYPE;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;ILcom/senseonics/events/EventUtils$MEAL_TYPE;ILjava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/senseonics/events/EventPoint;-><init>(Ljava/util/Calendar;I)V

    .line 15
    invoke-virtual {p0, p3}, Lcom/senseonics/events/MealEventPoint;->setMealType(Lcom/senseonics/events/EventUtils$MEAL_TYPE;)V

    .line 16
    invoke-virtual {p0, p4}, Lcom/senseonics/events/MealEventPoint;->setCarbs(I)V

    .line 17
    invoke-virtual {p0, p5}, Lcom/senseonics/events/MealEventPoint;->setNotes(Ljava/lang/String;)V

    .line 18
    sget-object p1, Lcom/senseonics/util/Utils$EVENT_TYPE;->MEAL_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    invoke-virtual {p0, p1}, Lcom/senseonics/events/MealEventPoint;->setEventType(Lcom/senseonics/util/Utils$EVENT_TYPE;)V

    return-void
.end method


# virtual methods
.method public eventSubTypeId()I
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/senseonics/events/MealEventPoint;->mealType:Lcom/senseonics/events/EventUtils$MEAL_TYPE;

    invoke-virtual {v0}, Lcom/senseonics/events/EventUtils$MEAL_TYPE;->ordinal()I

    move-result v0

    return v0
.end method

.method public eventTypeId()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getCarbs()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/senseonics/events/MealEventPoint;->carbs:I

    return v0
.end method

.method public getMealType()Lcom/senseonics/events/EventUtils$MEAL_TYPE;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/senseonics/events/MealEventPoint;->mealType:Lcom/senseonics/events/EventUtils$MEAL_TYPE;

    return-object v0
.end method

.method public quantity()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/senseonics/events/MealEventPoint;->carbs:I

    return v0
.end method

.method public setCarbs(I)V
    .locals 0

    .line 43
    iput p1, p0, Lcom/senseonics/events/MealEventPoint;->carbs:I

    return-void
.end method

.method public setMealType(Lcom/senseonics/events/EventUtils$MEAL_TYPE;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/senseonics/events/MealEventPoint;->mealType:Lcom/senseonics/events/EventUtils$MEAL_TYPE;

    return-void
.end method
