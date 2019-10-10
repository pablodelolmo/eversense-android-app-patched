.class public Lcom/senseonics/events/MealEventActivity;
.super Lcom/senseonics/events/EventActivity;
.source "MealEventActivity.java"


# instance fields
.field private carbs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Item;",
            ">;"
        }
    .end annotation
.end field

.field private carbsTextView:Landroid/widget/TextView;

.field private dialog:Landroid/app/Dialog;

.field private maxCarbs:I

.field private mealType:Lcom/senseonics/events/EventUtils$MEAL_TYPE;

.field private mealTypeManager:Lcom/senseonics/events/EventUtils$PickerManager;

.field private mealTypeName:Ljava/lang/String;

.field private mealTypeTextView:Landroid/widget/TextView;

.field private minCarbs:I

.field private selectedCarbs:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/senseonics/events/EventActivity;-><init>()V

    .line 25
    sget-object v0, Lcom/senseonics/events/EventUtils$MEAL_TYPE;->BREAKFAST:Lcom/senseonics/events/EventUtils$MEAL_TYPE;

    iput-object v0, p0, Lcom/senseonics/events/MealEventActivity;->mealType:Lcom/senseonics/events/EventUtils$MEAL_TYPE;

    const/16 v0, 0xf

    .line 27
    iput v0, p0, Lcom/senseonics/events/MealEventActivity;->selectedCarbs:I

    const/4 v0, 0x1

    .line 28
    iput v0, p0, Lcom/senseonics/events/MealEventActivity;->minCarbs:I

    const/16 v0, 0x12c

    iput v0, p0, Lcom/senseonics/events/MealEventActivity;->maxCarbs:I

    return-void
.end method

.method static synthetic access$000(Lcom/senseonics/events/MealEventActivity;)Lcom/senseonics/events/EventUtils$PickerManager;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/senseonics/events/MealEventActivity;->mealTypeManager:Lcom/senseonics/events/EventUtils$PickerManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/senseonics/events/MealEventActivity;)Lcom/senseonics/events/EventUtils$MEAL_TYPE;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/senseonics/events/MealEventActivity;->mealType:Lcom/senseonics/events/EventUtils$MEAL_TYPE;

    return-object p0
.end method

