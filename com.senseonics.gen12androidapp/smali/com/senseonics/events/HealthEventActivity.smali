.class public Lcom/senseonics/events/HealthEventActivity;
.super Lcom/senseonics/events/EventActivity;
.source "HealthEventActivity.java"


# instance fields
.field private condition:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

.field private conditionManager:Lcom/senseonics/events/EventUtils$PickerManager;

.field private conditionName:Ljava/lang/String;

.field private conditionTextView:Landroid/widget/TextView;

.field private severity:Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;

.field private severityManager:Lcom/senseonics/events/EventUtils$PickerManager;

.field private severityName:Ljava/lang/String;

.field private severityTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Lcom/senseonics/events/EventActivity;-><init>()V

    .line 21
    sget-object v0, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->NORMAL:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    iput-object v0, p0, Lcom/senseonics/events/HealthEventActivity;->condition:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    .line 22
    sget-object v0, Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;->MEDIUM:Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;

    iput-object v0, p0, Lcom/senseonics/events/HealthEventActivity;->severity:Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;

    return-void
.end method

.method static synthetic access$000(Lcom/senseonics/events/HealthEventActivity;)Lcom/senseonics/events/EventUtils$PickerManager;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/senseonics/events/HealthEventActivity;->conditionManager:Lcom/senseonics/events/EventUtils$PickerManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/senseonics/events/HealthEventActivity;)Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/senseonics/events/HealthEventActivity;->condition:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    return-object p0
.end method

