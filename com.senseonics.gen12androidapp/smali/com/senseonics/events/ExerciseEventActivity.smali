.class public Lcom/senseonics/events/ExerciseEventActivity;
.super Lcom/senseonics/events/EventActivity;
.source "ExerciseEventActivity.java"


# instance fields
.field private dialog:Landroid/app/Dialog;

.field private durationMinute:I

.field private durationTextView:Landroid/widget/TextView;

.field private intensity:Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;

.field private intensityManager:Lcom/senseonics/events/EventUtils$PickerManager;

.field private intensityName:Ljava/lang/String;

.field private intensityTextView:Landroid/widget/TextView;

.field private list1:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Item;",
            ">;"
        }
    .end annotation
.end field

.field private list2:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Item;",
            ">;"
        }
    .end annotation
.end field

.field private maxHours:I

.field private maxMinutes:I

.field private minHours:I

.field private minMinutes:I

.field private selectedHours:I

.field private selectedMinute:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Lcom/senseonics/events/EventActivity;-><init>()V

    .line 26
    sget-object v0, Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;->MEDIUM:Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;

    iput-object v0, p0, Lcom/senseonics/events/ExerciseEventActivity;->intensity:Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/senseonics/events/ExerciseEventActivity;->durationMinute:I

    .line 32
    iput v0, p0, Lcom/senseonics/events/ExerciseEventActivity;->minHours:I

    const/4 v1, 0x5

    iput v1, p0, Lcom/senseonics/events/ExerciseEventActivity;->maxHours:I

    .line 33
    iput v0, p0, Lcom/senseonics/events/ExerciseEventActivity;->minMinutes:I

    const/16 v0, 0x3b

    iput v0, p0, Lcom/senseonics/events/ExerciseEventActivity;->maxMinutes:I

    return-void
.end method

.method static synthetic access$000(Lcom/senseonics/events/ExerciseEventActivity;)Lcom/senseonics/events/EventUtils$PickerManager;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/senseonics/events/ExerciseEventActivity;->intensityManager:Lcom/senseonics/events/EventUtils$PickerManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/senseonics/events/ExerciseEventActivity;)Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/senseonics/events/ExerciseEventActivity;->intensity:Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;

    return-object p0
.end method

