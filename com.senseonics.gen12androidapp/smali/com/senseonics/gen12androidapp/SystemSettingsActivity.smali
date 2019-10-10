.class public Lcom/senseonics/gen12androidapp/SystemSettingsActivity;
.super Lcom/senseonics/gen12androidapp/BaseActivity;
.source "SystemSettingsActivity.java"


# instance fields
.field private content:Landroid/widget/LinearLayout;

.field private dialog:Landroid/app/Dialog;

.field private glucoseLayout:Landroid/widget/RelativeLayout;

.field private glucoseTextView:Landroid/widget/TextView;

.field private glucoseView:Landroid/view/View;

.field private inflater:Landroid/view/LayoutInflater;

.field private linkedSensorLayout:Landroid/widget/RelativeLayout;

.field private linkedSensorTextView:Landroid/widget/TextView;

.field private linkedSerialNumberArrived:Z

.field private progressDialog:Landroid/app/ProgressDialog;

.field private sensorIdTextView:Landroid/widget/TextView;

.field private transmitterNameEditText:Lcom/senseonics/util/CustomEditText;

.field private transmitterNameLayout:Landroid/widget/LinearLayout;

.field private transmitterNameTextView:Landroid/widget/TextView;

.field private unitValues:Ljava/util/ArrayList;
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
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->linkedSerialNumberArrived:Z

    return-void
.end method

.method static synthetic access$000(Lcom/senseonics/gen12androidapp/SystemSettingsActivity;)Lcom/senseonics/util/CustomEditText;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->transmitterNameEditText:Lcom/senseonics/util/CustomEditText;

    return-object p0
.end method