.method static synthetic access$200(Lcom/senseonics/events/MealEventActivity;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/senseonics/events/MealEventActivity;->selectedCarbs:I

    return p0
.end method

.method static synthetic access$202(Lcom/senseonics/events/MealEventActivity;I)I
    .locals 0

    .line 21
    iput p1, p0, Lcom/senseonics/events/MealEventActivity;->selectedCarbs:I

    return p1
.end method

.method static synthetic access$300(Lcom/senseonics/events/MealEventActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/senseonics/events/MealEventActivity;->carbs:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$400(Lcom/senseonics/events/MealEventActivity;)Lcom/senseonics/bluetoothle/DialogUtils;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/senseonics/events/MealEventActivity;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    return-object p0
.end method

.method static synthetic access$500(Lcom/senseonics/events/MealEventActivity;)Landroid/widget/TextView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/senseonics/events/MealEventActivity;->carbsTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/senseonics/events/MealEventActivity;)Landroid/app/Dialog;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/senseonics/events/MealEventActivity;->dialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$602(Lcom/senseonics/events/MealEventActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/senseonics/events/MealEventActivity;->dialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$700(Lcom/senseonics/events/MealEventActivity;)Lcom/senseonics/bluetoothle/DialogUtils;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/senseonics/events/MealEventActivity;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    return-object p0
.end method


# virtual methods
.method public getPosition(I)I
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/senseonics/events/MealEventActivity;->carbs:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/senseonics/util/Utils;->getItemPosition(Ljava/util/ArrayList;I)I

    move-result p1

    return p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 34
    invoke-super {p0, p1}, Lcom/senseonics/events/EventActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    iget-object p1, p0, Lcom/senseonics/events/MealEventActivity;->naviBarTitle:Landroid/widget/TextView;

    const v0, 0x7f0f0161

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 39
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 40
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->getMealLayout()I

    move-result v0

    iget-object v1, p0, Lcom/senseonics/events/MealEventActivity;->contentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 42
    iget-object p1, p0, Lcom/senseonics/events/MealEventActivity;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    iget v0, p0, Lcom/senseonics/events/MealEventActivity;->minCarbs:I

    iget v1, p0, Lcom/senseonics/events/MealEventActivity;->maxCarbs:I

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/senseonics/bluetoothle/DialogUtils;->getNumbersBetween(III)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/events/MealEventActivity;->carbs:Ljava/util/ArrayList;

    const p1, 0x7f09019f

    .line 44
    invoke-virtual {p0, p1}, Lcom/senseonics/events/MealEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    const v0, 0x7f090094

    .line 45
    invoke-virtual {p0, v0}, Lcom/senseonics/events/MealEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f09019e

    .line 47
    invoke-virtual {p0, v1}, Lcom/senseonics/events/MealEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/senseonics/events/MealEventActivity;->mealTypeTextView:Landroid/widget/TextView;

    const v1, 0x7f090095

    .line 48
    invoke-virtual {p0, v1}, Lcom/senseonics/events/MealEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/senseonics/events/MealEventActivity;->carbsTextView:Landroid/widget/TextView;

    .line 50
    new-instance v1, Lcom/senseonics/events/MealEventActivity$1;

    invoke-direct {v1, p0}, Lcom/senseonics/events/MealEventActivity$1;-><init>(Lcom/senseonics/events/MealEventActivity;)V

    iput-object v1, p0, Lcom/senseonics/events/MealEventActivity;->mealTypeManager:Lcom/senseonics/events/EventUtils$PickerManager;

    .line 57
    new-instance v1, Lcom/senseonics/events/MealEventActivity$2;

    invoke-direct {v1, p0}, Lcom/senseonics/events/MealEventActivity$2;-><init>(Lcom/senseonics/events/MealEventActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    new-instance p1, Lcom/senseonics/events/MealEventActivity$3;

    invoke-direct {p1, p0}, Lcom/senseonics/events/MealEventActivity$3;-><init>(Lcom/senseonics/events/MealEventActivity;)V

    .line 79
    new-instance v1, Lcom/senseonics/events/MealEventActivity$4;

    invoke-direct {v1, p0, p1}, Lcom/senseonics/events/MealEventActivity$4;-><init>(Lcom/senseonics/events/MealEventActivity;Lcom/senseonics/events/EventUtils$PickerManager;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v0, p0, Lcom/senseonics/events/MealEventActivity;->eventPoint:Lcom/senseonics/events/EventPoint;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/senseonics/events/MealEventActivity;->eventPoint:Lcom/senseonics/events/EventPoint;

    check-cast v0, Lcom/senseonics/events/MealEventPoint;

    invoke-virtual {v0}, Lcom/senseonics/events/MealEventPoint;->getCarbs()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/senseonics/events/MealEventActivity;->getPosition(I)I

    move-result v0

    .line 96
    iget-object v1, p0, Lcom/senseonics/events/MealEventActivity;->eventPoint:Lcom/senseonics/events/EventPoint;

    check-cast v1, Lcom/senseonics/events/MealEventPoint;

    invoke-virtual {v1}, Lcom/senseonics/events/MealEventPoint;->getMealType()Lcom/senseonics/events/EventUtils$MEAL_TYPE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/senseonics/events/EventUtils$MEAL_TYPE;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/senseonics/events/MealEventActivity;->setMealType(I)V

    goto :goto_0

    .line 98
    :cond_0
    iget v0, p0, Lcom/senseonics/events/MealEventActivity;->selectedCarbs:I

    invoke-virtual {p0, v0}, Lcom/senseonics/events/MealEventActivity;->getPosition(I)I

    move-result v0

    .line 99
    iget-object v1, p0, Lcom/senseonics/events/MealEventActivity;->mealType:Lcom/senseonics/events/EventUtils$MEAL_TYPE;

    invoke-virtual {v1}, Lcom/senseonics/events/EventUtils$MEAL_TYPE;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/senseonics/events/MealEventActivity;->setMealType(I)V

    .line 101
    :goto_0
    invoke-interface {p1, v0}, Lcom/senseonics/events/EventUtils$PickerManager;->selected(I)V

    return-void
.end method

.method public onSavePressed()V
    .locals 8

    .line 117
    invoke-super {p0}, Lcom/senseonics/events/EventActivity;->onSavePressed()V

    .line 120
    iget-boolean v0, p0, Lcom/senseonics/events/MealEventActivity;->isEditing:Z

    if-eqz v0, :cond_0

    .line 121
    new-instance v0, Lcom/senseonics/events/MealEventPoint;

    iget-object v1, p0, Lcom/senseonics/events/MealEventActivity;->eventPoint:Lcom/senseonics/events/EventPoint;

    invoke-virtual {v1}, Lcom/senseonics/events/EventPoint;->getDatabaseId()I

    move-result v2

    iget-object v3, p0, Lcom/senseonics/events/MealEventActivity;->currentDate:Ljava/util/Calendar;

    iget v4, p0, Lcom/senseonics/events/MealEventActivity;->glucoseLevel:I

    iget-object v5, p0, Lcom/senseonics/events/MealEventActivity;->mealType:Lcom/senseonics/events/EventUtils$MEAL_TYPE;

    iget v6, p0, Lcom/senseonics/events/MealEventActivity;->selectedCarbs:I

    iget-object v1, p0, Lcom/senseonics/events/MealEventActivity;->notesEditText:Landroid/widget/EditText;

    .line 123
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/senseonics/events/MealEventPoint;-><init>(ILjava/util/Calendar;ILcom/senseonics/events/EventUtils$MEAL_TYPE;ILjava/lang/String;)V

    .line 124
    iget-object v1, p0, Lcom/senseonics/events/MealEventActivity;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    invoke-virtual {v1, v0}, Lcom/senseonics/db/DatabaseManager;->updateEvent(Lcom/senseonics/events/EventPoint;)V

    goto :goto_0

    .line 126
    :cond_0
    new-instance v0, Lcom/senseonics/events/MealEventPoint;

    iget-object v3, p0, Lcom/senseonics/events/MealEventActivity;->currentDate:Ljava/util/Calendar;

    iget v4, p0, Lcom/senseonics/events/MealEventActivity;->glucoseLevel:I

    iget-object v5, p0, Lcom/senseonics/events/MealEventActivity;->mealType:Lcom/senseonics/events/EventUtils$MEAL_TYPE;

    iget v6, p0, Lcom/senseonics/events/MealEventActivity;->selectedCarbs:I

    iget-object v1, p0, Lcom/senseonics/events/MealEventActivity;->notesEditText:Landroid/widget/EditText;

    .line 127
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/senseonics/events/MealEventPoint;-><init>(Ljava/util/Calendar;ILcom/senseonics/events/EventUtils$MEAL_TYPE;ILjava/lang/String;)V

    .line 128
    iget-object v1, p0, Lcom/senseonics/events/MealEventActivity;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/senseonics/db/DatabaseManager;->addEvent(Lcom/senseonics/events/EventPoint;Z)J

    move-result-wide v1

    long-to-int v1, v1

    .line 129
    invoke-virtual {v0, v1}, Lcom/senseonics/events/MealEventPoint;->setDatabaseId(I)V

    .line 132
    :goto_0
    sget-object v1, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->patientEventPoints:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    invoke-virtual {p0}, Lcom/senseonics/events/MealEventActivity;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postWritePatientEventPoint(Lcom/senseonics/events/PatientEventPoint;)V

    .line 135
    invoke-virtual {p0}, Lcom/senseonics/events/MealEventActivity;->finish()V

    return-void
.end method

.method public setMealType(I)V
    .locals 1

    .line 105
    invoke-static {}, Lcom/senseonics/events/EventUtils$MEAL_TYPE;->values()[Lcom/senseonics/events/EventUtils$MEAL_TYPE;

    move-result-object v0

    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/senseonics/events/MealEventActivity;->mealType:Lcom/senseonics/events/EventUtils$MEAL_TYPE;

    .line 106
    iget-object p1, p0, Lcom/senseonics/events/MealEventActivity;->mealType:Lcom/senseonics/events/EventUtils$MEAL_TYPE;

    invoke-static {p0, p1}, Lcom/senseonics/events/EventUtils;->getMealTypeName(Landroid/content/Context;Lcom/senseonics/events/EventUtils$MEAL_TYPE;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/events/MealEventActivity;->mealTypeName:Ljava/lang/String;

    .line 108
    iget-object p1, p0, Lcom/senseonics/events/MealEventActivity;->mealTypeTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/senseonics/events/MealEventActivity;->mealTypeName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