.method static synthetic access$200(Lcom/senseonics/events/HealthEventActivity;)Lcom/senseonics/events/EventUtils$PickerManager;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/senseonics/events/HealthEventActivity;->severityManager:Lcom/senseonics/events/EventUtils$PickerManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/senseonics/events/HealthEventActivity;)Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/senseonics/events/HealthEventActivity;->severity:Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;

    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 27
    invoke-super {p0, p1}, Lcom/senseonics/events/EventActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    iget-object p1, p0, Lcom/senseonics/events/HealthEventActivity;->naviBarTitle:Landroid/widget/TextView;

    const v0, 0x7f0f010d

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 32
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 33
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->getHealthLayout()I

    move-result v0

    iget-object v1, p0, Lcom/senseonics/events/HealthEventActivity;->contentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f0900a3

    .line 35
    invoke-virtual {p0, p1}, Lcom/senseonics/events/HealthEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    const v0, 0x7f0900a2

    .line 36
    invoke-virtual {p0, v0}, Lcom/senseonics/events/HealthEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/senseonics/events/HealthEventActivity;->conditionTextView:Landroid/widget/TextView;

    .line 38
    iget-object v0, p0, Lcom/senseonics/events/HealthEventActivity;->eventPoint:Lcom/senseonics/events/EventPoint;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/senseonics/events/HealthEventActivity;->eventPoint:Lcom/senseonics/events/EventPoint;

    check-cast v0, Lcom/senseonics/events/HealthEventPoint;

    invoke-virtual {v0}, Lcom/senseonics/events/HealthEventPoint;->getHealthCondition()Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->ordinal()I

    move-result v0

    .line 39
    invoke-virtual {p0, v0}, Lcom/senseonics/events/HealthEventActivity;->setCondition(I)V

    goto :goto_0

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/senseonics/events/HealthEventActivity;->condition:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    invoke-virtual {v0}, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/senseonics/events/HealthEventActivity;->setCondition(I)V

    .line 43
    :goto_0
    new-instance v0, Lcom/senseonics/events/HealthEventActivity$1;

    invoke-direct {v0, p0}, Lcom/senseonics/events/HealthEventActivity$1;-><init>(Lcom/senseonics/events/HealthEventActivity;)V

    iput-object v0, p0, Lcom/senseonics/events/HealthEventActivity;->conditionManager:Lcom/senseonics/events/EventUtils$PickerManager;

    .line 51
    new-instance v0, Lcom/senseonics/events/HealthEventActivity$2;

    invoke-direct {v0, p0}, Lcom/senseonics/events/HealthEventActivity$2;-><init>(Lcom/senseonics/events/HealthEventActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090246

    .line 62
    invoke-virtual {p0, p1}, Lcom/senseonics/events/HealthEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    const v0, 0x7f090245

    .line 63
    invoke-virtual {p0, v0}, Lcom/senseonics/events/HealthEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/senseonics/events/HealthEventActivity;->severityTextView:Landroid/widget/TextView;

    .line 65
    iget-object v0, p0, Lcom/senseonics/events/HealthEventActivity;->eventPoint:Lcom/senseonics/events/EventPoint;

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/senseonics/events/HealthEventActivity;->eventPoint:Lcom/senseonics/events/EventPoint;

    check-cast v0, Lcom/senseonics/events/HealthEventPoint;

    invoke-virtual {v0}, Lcom/senseonics/events/HealthEventPoint;->getHealthSeverity()Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;->ordinal()I

    move-result v0

    .line 66
    invoke-virtual {p0, v0}, Lcom/senseonics/events/HealthEventActivity;->setSeverity(I)V

    goto :goto_1

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/senseonics/events/HealthEventActivity;->severity:Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;

    invoke-virtual {v0}, Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/senseonics/events/HealthEventActivity;->setSeverity(I)V

    .line 71
    :goto_1
    new-instance v0, Lcom/senseonics/events/HealthEventActivity$3;

    invoke-direct {v0, p0}, Lcom/senseonics/events/HealthEventActivity$3;-><init>(Lcom/senseonics/events/HealthEventActivity;)V

    iput-object v0, p0, Lcom/senseonics/events/HealthEventActivity;->severityManager:Lcom/senseonics/events/EventUtils$PickerManager;

    .line 78
    new-instance v0, Lcom/senseonics/events/HealthEventActivity$4;

    invoke-direct {v0, p0}, Lcom/senseonics/events/HealthEventActivity$4;-><init>(Lcom/senseonics/events/HealthEventActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onSavePressed()V
    .locals 8

    .line 105
    invoke-super {p0}, Lcom/senseonics/events/EventActivity;->onSavePressed()V

    .line 108
    iget-boolean v0, p0, Lcom/senseonics/events/HealthEventActivity;->isEditing:Z

    if-eqz v0, :cond_0

    .line 109
    new-instance v0, Lcom/senseonics/events/HealthEventPoint;

    iget-object v1, p0, Lcom/senseonics/events/HealthEventActivity;->eventPoint:Lcom/senseonics/events/EventPoint;

    invoke-virtual {v1}, Lcom/senseonics/events/EventPoint;->getDatabaseId()I

    move-result v2

    iget-object v3, p0, Lcom/senseonics/events/HealthEventActivity;->currentDate:Ljava/util/Calendar;

    iget v4, p0, Lcom/senseonics/events/HealthEventActivity;->glucoseLevel:I

    iget-object v5, p0, Lcom/senseonics/events/HealthEventActivity;->condition:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    iget-object v6, p0, Lcom/senseonics/events/HealthEventActivity;->severity:Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;

    iget-object v1, p0, Lcom/senseonics/events/HealthEventActivity;->notesEditText:Landroid/widget/EditText;

    .line 111
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/senseonics/events/HealthEventPoint;-><init>(ILjava/util/Calendar;ILcom/senseonics/events/EventUtils$HEALTH_CONDITION;Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lcom/senseonics/events/HealthEventActivity;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    invoke-virtual {v1, v0}, Lcom/senseonics/db/DatabaseManager;->updateEvent(Lcom/senseonics/events/EventPoint;)V

    goto :goto_0

    .line 114
    :cond_0
    new-instance v0, Lcom/senseonics/events/HealthEventPoint;

    iget-object v3, p0, Lcom/senseonics/events/HealthEventActivity;->currentDate:Ljava/util/Calendar;

    iget v4, p0, Lcom/senseonics/events/HealthEventActivity;->glucoseLevel:I

    iget-object v5, p0, Lcom/senseonics/events/HealthEventActivity;->condition:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    iget-object v6, p0, Lcom/senseonics/events/HealthEventActivity;->severity:Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;

    iget-object v1, p0, Lcom/senseonics/events/HealthEventActivity;->notesEditText:Landroid/widget/EditText;

    .line 115
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/senseonics/events/HealthEventPoint;-><init>(Ljava/util/Calendar;ILcom/senseonics/events/EventUtils$HEALTH_CONDITION;Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lcom/senseonics/events/HealthEventActivity;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/senseonics/db/DatabaseManager;->addEvent(Lcom/senseonics/events/EventPoint;Z)J

    move-result-wide v1

    long-to-int v1, v1

    .line 117
    invoke-virtual {v0, v1}, Lcom/senseonics/events/HealthEventPoint;->setDatabaseId(I)V

    .line 120
    :goto_0
    sget-object v1, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->patientEventPoints:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    invoke-virtual {p0}, Lcom/senseonics/events/HealthEventActivity;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postWritePatientEventPoint(Lcom/senseonics/events/PatientEventPoint;)V

    .line 123
    invoke-virtual {p0}, Lcom/senseonics/events/HealthEventActivity;->finish()V

    return-void
.end method

.method public setCondition(I)V
    .locals 1

    .line 90
    invoke-static {}, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->values()[Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    move-result-object v0

    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/senseonics/events/HealthEventActivity;->condition:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    .line 91
    iget-object p1, p0, Lcom/senseonics/events/HealthEventActivity;->condition:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    invoke-static {p0, p1}, Lcom/senseonics/events/EventUtils;->getHealthConditionName(Landroid/content/Context;Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/events/HealthEventActivity;->conditionName:Ljava/lang/String;

    .line 93
    iget-object p1, p0, Lcom/senseonics/events/HealthEventActivity;->conditionTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/senseonics/events/HealthEventActivity;->conditionName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSeverity(I)V
    .locals 1

    .line 97
    invoke-static {}, Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;->values()[Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;

    move-result-object v0

    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/senseonics/events/HealthEventActivity;->severity:Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;

    .line 98
    iget-object p1, p0, Lcom/senseonics/events/HealthEventActivity;->severity:Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;

    invoke-static {p0, p1}, Lcom/senseonics/events/EventUtils;->getHealthSeverityName(Landroid/content/Context;Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/events/HealthEventActivity;->severityName:Ljava/lang/String;

    .line 100
    iget-object p1, p0, Lcom/senseonics/events/HealthEventActivity;->severityTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/senseonics/events/HealthEventActivity;->severityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
