.class public Lcom/senseonics/events/EventActivity;
.super Lcom/senseonics/gen12androidapp/BaseActivity;
.source "EventActivity.java"


# instance fields
.field protected contentLayout:Landroid/widget/LinearLayout;

.field protected currentDate:Ljava/util/Calendar;

.field protected endDate:Ljava/util/Calendar;

.field protected eventPoint:Lcom/senseonics/events/EventPoint;

.field protected glucoseLevel:I

.field private graphView:Lcom/jjoe64/graphview/Graph;

.field protected hasSaveButton:Z

.field protected inflater:Landroid/view/LayoutInflater;

.field protected isEditing:Z

.field protected notesEditText:Landroid/widget/EditText;

.field protected notesLayout:Landroid/widget/RelativeLayout;

.field private screenWidth:I

.field protected startDate:Ljava/util/Calendar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/senseonics/events/EventActivity;)Lcom/senseonics/bluetoothle/DialogUtils;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/senseonics/events/EventActivity;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    return-object p0
.end method

.method static synthetic access$100(Lcom/senseonics/events/EventActivity;)Lcom/senseonics/db/DatabaseManager;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/senseonics/events/EventActivity;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/senseonics/events/EventActivity;)Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/senseonics/events/EventActivity;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    return-object p0
.end method

