.class public Lcom/senseonics/events/GlucoseEventActivity;
.super Lcom/senseonics/events/EventActivity;
.source "GlucoseEventActivity.java"


# instance fields
.field private bloodGlucoseNotUsedReasonTextView:Landroid/widget/TextView;

.field private dialog:Landroid/app/Dialog;

.field private glucoseLevelTextView:Landroid/widget/TextView;

.field private glucoseValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Item;",
            ">;"
        }
    .end annotation
.end field

.field private glucoseValuesMg:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/senseonics/events/EventActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/senseonics/events/GlucoseEventActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/senseonics/events/GlucoseEventActivity;->glucoseValues:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lcom/senseonics/events/GlucoseEventActivity;)Lcom/senseonics/bluetoothle/DialogUtils;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/senseonics/events/GlucoseEventActivity;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    return-object p0
.end method

.method static synthetic access$200(Lcom/senseonics/events/GlucoseEventActivity;)Landroid/widget/TextView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/senseonics/events/GlucoseEventActivity;->glucoseLevelTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/senseonics/events/GlucoseEventActivity;)Landroid/app/Dialog;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/senseonics/events/GlucoseEventActivity;->dialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$302(Lcom/senseonics/events/GlucoseEventActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/senseonics/events/GlucoseEventActivity;->dialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$400(Lcom/senseonics/events/GlucoseEventActivity;)Lcom/senseonics/bluetoothle/DialogUtils;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/senseonics/events/GlucoseEventActivity;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    return-object p0
.end method

.method static synthetic access$500(Lcom/senseonics/events/GlucoseEventActivity;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/senseonics/events/GlucoseEventActivity;->btnSubmitClicked()V

    return-void
.end method

.method private btnSubmitClicked()V
    .locals 5

    .line 166
    new-instance v0, Lcom/senseonics/events/GlucoseEventPoint;

    iget-object v1, p0, Lcom/senseonics/events/GlucoseEventActivity;->currentDate:Ljava/util/Calendar;

    iget v2, p0, Lcom/senseonics/events/GlucoseEventActivity;->glucoseLevel:I

    iget-object v3, p0, Lcom/senseonics/events/GlucoseEventActivity;->notesEditText:Landroid/widget/EditText;

    .line 167
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/senseonics/events/GlucoseEventPoint;-><init>(Ljava/util/Calendar;IILjava/lang/String;)V

    .line 168
    iget-object v1, p0, Lcom/senseonics/events/GlucoseEventActivity;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    invoke-virtual {v1, v0, v4}, Lcom/senseonics/db/DatabaseManager;->addEvent(Lcom/senseonics/events/EventPoint;Z)J

    move-result-wide v1

    long-to-int v1, v1

    .line 169
    invoke-virtual {v0, v1}, Lcom/senseonics/events/GlucoseEventPoint;->setDatabaseId(I)V

    .line 170
    sget-object v1, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->patientEventPoints:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    invoke-virtual {p0}, Lcom/senseonics/events/GlucoseEventActivity;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v1

    iget-object v2, p0, Lcom/senseonics/events/GlucoseEventActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->getCommunicationProtocolVersion()F

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/senseonics/bluetoothle/BluetoothService;->postWriteGlucoseEvent(Lcom/senseonics/events/GlucoseEventPoint;F)V

    .line 173
    invoke-virtual {p0}, Lcom/senseonics/events/GlucoseEventActivity;->finish()V

    return-void
.end method

.method private setReasonNotUsedTextView(I)V
    .locals 2

    const v0, 0x7f09007b

    .line 114
    invoke-virtual {p0, v0}, Lcom/senseonics/events/GlucoseEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    .line 115
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f09007c

    .line 116
    invoke-virtual {p0, v0}, Lcom/senseonics/events/GlucoseEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/senseonics/events/GlucoseEventActivity;->bloodGlucoseNotUsedReasonTextView:Landroid/widget/TextView;

    .line 117
    iget-object v0, p0, Lcom/senseonics/events/GlucoseEventActivity;->bloodGlucoseNotUsedReasonTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/senseonics/events/GlucoseEventActivity;->calibrationHelper:Lcom/senseonics/model/CalibrationHelper;

    invoke-virtual {v1, p1}, Lcom/senseonics/model/CalibrationHelper;->getShortTitleForCalibrationUseFlag(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getPosition(I)I
    .locals 5

    .line 122
    sget-object v0, Lcom/senseonics/util/Utils;->currentGlucoseUnit:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    sget-object v1, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MG_DL:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    if-ne v0, v1, :cond_0

    .line 123
    iget-object p1, p0, Lcom/senseonics/events/GlucoseEventActivity;->glucoseValuesMg:Ljava/util/ArrayList;

    iget v0, p0, Lcom/senseonics/events/GlucoseEventActivity;->glucoseLevel:I

    invoke-static {p1, v0}, Lcom/senseonics/util/Utils;->getItemPosition(Ljava/util/ArrayList;I)I

    move-result p1

    goto :goto_0

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/senseonics/events/GlucoseEventActivity;->glucoseValues:Ljava/util/ArrayList;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%.1f"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    int-to-float p1, p1

    .line 126
    invoke-static {p1}, Lcom/senseonics/util/Convert;->MLConvertMgToMmol(F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 125
    invoke-static {v0, p1}, Lcom/senseonics/util/Utils;->getItemPosition(Ljava/util/ArrayList;Ljava/lang/String;)I

    move-result p1

    :goto_0
    return p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 38
    invoke-super {p0, p1}, Lcom/senseonics/events/EventActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    iget-object p1, p0, Lcom/senseonics/events/GlucoseEventActivity;->naviBarTitle:Landroid/widget/TextView;

    const v0, 0x7f0f0105

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 43
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 44
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->getGlucoseLayout()I

    move-result v0

    iget-object v1, p0, Lcom/senseonics/events/GlucoseEventActivity;->contentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f090125

    .line 46
    invoke-virtual {p0, p1}, Lcom/senseonics/events/GlucoseEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/events/GlucoseEventActivity;->glucoseLevelTextView:Landroid/widget/TextView;

    .line 47
    iget-object p1, p0, Lcom/senseonics/events/GlucoseEventActivity;->eventPoint:Lcom/senseonics/events/EventPoint;

    if-eqz p1, :cond_2

    .line 48
    iget-object p1, p0, Lcom/senseonics/events/GlucoseEventActivity;->eventPoint:Lcom/senseonics/events/EventPoint;

    instance-of p1, p1, Lcom/senseonics/events/GlucoseEventPoint;

    if-eqz p1, :cond_0

    .line 49
    iget-object p1, p0, Lcom/senseonics/events/GlucoseEventActivity;->eventPoint:Lcom/senseonics/events/EventPoint;

    check-cast p1, Lcom/senseonics/events/GlucoseEventPoint;

    .line 50
    invoke-virtual {p1}, Lcom/senseonics/events/GlucoseEventPoint;->getCalibrationFlag()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/senseonics/events/GlucoseEventActivity;->setReasonNotUsedTextView(I)V

    goto :goto_0

    .line 51
    :cond_0
    iget-object p1, p0, Lcom/senseonics/events/GlucoseEventActivity;->eventPoint:Lcom/senseonics/events/EventPoint;

    instance-of p1, p1, Lcom/senseonics/events/CalibrationEventPoint;

    if-eqz p1, :cond_1

    .line 52
    iget-object p1, p0, Lcom/senseonics/events/GlucoseEventActivity;->eventPoint:Lcom/senseonics/events/EventPoint;

    check-cast p1, Lcom/senseonics/events/CalibrationEventPoint;

    .line 53
    invoke-virtual {p1}, Lcom/senseonics/events/CalibrationEventPoint;->getCalibrationFlag()I

    move-result p1

    .line 55
    sget-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->INSUFFICIENT_DATA_POST_FS_ENTRY:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    invoke-virtual {v0}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->getId()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 56
    invoke-direct {p0, p1}, Lcom/senseonics/events/GlucoseEventActivity;->setReasonNotUsedTextView(I)V

    .line 59
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/senseonics/events/GlucoseEventActivity;->eventPoint:Lcom/senseonics/events/EventPoint;

    .line 60
    invoke-virtual {p1}, Lcom/senseonics/events/EventPoint;->getGlucoseLevel()I

    move-result p1

    .line 59
    invoke-static {p0, p1}, Lcom/senseonics/util/Utils;->getGlucoseLevelString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    .line 61
    iget-object v0, p0, Lcom/senseonics/events/GlucoseEventActivity;->glucoseLevelTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object p1, p0, Lcom/senseonics/events/GlucoseEventActivity;->eventPoint:Lcom/senseonics/events/EventPoint;

    invoke-virtual {p1}, Lcom/senseonics/events/EventPoint;->getGlucoseLevel()I

    move-result p1

    iput p1, p0, Lcom/senseonics/events/GlucoseEventActivity;->glucoseLevel:I

    goto :goto_1

    .line 64
    :cond_2
    sget p1, Lcom/senseonics/util/Utils;->GLUCOSE_DEFAULT_LEVEL:I

    iput p1, p0, Lcom/senseonics/events/GlucoseEventActivity;->glucoseLevel:I

    .line 67
    :goto_1
    iget-object p1, p0, Lcom/senseonics/events/GlucoseEventActivity;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    sget v0, Lcom/senseonics/util/Utils;->minBloodGlucose:I

    sget v1, Lcom/senseonics/util/Utils;->maxBloodGlucose:I

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/senseonics/bluetoothle/DialogUtils;->getNumbersBetween(III)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/events/GlucoseEventActivity;->glucoseValuesMg:Ljava/util/ArrayList;

    .line 69
    sget-object p1, Lcom/senseonics/util/Utils;->currentGlucoseUnit:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    sget-object v0, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MG_DL:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    if-ne p1, v0, :cond_3

    .line 70
    iget-object p1, p0, Lcom/senseonics/events/GlucoseEventActivity;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    sget v0, Lcom/senseonics/util/Utils;->minBloodGlucose:I

    sget v1, Lcom/senseonics/util/Utils;->maxBloodGlucose:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/senseonics/bluetoothle/DialogUtils;->getGlucoseLevels(III)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/events/GlucoseEventActivity;->glucoseValues:Ljava/util/ArrayList;

    goto :goto_2

    .line 73
    :cond_3
    iget-object p1, p0, Lcom/senseonics/events/GlucoseEventActivity;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    sget v0, Lcom/senseonics/util/Utils;->minBloodGlucose:I

    int-to-float v0, v0

    invoke-static {v0}, Lcom/senseonics/util/Convert;->MLConvertMgToMmol(F)F

    move-result v0

    sget v1, Lcom/senseonics/util/Utils;->maxBloodGlucose:I

    int-to-float v1, v1

    .line 74
    invoke-static {v1}, Lcom/senseonics/util/Convert;->MLConvertMgToMmol(F)F

    move-result v1

    const v2, 0x3dcccccd    # 0.1f

    .line 73
    invoke-virtual {p1, v0, v1, v2}, Lcom/senseonics/bluetoothle/DialogUtils;->getGlucoseLevels(FFF)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/events/GlucoseEventActivity;->glucoseValues:Ljava/util/ArrayList;

    .line 77
    :goto_2
    new-instance p1, Lcom/senseonics/events/GlucoseEventActivity$1;

    invoke-direct {p1, p0}, Lcom/senseonics/events/GlucoseEventActivity$1;-><init>(Lcom/senseonics/events/GlucoseEventActivity;)V

    const v0, 0x7f090121

    .line 90
    invoke-virtual {p0, v0}, Lcom/senseonics/events/GlucoseEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 91
    new-instance v1, Lcom/senseonics/events/GlucoseEventActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/senseonics/events/GlucoseEventActivity$2;-><init>(Lcom/senseonics/events/GlucoseEventActivity;Lcom/senseonics/events/EventUtils$PickerManager;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget v0, p0, Lcom/senseonics/events/GlucoseEventActivity;->glucoseLevel:I

    invoke-virtual {p0, v0}, Lcom/senseonics/events/GlucoseEventActivity;->getPosition(I)I

    move-result v0

    if-lez v0, :cond_4

    .line 109
    invoke-interface {p1, v0}, Lcom/senseonics/events/EventUtils$PickerManager;->selected(I)V

    :cond_4
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 178
    invoke-super {p0}, Lcom/senseonics/events/EventActivity;->onResume()V

    .line 180
    iget-boolean v0, p0, Lcom/senseonics/events/GlucoseEventActivity;->isEditing:Z

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/senseonics/events/GlucoseEventActivity;->naviBarRightItemTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f090121

    .line 185
    invoke-virtual {p0, v0}, Lcom/senseonics/events/GlucoseEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    .line 186
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    const v0, 0x7f09003f

    .line 189
    invoke-virtual {p0, v0}, Lcom/senseonics/events/GlucoseEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0900c0

    .line 192
    invoke-virtual {p0, v0}, Lcom/senseonics/events/GlucoseEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 193
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    const v3, 0x7f09004e

    .line 196
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/senseonics/events/GlucoseEventActivity;->notesLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f090059

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 200
    iget-object v0, p0, Lcom/senseonics/events/GlucoseEventActivity;->notesLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 203
    iget-object v0, p0, Lcom/senseonics/events/GlucoseEventActivity;->notesEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 204
    iget-object v0, p0, Lcom/senseonics/events/GlucoseEventActivity;->notesEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    return-void
.end method

.method public onSavePressed()V
    .locals 9

    .line 133
    iget-object v0, p0, Lcom/senseonics/events/GlucoseEventActivity;->currentDate:Ljava/util/Calendar;

    const/4 v1, 0x0

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 134
    iget-object v0, p0, Lcom/senseonics/events/GlucoseEventActivity;->currentDate:Ljava/util/Calendar;

    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 136
    iget-boolean v0, p0, Lcom/senseonics/events/GlucoseEventActivity;->isEditing:Z

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/senseonics/events/GlucoseEventActivity;->eventPoint:Lcom/senseonics/events/EventPoint;

    check-cast v0, Lcom/senseonics/events/GlucoseEventPoint;

    .line 138
    iget-object v1, p0, Lcom/senseonics/events/GlucoseEventActivity;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    new-instance v8, Lcom/senseonics/events/GlucoseEventPoint;

    iget-object v2, p0, Lcom/senseonics/events/GlucoseEventActivity;->eventPoint:Lcom/senseonics/events/EventPoint;

    .line 139
    invoke-virtual {v2}, Lcom/senseonics/events/EventPoint;->getDatabaseId()I

    move-result v3

    iget-object v4, p0, Lcom/senseonics/events/GlucoseEventActivity;->currentDate:Ljava/util/Calendar;

    iget v5, p0, Lcom/senseonics/events/GlucoseEventActivity;->glucoseLevel:I

    .line 140
    invoke-virtual {v0}, Lcom/senseonics/events/GlucoseEventPoint;->getCalibrationFlag()I

    move-result v6

    invoke-virtual {v0}, Lcom/senseonics/events/GlucoseEventPoint;->getNotes()Ljava/lang/String;

    move-result-object v7

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/senseonics/events/GlucoseEventPoint;-><init>(ILjava/util/Calendar;IILjava/lang/String;)V

    .line 138
    invoke-virtual {v1, v8}, Lcom/senseonics/db/DatabaseManager;->updateEvent(Lcom/senseonics/events/EventPoint;)V

    .line 141
    invoke-virtual {p0}, Lcom/senseonics/events/GlucoseEventActivity;->finish()V

    goto :goto_0

    .line 144
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<br><b>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f0f0252

    .line 145
    invoke-virtual {p0, v1}, Lcom/senseonics/events/GlucoseEventActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/senseonics/events/GlucoseEventActivity;->currentDate:Ljava/util/Calendar;

    .line 146
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v1, v2, p0}, Lcom/senseonics/util/Utils;->getTime24HrFormat(Ljava/util/Calendar;Ljava/util/TimeZone;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<br><br>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f0f0284

    .line 147
    invoke-virtual {p0, v1}, Lcom/senseonics/events/GlucoseEventActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/senseonics/events/GlucoseEventActivity;->glucoseLevel:I

    .line 148
    invoke-static {p0, v1}, Lcom/senseonics/util/Utils;->getGlucoseLevelString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</b><br>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    .line 150
    new-instance v1, Lcom/senseonics/events/GlucoseEventActivity$3;

    invoke-direct {v1, p0}, Lcom/senseonics/events/GlucoseEventActivity$3;-><init>(Lcom/senseonics/events/GlucoseEventActivity;)V

    const v2, 0x7f0f0106

    .line 159
    invoke-static {p0, v2, v0, v1}, Lcom/senseonics/util/Utils;->showCalibrationConfirmationPage(Landroid/content/Context;ILandroid/text/Spanned;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    :goto_0
    return-void
.end method