.method static synthetic access$200(Lcom/senseonics/events/ExerciseEventActivity;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/senseonics/events/ExerciseEventActivity;->selectedHours:I

    return p0
.end method

.method static synthetic access$202(Lcom/senseonics/events/ExerciseEventActivity;I)I
    .locals 0

    .line 22
    iput p1, p0, Lcom/senseonics/events/ExerciseEventActivity;->selectedHours:I

    return p1
.end method

.method static synthetic access$300(Lcom/senseonics/events/ExerciseEventActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/senseonics/events/ExerciseEventActivity;->list1:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$400(Lcom/senseonics/events/ExerciseEventActivity;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/senseonics/events/ExerciseEventActivity;->selectedMinute:I

    return p0
.end method

.method static synthetic access$402(Lcom/senseonics/events/ExerciseEventActivity;I)I
    .locals 0

    .line 22
    iput p1, p0, Lcom/senseonics/events/ExerciseEventActivity;->selectedMinute:I

    return p1
.end method

.method static synthetic access$500(Lcom/senseonics/events/ExerciseEventActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/senseonics/events/ExerciseEventActivity;->list2:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$602(Lcom/senseonics/events/ExerciseEventActivity;I)I
    .locals 0

    .line 22
    iput p1, p0, Lcom/senseonics/events/ExerciseEventActivity;->durationMinute:I

    return p1
.end method

.method static synthetic access$700(Lcom/senseonics/events/ExerciseEventActivity;)Landroid/widget/TextView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/senseonics/events/ExerciseEventActivity;->durationTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/senseonics/events/ExerciseEventActivity;)Landroid/app/Dialog;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/senseonics/events/ExerciseEventActivity;->dialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$802(Lcom/senseonics/events/ExerciseEventActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/senseonics/events/ExerciseEventActivity;->dialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$900(Lcom/senseonics/events/ExerciseEventActivity;)Lcom/senseonics/bluetoothle/DialogUtils;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/senseonics/events/ExerciseEventActivity;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 38
    invoke-super {p0, p1}, Lcom/senseonics/events/EventActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    iget-object p1, p0, Lcom/senseonics/events/ExerciseEventActivity;->naviBarTitle:Landroid/widget/TextView;

    const v0, 0x7f0f00f1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 43
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 44
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->getExerciseLayout()I

    move-result v0

    iget-object v1, p0, Lcom/senseonics/events/ExerciseEventActivity;->contentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 46
    iget-object p1, p0, Lcom/senseonics/events/ExerciseEventActivity;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    iget v0, p0, Lcom/senseonics/events/ExerciseEventActivity;->minHours:I

    iget v1, p0, Lcom/senseonics/events/ExerciseEventActivity;->maxHours:I

    const v2, 0x7f0f0123

    invoke-virtual {p0, v2}, Lcom/senseonics/events/ExerciseEventActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p1, v0, v1, v4, v3}, Lcom/senseonics/bluetoothle/DialogUtils;->getNumbersBetweenWithSuffix(IIILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/events/ExerciseEventActivity;->list1:Ljava/util/ArrayList;

    .line 47
    iget-object p1, p0, Lcom/senseonics/events/ExerciseEventActivity;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    iget v0, p0, Lcom/senseonics/events/ExerciseEventActivity;->minMinutes:I

    iget v1, p0, Lcom/senseonics/events/ExerciseEventActivity;->maxMinutes:I

    const v3, 0x7f0f016b

    invoke-virtual {p0, v3}, Lcom/senseonics/events/ExerciseEventActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v0, v1, v4, v5}, Lcom/senseonics/bluetoothle/DialogUtils;->getNumbersBetweenWithSuffix(IIILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/events/ExerciseEventActivity;->list2:Ljava/util/ArrayList;

    const p1, 0x7f090161

    .line 49
    invoke-virtual {p0, p1}, Lcom/senseonics/events/ExerciseEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    const v0, 0x7f0900f6

    .line 50
    invoke-virtual {p0, v0}, Lcom/senseonics/events/ExerciseEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f090160

    .line 51
    invoke-virtual {p0, v1}, Lcom/senseonics/events/ExerciseEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/senseonics/events/ExerciseEventActivity;->intensityTextView:Landroid/widget/TextView;

    const v1, 0x7f0900f5

    .line 52
    invoke-virtual {p0, v1}, Lcom/senseonics/events/ExerciseEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/senseonics/events/ExerciseEventActivity;->durationTextView:Landroid/widget/TextView;

    .line 54
    new-instance v1, Lcom/senseonics/events/ExerciseEventActivity$1;

    invoke-direct {v1, p0}, Lcom/senseonics/events/ExerciseEventActivity$1;-><init>(Lcom/senseonics/events/ExerciseEventActivity;)V

    iput-object v1, p0, Lcom/senseonics/events/ExerciseEventActivity;->intensityManager:Lcom/senseonics/events/EventUtils$PickerManager;

    .line 62
    new-instance v1, Lcom/senseonics/events/ExerciseEventActivity$2;

    invoke-direct {v1, p0}, Lcom/senseonics/events/ExerciseEventActivity$2;-><init>(Lcom/senseonics/events/ExerciseEventActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    new-instance p1, Lcom/senseonics/events/ExerciseEventActivity$3;

    invoke-direct {p1, p0}, Lcom/senseonics/events/ExerciseEventActivity$3;-><init>(Lcom/senseonics/events/ExerciseEventActivity;)V

    .line 87
    new-instance v1, Lcom/senseonics/events/ExerciseEventActivity$4;

    invoke-direct {v1, p0, p1}, Lcom/senseonics/events/ExerciseEventActivity$4;-><init>(Lcom/senseonics/events/ExerciseEventActivity;Lcom/senseonics/util/dialogs/DoublePickerManager;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v0, p0, Lcom/senseonics/events/ExerciseEventActivity;->eventPoint:Lcom/senseonics/events/EventPoint;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/senseonics/events/ExerciseEventActivity;->eventPoint:Lcom/senseonics/events/EventPoint;

    check-cast v0, Lcom/senseonics/events/ExerciseEventPoint;

    invoke-virtual {v0}, Lcom/senseonics/events/ExerciseEventPoint;->getIntensity()Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;->ordinal()I

    move-result v0

    .line 108
    invoke-virtual {p0, v0}, Lcom/senseonics/events/ExerciseEventActivity;->setIntensity(I)V

    .line 110
    iget-object v0, p0, Lcom/senseonics/events/ExerciseEventActivity;->eventPoint:Lcom/senseonics/events/EventPoint;

    check-cast v0, Lcom/senseonics/events/ExerciseEventPoint;

    invoke-virtual {v0}, Lcom/senseonics/events/ExerciseEventPoint;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/senseonics/events/ExerciseEventActivity;->durationMinute:I

    goto :goto_0

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/senseonics/events/ExerciseEventActivity;->intensity:Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;

    invoke-virtual {v0}, Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/senseonics/events/ExerciseEventActivity;->setIntensity(I)V

    .line 114
    :goto_0
    iget v0, p0, Lcom/senseonics/events/ExerciseEventActivity;->durationMinute:I

    div-int/lit8 v0, v0, 0x3c

    iput v0, p0, Lcom/senseonics/events/ExerciseEventActivity;->selectedHours:I

    .line 115
    iget v0, p0, Lcom/senseonics/events/ExerciseEventActivity;->durationMinute:I

    rem-int/lit8 v0, v0, 0x3c

    iput v0, p0, Lcom/senseonics/events/ExerciseEventActivity;->selectedMinute:I

    .line 117
    iget-object v0, p0, Lcom/senseonics/events/ExerciseEventActivity;->list1:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/senseonics/events/ExerciseEventActivity;->selectedHours:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Lcom/senseonics/events/ExerciseEventActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/senseonics/util/Utils;->getItemPosition(Ljava/util/ArrayList;Ljava/lang/String;)I

    move-result v0

    .line 118
    iget-object v1, p0, Lcom/senseonics/events/ExerciseEventActivity;->list2:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/senseonics/events/ExerciseEventActivity;->selectedMinute:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Lcom/senseonics/events/ExerciseEventActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/senseonics/util/Utils;->getItemPosition(Ljava/util/ArrayList;Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-eq v1, v2, :cond_1

    .line 120
    invoke-interface {p1, v0, v1}, Lcom/senseonics/util/dialogs/DoublePickerManager;->selected(II)V

    :cond_1
    return-void
.end method

.method public onSavePressed()V
    .locals 8

    .line 132
    invoke-super {p0}, Lcom/senseonics/events/EventActivity;->onSavePressed()V

    .line 135
    iget-boolean v0, p0, Lcom/senseonics/events/ExerciseEventActivity;->isEditing:Z

    if-eqz v0, :cond_0

    .line 136
    new-instance v0, Lcom/senseonics/events/ExerciseEventPoint;

    iget-object v1, p0, Lcom/senseonics/events/ExerciseEventActivity;->eventPoint:Lcom/senseonics/events/EventPoint;

    .line 137
    invoke-virtual {v1}, Lcom/senseonics/events/EventPoint;->getDatabaseId()I

    move-result v2

    iget-object v3, p0, Lcom/senseonics/events/ExerciseEventActivity;->currentDate:Ljava/util/Calendar;

    iget v4, p0, Lcom/senseonics/events/ExerciseEventActivity;->glucoseLevel:I

    iget v5, p0, Lcom/senseonics/events/ExerciseEventActivity;->durationMinute:I

    iget-object v6, p0, Lcom/senseonics/events/ExerciseEventActivity;->intensity:Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;

    iget-object v1, p0, Lcom/senseonics/events/ExerciseEventActivity;->notesEditText:Landroid/widget/EditText;

    .line 138
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 139
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/senseonics/events/ExerciseEventPoint;-><init>(ILjava/util/Calendar;IILcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;Ljava/lang/String;)V

    .line 140
    iget-object v1, p0, Lcom/senseonics/events/ExerciseEventActivity;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    invoke-virtual {v1, v0}, Lcom/senseonics/db/DatabaseManager;->updateEvent(Lcom/senseonics/events/EventPoint;)V

    goto :goto_0

    .line 142
    :cond_0
    new-instance v0, Lcom/senseonics/events/ExerciseEventPoint;

    iget-object v3, p0, Lcom/senseonics/events/ExerciseEventActivity;->currentDate:Ljava/util/Calendar;

    iget v4, p0, Lcom/senseonics/events/ExerciseEventActivity;->glucoseLevel:I

    iget v5, p0, Lcom/senseonics/events/ExerciseEventActivity;->durationMinute:I

    iget-object v6, p0, Lcom/senseonics/events/ExerciseEventActivity;->intensity:Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;

    iget-object v1, p0, Lcom/senseonics/events/ExerciseEventActivity;->notesEditText:Landroid/widget/EditText;

    .line 144
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/senseonics/events/ExerciseEventPoint;-><init>(Ljava/util/Calendar;IILcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;Ljava/lang/String;)V

    .line 145
    iget-object v1, p0, Lcom/senseonics/events/ExerciseEventActivity;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/senseonics/db/DatabaseManager;->addEvent(Lcom/senseonics/events/EventPoint;Z)J

    move-result-wide v1

    long-to-int v1, v1

    .line 147
    invoke-virtual {v0, v1}, Lcom/senseonics/events/ExerciseEventPoint;->setDatabaseId(I)V

    .line 150
    :goto_0
    sget-object v1, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->patientEventPoints:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    invoke-virtual {p0}, Lcom/senseonics/events/ExerciseEventActivity;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postWritePatientEventPoint(Lcom/senseonics/events/PatientEventPoint;)V

    .line 153
    invoke-virtual {p0}, Lcom/senseonics/events/ExerciseEventActivity;->finish()V

    return-void
.end method

.method public setIntensity(I)V
    .locals 1

    .line 124
    invoke-static {}, Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;->values()[Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;

    move-result-object v0

    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/senseonics/events/ExerciseEventActivity;->intensity:Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;

    .line 125
    iget-object p1, p0, Lcom/senseonics/events/ExerciseEventActivity;->intensity:Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;

    invoke-static {p0, p1}, Lcom/senseonics/events/EventUtils;->getExerciseIntensityName(Landroid/content/Context;Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/events/ExerciseEventActivity;->intensityName:Ljava/lang/String;

    .line 127
    iget-object p1, p0, Lcom/senseonics/events/ExerciseEventActivity;->intensityTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/senseonics/events/ExerciseEventActivity;->intensityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