.method private addContentView(I)V
    .locals 2

    .line 233
    invoke-virtual {p0, p1}, Lcom/senseonics/events/EventActivity;->initializeLayout(I)Landroid/view/View;

    .line 234
    invoke-virtual {p0}, Lcom/senseonics/events/EventActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0f00ef

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/senseonics/events/EventActivity;->configureNaviBar(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public createDialog(Ljava/lang/String;)V
    .locals 4

    .line 330
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f1000b8

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 333
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b0058

    const/4 v3, 0x0

    .line 334
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f09029c

    .line 336
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 337
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0902b6

    .line 339
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/4 v2, 0x0

    .line 340
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const v2, 0x7f0f010f

    .line 341
    invoke-virtual {p0, v2}, Lcom/senseonics/events/EventActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f090091

    .line 343
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v2, 0x7f0f0186

    .line 344
    invoke-virtual {p0, v2}, Lcom/senseonics/events/EventActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 346
    new-instance v2, Lcom/senseonics/events/EventActivity$8;

    invoke-direct {v2, p0, v0}, Lcom/senseonics/events/EventActivity$8;-><init>(Lcom/senseonics/events/EventActivity;Landroid/app/Dialog;)V

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0901f1

    .line 354
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v2, 0x7f0f029a

    .line 355
    invoke-virtual {p0, v2}, Lcom/senseonics/events/EventActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 357
    new-instance v2, Lcom/senseonics/events/EventActivity$9;

    invoke-direct {v2, p0, v0}, Lcom/senseonics/events/EventActivity$9;-><init>(Lcom/senseonics/events/EventActivity;Landroid/app/Dialog;)V

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 376
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 377
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public hideKeyboard(Landroid/view/View;)V
    .locals 2

    const-string v0, "input_method"

    .line 103
    invoke-virtual {p0, v0}, Lcom/senseonics/events/EventActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method public initEventLayout()V
    .locals 3

    .line 295
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->getEventLogLayout()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/senseonics/events/EventActivity;->addContentView(I)V

    .line 297
    iget-object v0, p0, Lcom/senseonics/events/EventActivity;->naviBarLeftItemTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 298
    iget-object v0, p0, Lcom/senseonics/events/EventActivity;->naviBarLeftItemTextView:Landroid/widget/TextView;

    new-instance v2, Lcom/senseonics/events/EventActivity$6;

    invoke-direct {v2, p0}, Lcom/senseonics/events/EventActivity$6;-><init>(Lcom/senseonics/events/EventActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    iget-object v0, p0, Lcom/senseonics/events/EventActivity;->naviBarRightItemTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 307
    iget-object v0, p0, Lcom/senseonics/events/EventActivity;->naviBarRightItemTextView:Landroid/widget/TextView;

    const v1, 0x7f0f01ec

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 308
    iget-object v0, p0, Lcom/senseonics/events/EventActivity;->naviBarRightItemTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 309
    iget-object v0, p0, Lcom/senseonics/events/EventActivity;->naviBarRightItemTextView:Landroid/widget/TextView;

    new-instance v1, Lcom/senseonics/events/EventActivity$7;

    invoke-direct {v1, p0}, Lcom/senseonics/events/EventActivity$7;-><init>(Lcom/senseonics/events/EventActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public initLayoutWithGraph()V
    .locals 23

    move-object/from16 v11, p0

    const v0, 0x7f0b0024

    .line 238
    invoke-direct {v11, v0}, Lcom/senseonics/events/EventActivity;->addContentView(I)V

    .line 240
    invoke-virtual/range {p0 .. p0}, Lcom/senseonics/events/EventActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 243
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v12

    .line 244
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    const-string v1, "eventPoint"

    .line 246
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "eventPoint"

    .line 248
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/senseonics/events/EventPoint;

    iput-object v0, v11, Lcom/senseonics/events/EventActivity;->eventPoint:Lcom/senseonics/events/EventPoint;

    .line 249
    iget-object v0, v11, Lcom/senseonics/events/EventActivity;->eventPoint:Lcom/senseonics/events/EventPoint;

    invoke-virtual {v0}, Lcom/senseonics/events/EventPoint;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, v11, Lcom/senseonics/events/EventActivity;->currentDate:Ljava/util/Calendar;

    const-string v0, "GMT"

    .line 250
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    const-string v0, "GMT"

    .line 251
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 254
    iget-object v0, v11, Lcom/senseonics/events/EventActivity;->currentDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/senseonics/graph/util/GraphUtils;->MINUTE:J

    const-wide/16 v4, 0x5a

    mul-long v2, v2, v4

    sub-long/2addr v0, v2

    invoke-virtual {v12, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 256
    iget-object v0, v11, Lcom/senseonics/events/EventActivity;->currentDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/senseonics/graph/util/GraphUtils;->MINUTE:J

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    invoke-virtual {v13, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 260
    :cond_0
    iget-object v0, v11, Lcom/senseonics/events/EventActivity;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    sget-wide v1, Lcom/senseonics/graph/util/GraphUtils;->MINUTE:J

    .line 261
    invoke-virtual {v0, v12, v13, v1, v2}, Lcom/senseonics/db/DatabaseManager;->getGlucoseBetween(Ljava/util/Calendar;Ljava/util/Calendar;J)Ljava/util/List;

    move-result-object v14

    .line 262
    iget-object v0, v11, Lcom/senseonics/events/EventActivity;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    sget v1, Lcom/senseonics/util/Utils;->GLUCOSE_LEVEL_UNKNOWN:I

    sget v2, Lcom/senseonics/util/Utils;->GLUCOSE_MAX:I

    invoke-virtual {v0, v12, v13, v1, v2}, Lcom/senseonics/db/DatabaseManager;->getEventsBetween(Ljava/util/Calendar;Ljava/util/Calendar;II)Ljava/util/ArrayList;

    move-result-object v15

    const v0, 0x7f09012b

    .line 266
    invoke-virtual {v11, v0}, Lcom/senseonics/events/EventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/widget/RelativeLayout;

    .line 268
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 269
    invoke-virtual/range {p0 .. p0}, Lcom/senseonics/events/EventActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 271
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, v11, Lcom/senseonics/events/EventActivity;->screenWidth:I

    .line 273
    invoke-virtual/range {p0 .. p0}, Lcom/senseonics/events/EventActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 274
    iget v1, v11, Lcom/senseonics/events/EventActivity;->screenWidth:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v9, v1, v0

    .line 275
    iget v0, v11, Lcom/senseonics/events/EventActivity;->screenWidth:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v8, v0, 0x3

    .line 277
    new-instance v7, Lcom/jjoe64/graphview/LineGraphView;

    const-string v2, ""

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object v0, v7

    move-object v1, v11

    move-object v3, v12

    move-object v4, v13

    move v5, v9

    move v6, v8

    move-object/from16 v19, v7

    move v7, v9

    move/from16 v20, v8

    move/from16 v8, v16

    move/from16 v21, v9

    move/from16 v9, v17

    move-object/from16 v22, v10

    move/from16 v10, v18

    invoke-direct/range {v0 .. v10}, Lcom/jjoe64/graphview/LineGraphView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Calendar;Ljava/util/Calendar;IIIIZZ)V

    move-object/from16 v0, v19

    iput-object v0, v11, Lcom/senseonics/events/EventActivity;->graphView:Lcom/jjoe64/graphview/Graph;

    .line 279
    iget-object v0, v11, Lcom/senseonics/events/EventActivity;->graphView:Lcom/jjoe64/graphview/Graph;

    invoke-virtual {v0, v14}, Lcom/jjoe64/graphview/Graph;->addSeries(Ljava/util/List;)V

    .line 280
    iget-object v0, v11, Lcom/senseonics/events/EventActivity;->graphView:Lcom/jjoe64/graphview/Graph;

    invoke-virtual {v0, v15, v12, v13}, Lcom/jjoe64/graphview/Graph;->setEventPoints(Ljava/util/List;Ljava/util/Calendar;Ljava/util/Calendar;)V

    .line 281
    iget-object v0, v11, Lcom/senseonics/events/EventActivity;->graphView:Lcom/jjoe64/graphview/Graph;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jjoe64/graphview/Graph;->setScalable(Z)V

    .line 282
    iget-object v0, v11, Lcom/senseonics/events/EventActivity;->graphView:Lcom/jjoe64/graphview/Graph;

    invoke-virtual {v0, v1}, Lcom/jjoe64/graphview/Graph;->setScrollable(Z)V

    .line 284
    iget-object v0, v11, Lcom/senseonics/events/EventActivity;->graphView:Lcom/jjoe64/graphview/Graph;

    check-cast v0, Lcom/jjoe64/graphview/LineGraphView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jjoe64/graphview/LineGraphView;->setDrawBackground(Z)V

    .line 286
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    move/from16 v2, v20

    move/from16 v1, v21

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 288
    iget-object v1, v11, Lcom/senseonics/events/EventActivity;->graphView:Lcom/jjoe64/graphview/Graph;

    invoke-virtual {v1, v0}, Lcom/jjoe64/graphview/Graph;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 290
    iget-object v0, v11, Lcom/senseonics/events/EventActivity;->graphView:Lcom/jjoe64/graphview/Graph;

    move-object/from16 v1, v22

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 59
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 61
    iput-boolean p1, p0, Lcom/senseonics/events/EventActivity;->hasSaveButton:Z

    .line 62
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/events/EventActivity;->inflater:Landroid/view/LayoutInflater;

    .line 64
    invoke-virtual {p0}, Lcom/senseonics/events/EventActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/senseonics/events/EventActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "edit"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iput-boolean p1, p0, Lcom/senseonics/events/EventActivity;->isEditing:Z

    .line 67
    invoke-virtual {p0}, Lcom/senseonics/events/EventActivity;->initLayoutWithGraph()V

    goto :goto_0

    .line 69
    :cond_0
    iput-boolean v1, p0, Lcom/senseonics/events/EventActivity;->isEditing:Z

    .line 70
    invoke-virtual {p0}, Lcom/senseonics/events/EventActivity;->initEventLayout()V

    :goto_0
    const p1, 0x7f0900a6

    .line 73
    invoke-virtual {p0, p1}, Lcom/senseonics/events/EventActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/senseonics/events/EventActivity;->contentLayout:Landroid/widget/LinearLayout;

    .line 78
    invoke-virtual {p0}, Lcom/senseonics/events/EventActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "startdate"

    .line 80
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iput-object v0, p0, Lcom/senseonics/events/EventActivity;->startDate:Ljava/util/Calendar;

    const-string v0, "enddate"

    .line 81
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iput-object v0, p0, Lcom/senseonics/events/EventActivity;->endDate:Ljava/util/Calendar;

    .line 82
    iget-object v0, p0, Lcom/senseonics/events/EventActivity;->currentDate:Ljava/util/Calendar;

    if-nez v0, :cond_1

    const-string v0, "currentdate"

    .line 83
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/Calendar;

    iput-object p1, p0, Lcom/senseonics/events/EventActivity;->currentDate:Ljava/util/Calendar;

    .line 84
    iget-object p1, p0, Lcom/senseonics/events/EventActivity;->currentDate:Ljava/util/Calendar;

    const/16 v0, 0xd

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 85
    iget-object p1, p0, Lcom/senseonics/events/EventActivity;->currentDate:Ljava/util/Calendar;

    const/16 v0, 0xe

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 89
    :cond_1
    iget-object p1, p0, Lcom/senseonics/events/EventActivity;->startDate:Ljava/util/Calendar;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/senseonics/events/EventActivity;->endDate:Ljava/util/Calendar;

    if-nez p1, :cond_3

    .line 90
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/events/EventActivity;->startDate:Ljava/util/Calendar;

    .line 91
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/events/EventActivity;->endDate:Ljava/util/Calendar;

    .line 93
    :cond_3
    iget-object p1, p0, Lcom/senseonics/events/EventActivity;->currentDate:Ljava/util/Calendar;

    if-nez p1, :cond_4

    .line 94
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/events/EventActivity;->currentDate:Ljava/util/Calendar;

    .line 96
    :cond_4
    invoke-virtual {p0}, Lcom/senseonics/events/EventActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 229
    invoke-super {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 383
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 385
    :cond_0
    invoke-virtual {p0}, Lcom/senseonics/events/EventActivity;->onBackPressed()V

    .line 390
    :goto_0
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onResume()V
    .locals 8

    .line 110
    invoke-super {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;->onResume()V

    const v0, 0x7f0900be

    .line 113
    invoke-virtual {p0, v0}, Lcom/senseonics/events/EventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0900c0

    .line 114
    invoke-virtual {p0, v1}, Lcom/senseonics/events/EventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0901df

    .line 115
    invoke-virtual {p0, v2}, Lcom/senseonics/events/EventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/senseonics/events/EventActivity;->notesLayout:Landroid/widget/RelativeLayout;

    const v2, 0x7f0901dd

    .line 116
    invoke-virtual {p0, v2}, Lcom/senseonics/events/EventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/senseonics/events/EventActivity;->notesEditText:Landroid/widget/EditText;

    .line 137
    iget-object v2, p0, Lcom/senseonics/events/EventActivity;->eventPoint:Lcom/senseonics/events/EventPoint;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/senseonics/events/EventActivity;->notesEditText:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    .line 138
    iget-object v2, p0, Lcom/senseonics/events/EventActivity;->notesEditText:Landroid/widget/EditText;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 139
    iget-object v2, p0, Lcom/senseonics/events/EventActivity;->notesEditText:Landroid/widget/EditText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 140
    iget-object v2, p0, Lcom/senseonics/events/EventActivity;->notesEditText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/senseonics/events/EventActivity;->eventPoint:Lcom/senseonics/events/EventPoint;

    invoke-virtual {v3}, Lcom/senseonics/events/EventPoint;->getNotes()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v2, p0, Lcom/senseonics/events/EventActivity;->notesEditText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/senseonics/events/EventActivity;->notesEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 144
    :cond_0
    iget-boolean v2, p0, Lcom/senseonics/events/EventActivity;->isEditing:Z

    if-nez v2, :cond_1

    .line 145
    iget-object v2, p0, Lcom/senseonics/events/EventActivity;->currentDate:Ljava/util/Calendar;

    if-nez v2, :cond_1

    .line 147
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, p0, Lcom/senseonics/events/EventActivity;->currentDate:Ljava/util/Calendar;

    :cond_1
    if-eqz v0, :cond_2

    .line 152
    iget-object v2, p0, Lcom/senseonics/events/EventActivity;->currentDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {v2, v3, p0}, Lcom/senseonics/util/Utils;->formatDate(Ljava/util/Calendar;Ljava/util/TimeZone;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    :cond_2
    new-instance v2, Lcom/senseonics/events/EventActivity$2;

    invoke-direct {v2, p0, v0}, Lcom/senseonics/events/EventActivity$2;-><init>(Lcom/senseonics/events/EventActivity;Landroid/widget/TextView;)V

    if-eqz v1, :cond_3

    .line 166
    new-instance v0, Lcom/senseonics/events/EventActivity$3;

    invoke-direct {v0, p0, v2}, Lcom/senseonics/events/EventActivity$3;-><init>(Lcom/senseonics/events/EventActivity;Lcom/senseonics/util/dialogs/DateDialogManager;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    :cond_3
    iget-boolean v0, p0, Lcom/senseonics/events/EventActivity;->isEditing:Z

    if-eqz v0, :cond_4

    .line 178
    iget-boolean v0, p0, Lcom/senseonics/events/EventActivity;->hasSaveButton:Z

    if-eqz v0, :cond_4

    .line 179
    iget-object v0, p0, Lcom/senseonics/events/EventActivity;->naviBarLeftItemTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/senseonics/events/EventActivity;->naviBarRightItemTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lcom/senseonics/events/EventActivity;->naviBarRightItemTextView:Landroid/widget/TextView;

    const v1, 0x7f0f01ec

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 183
    iget-object v0, p0, Lcom/senseonics/events/EventActivity;->naviBarRightItemTextView:Landroid/widget/TextView;

    new-instance v1, Lcom/senseonics/events/EventActivity$4;

    invoke-direct {v1, p0}, Lcom/senseonics/events/EventActivity$4;-><init>(Lcom/senseonics/events/EventActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09010f

    .line 192
    invoke-virtual {p0, v0}, Lcom/senseonics/events/EventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    if-nez v1, :cond_4

    const v1, 0x7f09002c

    .line 196
    invoke-virtual {p0, v1}, Lcom/senseonics/events/EventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 197
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 200
    iget-object v5, p0, Lcom/senseonics/events/EventActivity;->inflater:Landroid/view/LayoutInflater;

    const v6, 0x7f0b006b

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 201
    invoke-virtual {v5, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 204
    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 205
    invoke-virtual {p0}, Lcom/senseonics/events/EventActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06009c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const v0, 0x7f090132

    .line 206
    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 207
    invoke-virtual {p0}, Lcom/senseonics/events/EventActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060050

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 208
    invoke-virtual {p0}, Lcom/senseonics/events/EventActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06004d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 209
    new-instance v1, Lcom/senseonics/events/EventActivity$5;

    invoke-direct {v1, p0}, Lcom/senseonics/events/EventActivity$5;-><init>(Lcom/senseonics/events/EventActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v4, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 221
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    return-void
.end method

.method public onSavePressed()V
    .locals 3

    .line 321
    iget-object v0, p0, Lcom/senseonics/events/EventActivity;->currentDate:Ljava/util/Calendar;

    const/4 v1, 0x0

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 322
    iget-object v0, p0, Lcom/senseonics/events/EventActivity;->currentDate:Ljava/util/Calendar;

    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 323
    iget-object v0, p0, Lcom/senseonics/events/EventActivity;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    iget-object v1, p0, Lcom/senseonics/events/EventActivity;->currentDate:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/senseonics/db/DatabaseManager;->getGlucoseLevelAt(Ljava/util/Calendar;Z)I

    move-result v0

    iput v0, p0, Lcom/senseonics/events/EventActivity;->glucoseLevel:I

    .line 324
    iget v0, p0, Lcom/senseonics/events/EventActivity;->glucoseLevel:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 325
    sget v0, Lcom/senseonics/util/Utils;->GLUCOSE_LEVEL_UNKNOWN:I

    iput v0, p0, Lcom/senseonics/events/EventActivity;->glucoseLevel:I

    :cond_0
    return-void
.end method