.method static synthetic access$100(Lcom/senseonics/gen12androidapp/SystemSettingsActivity;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->hideProgressDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/senseonics/gen12androidapp/SystemSettingsActivity;)Landroid/app/Dialog;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->dialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$202(Lcom/senseonics/gen12androidapp/SystemSettingsActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->dialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/senseonics/gen12androidapp/SystemSettingsActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->unitValues:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$400(Lcom/senseonics/gen12androidapp/SystemSettingsActivity;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->transmitterNameEdited()V

    return-void
.end method

.method private addGlucoseUnitView()V
    .locals 4

    .line 191
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0b00cb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->glucoseView:Landroid/view/View;

    .line 193
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->glucoseView:Landroid/view/View;

    const v1, 0x7f0901ca

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->glucoseTextView:Landroid/widget/TextView;

    .line 194
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->glucoseView:Landroid/view/View;

    const v1, 0x7f090225

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 195
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->glucoseTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0109

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->glucoseTextView:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->setBoldTextView(Landroid/widget/TextView;)V

    .line 198
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->glucoseView:Landroid/view/View;

    const v2, 0x7f09003f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v2, 0x4

    .line 199
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 201
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->glucoseView:Landroid/view/View;

    const v2, 0x7f09016b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->glucoseLayout:Landroid/widget/RelativeLayout;

    .line 202
    new-instance v1, Lcom/senseonics/gen12androidapp/SystemSettingsActivity$3;

    invoke-direct {v1, p0, v0}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity$3;-><init>(Lcom/senseonics/gen12androidapp/SystemSettingsActivity;Landroid/widget/TextView;)V

    .line 223
    iget-object v2, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->glucoseLayout:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/senseonics/gen12androidapp/SystemSettingsActivity$4;

    invoke-direct {v3, p0, v1}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity$4;-><init>(Lcom/senseonics/gen12androidapp/SystemSettingsActivity;Lcom/senseonics/events/EventUtils$PickerManager;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    sget-object v2, Lcom/senseonics/util/Utils;->currentGlucoseUnit:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    invoke-virtual {v2}, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->ordinal()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/senseonics/events/EventUtils$PickerManager;->selected(I)V

    .line 239
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->glucoseLayout:Landroid/widget/RelativeLayout;

    const v2, 0x7f06009c

    invoke-static {p0, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 241
    sget-boolean v1, Lcom/senseonics/util/Utils;->enableGlucoseUnitPanel:Z

    if-nez v1, :cond_0

    .line 242
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->glucoseLayout:Landroid/widget/RelativeLayout;

    const v2, 0x7f060064

    invoke-static {p0, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 243
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->glucoseLayout:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 244
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->glucoseTextView:Landroid/widget/TextView;

    const v2, 0x7f060065

    invoke-static {p0, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 245
    invoke-static {p0, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 247
    :cond_0
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->glucoseLayout:Landroid/widget/RelativeLayout;

    invoke-static {p0, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 248
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->glucoseLayout:Landroid/widget/RelativeLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 249
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->glucoseTextView:Landroid/widget/TextView;

    const v2, 0x7f06001e

    invoke-static {p0, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 250
    invoke-static {p0, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 253
    :goto_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->content:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->glucoseView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addSensorSerialNumberView(Ljava/lang/String;)V
    .locals 4

    .line 339
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0b00cb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09016b

    .line 340
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->linkedSensorLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f090225

    .line 342
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->sensorIdTextView:Landroid/widget/TextView;

    .line 343
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->sensorIdTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->getLinkedSensorId()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/senseonics/util/Utils;->unknownString:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f09003f

    .line 345
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v2, 0x0

    .line 346
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 348
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->linkedSensorLayout:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/senseonics/gen12androidapp/SystemSettingsActivity$8;

    invoke-direct {v2, p0}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity$8;-><init>(Lcom/senseonics/gen12androidapp/SystemSettingsActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0901ca

    .line 355
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->linkedSensorTextView:Landroid/widget/TextView;

    .line 356
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->linkedSensorTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->linkedSensorTextView:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->setBoldTextView(Landroid/widget/TextView;)V

    .line 358
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addTransmitterNameView()V
    .locals 3

    .line 258
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0b00cc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0900a6

    .line 259
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->transmitterNameLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f090220

    .line 261
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/senseonics/util/CustomEditText;

    iput-object v1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->transmitterNameEditText:Lcom/senseonics/util/CustomEditText;

    const v1, 0x7f0901ca

    .line 262
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->transmitterNameTextView:Landroid/widget/TextView;

    .line 263
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->transmitterNameTextView:Landroid/widget/TextView;

    const v2, 0x7f0f017d

    invoke-virtual {p0, v2}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->transmitterNameTextView:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->setBoldTextView(Landroid/widget/TextView;)V

    .line 266
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->transmitterNameEditText:Lcom/senseonics/util/CustomEditText;

    new-instance v2, Lcom/senseonics/gen12androidapp/SystemSettingsActivity$5;

    invoke-direct {v2, p0}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity$5;-><init>(Lcom/senseonics/gen12androidapp/SystemSettingsActivity;)V

    .line 267
    invoke-virtual {v1, v2}, Lcom/senseonics/util/CustomEditText;->setOnEditTextImeBackListener(Lcom/senseonics/util/CustomEditText$EditTextImeBackListener;)V

    .line 280
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->transmitterNameEditText:Lcom/senseonics/util/CustomEditText;

    const v2, 0x81000

    .line 281
    invoke-virtual {v1, v2}, Lcom/senseonics/util/CustomEditText;->setInputType(I)V

    .line 283
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 284
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->transmitterNameEditText:Lcom/senseonics/util/CustomEditText;

    iget-object v2, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/senseonics/util/CustomEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 286
    :cond_0
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->transmitterNameEditText:Lcom/senseonics/util/CustomEditText;

    sget-object v2, Lcom/senseonics/util/Utils;->unknownString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/senseonics/util/CustomEditText;->setText(Ljava/lang/CharSequence;)V

    .line 288
    :goto_0
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->transmitterNameEditText:Lcom/senseonics/util/CustomEditText;

    new-instance v2, Lcom/senseonics/gen12androidapp/SystemSettingsActivity$6;

    invoke-direct {v2, p0}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity$6;-><init>(Lcom/senseonics/gen12androidapp/SystemSettingsActivity;)V

    .line 289
    invoke-virtual {v1, v2}, Lcom/senseonics/util/CustomEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 308
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addViews()V
    .locals 2

    .line 129
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->addGlucoseUnitView()V

    .line 132
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->addTransmitterNameView()V

    .line 135
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0147

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->addSensorSerialNumberView(Ljava/lang/String;)V

    .line 137
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->updateViews()V

    return-void
.end method

.method private hideProgressDialog()V
    .locals 1

    .line 378
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private loadData()V
    .locals 6

    .line 112
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterConnectionState()Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    move-result-object v0

    sget-object v1, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    if-ne v0, v1, :cond_0

    .line 113
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 114
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 115
    new-instance v1, Lcom/senseonics/gen12androidapp/SystemSettingsActivity$2;

    invoke-direct {v1, p0}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity$2;-><init>(Lcom/senseonics/gen12androidapp/SystemSettingsActivity;)V

    sget-wide v2, Lcom/senseonics/graph/util/GraphUtils;->MINUTE:J

    const-wide/16 v4, 0x6

    div-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 123
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postReadSensorIdRequest()V

    :cond_0
    return-void
.end method

.method private setBoldTextView(Landroid/widget/TextView;)V
    .locals 1

    .line 186
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method private transmitterNameEdited()V
    .locals 6

    .line 312
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->transmitterNameEditText:Lcom/senseonics/util/CustomEditText;

    if-eqz v0, :cond_1

    .line 313
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->transmitterNameEditText:Lcom/senseonics/util/CustomEditText;

    invoke-virtual {v0}, Lcom/senseonics/util/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 314
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterConnectionState()Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    move-result-object v1

    sget-object v2, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    if-ne v1, v2, :cond_0

    const-string v1, " "

    const-string v2, ""

    .line 315
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 316
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    const/4 v1, 0x0

    .line 317
    sput-object v1, Lcom/senseonics/util/Utils;->transmitterNameContainer:Ljava/lang/String;

    .line 318
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postWriteTransmitterNameRequest(Ljava/lang/String;)V

    .line 319
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 320
    new-instance v1, Lcom/senseonics/gen12androidapp/SystemSettingsActivity$7;

    invoke-direct {v1, p0}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity$7;-><init>(Lcom/senseonics/gen12androidapp/SystemSettingsActivity;)V

    sget-wide v2, Lcom/senseonics/graph/util/GraphUtils;->MINUTE:J

    const-wide/16 v4, 0x6

    div-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 328
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postPingRequest()V

    .line 329
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->hideProgressDialog()V

    goto :goto_0

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 332
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->transmitterNameEditText:Lcom/senseonics/util/CustomEditText;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/util/CustomEditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateDisplay()V
    .locals 3

    .line 176
    iget-boolean v0, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->linkedSerialNumberArrived:Z

    if-eqz v0, :cond_0

    .line 177
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->hideProgressDialog()V

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->transmitterNameEditText:Lcom/senseonics/util/CustomEditText;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/senseonics/util/CustomEditText;->setText(Ljava/lang/CharSequence;)V

    .line 182
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->updateViews()V

    return-void
.end method

.method private updateViews()V
    .locals 4

    .line 141
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterConnectionState()Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    move-result-object v0

    sget-object v1, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    if-ne v0, v1, :cond_0

    .line 143
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->transmitterNameLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f06009c

    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 144
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->transmitterNameTextView:Landroid/widget/TextView;

    const v2, 0x7f06001e

    invoke-static {p0, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 145
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->transmitterNameEditText:Lcom/senseonics/util/CustomEditText;

    invoke-static {p0, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/senseonics/util/CustomEditText;->setTextColor(I)V

    .line 146
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->transmitterNameEditText:Lcom/senseonics/util/CustomEditText;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/senseonics/util/CustomEditText;->setEnabled(Z)V

    .line 149
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->linkedSensorLayout:Landroid/widget/RelativeLayout;

    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 150
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->linkedSensorLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 151
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->linkedSensorTextView:Landroid/widget/TextView;

    invoke-static {p0, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 152
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->sensorIdTextView:Landroid/widget/TextView;

    invoke-static {p0, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->transmitterNameLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f060064

    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 157
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->transmitterNameTextView:Landroid/widget/TextView;

    const v2, 0x7f060065

    invoke-static {p0, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 158
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->transmitterNameEditText:Lcom/senseonics/util/CustomEditText;

    invoke-static {p0, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/senseonics/util/CustomEditText;->setTextColor(I)V

    .line 159
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->transmitterNameEditText:Lcom/senseonics/util/CustomEditText;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/senseonics/util/CustomEditText;->setEnabled(Z)V

    .line 162
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->linkedSensorLayout:Landroid/widget/RelativeLayout;

    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 163
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->linkedSensorLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 164
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->linkedSensorTextView:Landroid/widget/TextView;

    invoke-static {p0, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 165
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->sensorIdTextView:Landroid/widget/TextView;

    invoke-static {p0, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 61
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b0089

    .line 63
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->initializeLayout(I)Landroid/view/View;

    .line 65
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0f0247

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->configureNaviBar(ILjava/lang/String;Ljava/lang/String;)V

    .line 67
    sput-object v0, Lcom/senseonics/util/Utils;->transmitterNameContainer:Ljava/lang/String;

    .line 68
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 71
    new-instance p1, Landroid/app/ProgressDialog;

    const v0, 0x7f100145

    invoke-direct {p1, p0, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 72
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->progressDialog:Landroid/app/ProgressDialog;

    const v0, 0x7f080099

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 73
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    const p1, 0x7f0900a6

    .line 75
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->content:Landroid/widget/LinearLayout;

    .line 76
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->inflater:Landroid/view/LayoutInflater;

    .line 78
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->unitValues:Ljava/util/ArrayList;

    .line 79
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->unitValues:Ljava/util/ArrayList;

    new-instance v2, Lcom/senseonics/util/Item;

    sget-object v3, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MG_DL:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    invoke-static {p0, v3}, Lcom/senseonics/util/Utils;->getGlucoseUnitString(Landroid/content/Context;Lcom/senseonics/util/Utils$GLUCOSE_UNIT;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/senseonics/util/Item;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->unitValues:Ljava/util/ArrayList;

    new-instance v1, Lcom/senseonics/util/Item;

    sget-object v2, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MMOL_L:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    invoke-static {p0, v2}, Lcom/senseonics/util/Utils;->getGlucoseUnitString(Landroid/content/Context;Lcom/senseonics/util/Utils$GLUCOSE_UNIT;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/senseonics/util/Item;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const p1, 0x7f0901fb

    .line 84
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    .line 85
    new-instance v0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity$1;-><init>(Lcom/senseonics/gen12androidapp/SystemSettingsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->addViews()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 369
    invoke-super {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->updateViews()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/ModelChangedLinkedSensorIdEvent;)V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->sensorIdTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/senseonics/events/ModelChangedLinkedSensorIdEvent;->getSensorId()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/senseonics/util/Utils;->unknownString:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/google/common/base/Objects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    .line 171
    iput-boolean p1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->linkedSerialNumberArrived:Z

    .line 172
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->updateDisplay()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 363
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->hideProgressDialog()V

    .line 364
    invoke-super {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 107
    invoke-super {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;->onResume()V

    .line 108
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->loadData()V

    return-void
.end method
