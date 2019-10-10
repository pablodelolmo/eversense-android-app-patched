.class public Lcom/senseonics/fragments/GraphFragment;
.super Lcom/senseonics/fragments/BaseFragment;
.source "GraphFragment.java"


# instance fields
.field private alertInfoHeight:I

.field private alertView:Landroid/view/View;

.field private arrowImageView:Landroid/widget/ImageView;

.field private batteryStrengthImageView:Landroid/widget/ImageView;

.field private currentTopLayoutHeight:I

.field private dialog:Landroid/app/Dialog;

.field private dndImageView:Landroid/widget/ImageView;

.field private expandImageButton:Landroid/widget/ImageButton;

.field private glucoseUnitTextView:Landroid/widget/TextView;

.field private glucoseValueDisplay:Landroid/view/View;

.field private glucoseValueTextView:Landroid/widget/TextView;

.field private graphHeight:I

.field graphManager:Lcom/senseonics/graph/GraphManagerView$GraphManager;

.field private graphManagerView:Lcom/senseonics/graph/GraphManagerView;

.field private graphPaddingTop:I

.field private inflater:Landroid/view/LayoutInflater;

.field private layout:Landroid/widget/RelativeLayout;

.field lazyLoadGraphModel:Lcom/senseonics/graph/LazyLoadGraphModel;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field onDateClickListener:Landroid/view/View$OnClickListener;

.field private parentLayout:Landroid/widget/RelativeLayout;

.field private popupGraphManagerView:Lcom/senseonics/fragments/PopupGraphManagerView;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private signalStrengthImageView:Landroid/widget/ImageView;

.field private tempProfileImageView:Landroid/widget/ImageView;

.field private topLayout:Landroid/widget/RelativeLayout;

.field private topLayoutHeight:I

.field private transmitterNameTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Lcom/senseonics/fragments/BaseFragment;-><init>()V

    .line 597
    new-instance v0, Lcom/senseonics/fragments/GraphFragment$6;

    invoke-direct {v0, p0}, Lcom/senseonics/fragments/GraphFragment$6;-><init>(Lcom/senseonics/fragments/GraphFragment;)V

    iput-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->onDateClickListener:Landroid/view/View$OnClickListener;

    .line 611
    new-instance v0, Lcom/senseonics/fragments/GraphFragment$7;

    invoke-direct {v0, p0}, Lcom/senseonics/fragments/GraphFragment$7;-><init>(Lcom/senseonics/fragments/GraphFragment;)V

    iput-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->graphManager:Lcom/senseonics/graph/GraphManagerView$GraphManager;

    return-void
.end method

.method static synthetic access$000(Lcom/senseonics/fragments/GraphFragment;)Lcom/senseonics/graph/GraphManagerView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/senseonics/fragments/GraphFragment;->graphManagerView:Lcom/senseonics/graph/GraphManagerView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/senseonics/fragments/GraphFragment;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/senseonics/fragments/GraphFragment;->parentLayout:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$200(Lcom/senseonics/fragments/GraphFragment;Ljava/util/Calendar;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/senseonics/fragments/GraphFragment;->createPickerViewDialog(Ljava/util/Calendar;)V

    return-void
.end method

.method static synthetic access$300(Lcom/senseonics/fragments/GraphFragment;)I
    .locals 0

    .line 55
    iget p0, p0, Lcom/senseonics/fragments/GraphFragment;->currentTopLayoutHeight:I

    return p0
.end method

.method static synthetic access$400(Lcom/senseonics/fragments/GraphFragment;)I
    .locals 0

    .line 55
    iget p0, p0, Lcom/senseonics/fragments/GraphFragment;->alertInfoHeight:I

    return p0
.end method

.method static synthetic access$500(Lcom/senseonics/fragments/GraphFragment;)Lcom/senseonics/fragments/PopupGraphManagerView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/senseonics/fragments/GraphFragment;->popupGraphManagerView:Lcom/senseonics/fragments/PopupGraphManagerView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/senseonics/fragments/GraphFragment;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/senseonics/fragments/GraphFragment;->dismissProgressDialogIfNeeded()V

    return-void
.end method

.method private addAlertViewToTopLayout(Landroid/view/View;)V
    .locals 3

    .line 496
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/senseonics/fragments/GraphFragment;->alertInfoHeight:I

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x3

    const v2, 0x7f090127

    .line 498
    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 499
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 500
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->topLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addGraphManagerView(Landroid/app/Activity;)V
    .locals 8

    .line 517
    new-instance v7, Lcom/senseonics/graph/GraphManagerView;

    sget v2, Lcom/senseonics/util/Utils;->screenWidth:I

    iget v3, p0, Lcom/senseonics/fragments/GraphFragment;->graphHeight:I

    iget v4, p0, Lcom/senseonics/fragments/GraphFragment;->graphPaddingTop:I

    sget v5, Lcom/senseonics/util/Utils;->daysCount:I

    sget-object v6, Lcom/senseonics/util/Utils;->currentDate:Ljava/util/Calendar;

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/senseonics/graph/GraphManagerView;-><init>(Landroid/content/Context;IIIILjava/util/Calendar;)V

    iput-object v7, p0, Lcom/senseonics/fragments/GraphFragment;->graphManagerView:Lcom/senseonics/graph/GraphManagerView;

    .line 521
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/senseonics/fragments/GraphFragment;->graphHeight:I

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 523
    iget-object v1, p0, Lcom/senseonics/fragments/GraphFragment;->graphManagerView:Lcom/senseonics/graph/GraphManagerView;

    invoke-virtual {v1, v0}, Lcom/senseonics/graph/GraphManagerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 524
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->graphManagerView:Lcom/senseonics/graph/GraphManagerView;

    const v1, 0x7f09012c

    invoke-virtual {v0, v1}, Lcom/senseonics/graph/GraphManagerView;->setId(I)V

    .line 525
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->graphManagerView:Lcom/senseonics/graph/GraphManagerView;

    new-instance v1, Lcom/senseonics/fragments/GraphFragment$3;

    invoke-direct {v1, p0}, Lcom/senseonics/fragments/GraphFragment$3;-><init>(Lcom/senseonics/fragments/GraphFragment;)V

    invoke-virtual {v0, v1}, Lcom/senseonics/graph/GraphManagerView;->setGraphManagerViewListener(Lcom/senseonics/graph/GraphManagerView$GraphManagerViewListener;)V

    .line 538
    new-instance v0, Lcom/senseonics/fragments/GraphFragment$4;

    invoke-direct {v0, p0}, Lcom/senseonics/fragments/GraphFragment$4;-><init>(Lcom/senseonics/fragments/GraphFragment;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private addPopUpView()V
    .locals 3

    .line 557
    new-instance v0, Lcom/senseonics/fragments/PopupGraphManagerView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/GraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/senseonics/fragments/GraphFragment;->topLayoutHeight:I

    invoke-direct {v0, v1, v2}, Lcom/senseonics/fragments/PopupGraphManagerView;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->popupGraphManagerView:Lcom/senseonics/fragments/PopupGraphManagerView;

    .line 559
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->popupGraphManagerView:Lcom/senseonics/fragments/PopupGraphManagerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/senseonics/fragments/PopupGraphManagerView;->setVisibility(I)V

    .line 560
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->layout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/senseonics/fragments/GraphFragment;->popupGraphManagerView:Lcom/senseonics/fragments/PopupGraphManagerView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private createAlertView()Landroid/view/View;
    .locals 3

    .line 486
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->inflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 487
    invoke-virtual {p0}, Lcom/senseonics/fragments/GraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->inflater:Landroid/view/LayoutInflater;

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0b00ab

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, -0xff0001

    .line 490
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-object v0
.end method

.method private createPickerViewDialog(Ljava/util/Calendar;)V
    .locals 6

    if-eqz p1, :cond_3

    .line 573
    new-instance v5, Lcom/senseonics/fragments/GraphFragment$5;

    invoke-direct {v5, p0}, Lcom/senseonics/fragments/GraphFragment$5;-><init>(Lcom/senseonics/fragments/GraphFragment;)V

    .line 582
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    sget-object v2, Lcom/senseonics/util/Utils;->startDate:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 583
    sget-object p1, Lcom/senseonics/util/Utils;->startDate:Ljava/util/Calendar;

    .line 585
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    sget-object v2, Lcom/senseonics/util/Utils;->currentDate:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 586
    sget-object p1, Lcom/senseonics/util/Utils;->currentDate:Ljava/util/Calendar;

    :cond_1
    move-object v2, p1

    .line 588
    iget-object p1, p0, Lcom/senseonics/fragments/GraphFragment;->dialog:Landroid/app/Dialog;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/senseonics/fragments/GraphFragment;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 589
    iget-object p1, p0, Lcom/senseonics/fragments/GraphFragment;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 591
    :cond_2
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-virtual {p0}, Lcom/senseonics/fragments/GraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v3, Lcom/senseonics/util/Utils;->startDate:Ljava/util/Calendar;

    sget-object v4, Lcom/senseonics/util/Utils;->currentDate:Ljava/util/Calendar;

    invoke-virtual/range {v0 .. v5}, Lcom/senseonics/bluetoothle/DialogUtils;->createDatePickerDialog(Landroid/content/Context;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;Lcom/senseonics/util/dialogs/DateDialogManager;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/fragments/GraphFragment;->dialog:Landroid/app/Dialog;

    .line 593
    iget-object p1, p0, Lcom/senseonics/fragments/GraphFragment;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_3
    return-void
.end method

.method private createProgressDialogIfNeeded()V
    .locals 3

    .line 146
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->progressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 147
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/senseonics/fragments/GraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f100145

    invoke-direct {v0, v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->progressDialog:Landroid/app/ProgressDialog;

    .line 148
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/senseonics/fragments/GraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f080099

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 149
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    :cond_0
    return-void
.end method

.method private dismissProgressDialogIfNeeded()V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/senseonics/fragments/GraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private imageColorTint(ILjava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 177
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    .line 178
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 179
    invoke-virtual {p0}, Lcom/senseonics/fragments/GraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 181
    invoke-virtual {p1, p2, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-object p1
.end method

.method private init(Landroid/view/View;Landroid/content/Context;)V
    .locals 6

    .line 407
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->inflater:Landroid/view/LayoutInflater;

    const v0, 0x7f09012d

    .line 409
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/senseonics/fragments/GraphFragment;->layout:Landroid/widget/RelativeLayout;

    .line 411
    invoke-virtual {p0}, Lcom/senseonics/fragments/GraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/senseonics/util/Utils;->getStatusBarHeight(Landroid/app/Activity;)I

    move-result p1

    .line 413
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 414
    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x10102eb

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 416
    invoke-virtual {p0}, Lcom/senseonics/fragments/GraphFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 420
    sget v1, Lcom/senseonics/util/Utils;->screenHeight:I

    mul-int/lit8 v1, v1, 0x19

    div-int/lit8 v1, v1, 0x64

    iput v1, p0, Lcom/senseonics/fragments/GraphFragment;->topLayoutHeight:I

    .line 421
    iget v1, p0, Lcom/senseonics/fragments/GraphFragment;->topLayoutHeight:I

    iput v1, p0, Lcom/senseonics/fragments/GraphFragment;->currentTopLayoutHeight:I

    .line 422
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/senseonics/fragments/GraphFragment;->topLayout:Landroid/widget/RelativeLayout;

    .line 423
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/senseonics/fragments/GraphFragment;->topLayoutHeight:I

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 425
    iget-object v2, p0, Lcom/senseonics/fragments/GraphFragment;->topLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 426
    iget-object v1, p0, Lcom/senseonics/fragments/GraphFragment;->topLayout:Landroid/widget/RelativeLayout;

    const v2, 0x7f0902c0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 427
    iget-object v1, p0, Lcom/senseonics/fragments/GraphFragment;->topLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/senseonics/fragments/GraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f060050

    invoke-static {v4, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 428
    iget-object v1, p0, Lcom/senseonics/fragments/GraphFragment;->layout:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/senseonics/fragments/GraphFragment;->topLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 430
    iget-object v1, p0, Lcom/senseonics/fragments/GraphFragment;->inflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0b0086

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/senseonics/fragments/GraphFragment;->glucoseValueDisplay:Landroid/view/View;

    .line 432
    iget-object v1, p0, Lcom/senseonics/fragments/GraphFragment;->glucoseValueDisplay:Landroid/view/View;

    const v4, 0x7f090127

    invoke-virtual {v1, v4}, Landroid/view/View;->setId(I)V

    .line 434
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, p0, Lcom/senseonics/fragments/GraphFragment;->topLayoutHeight:I

    invoke-direct {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 436
    iget-object v4, p0, Lcom/senseonics/fragments/GraphFragment;->glucoseValueDisplay:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 438
    iget-object v1, p0, Lcom/senseonics/fragments/GraphFragment;->topLayout:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/senseonics/fragments/GraphFragment;->glucoseValueDisplay:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 440
    iget-object v1, p0, Lcom/senseonics/fragments/GraphFragment;->glucoseValueDisplay:Landroid/view/View;

    const v4, 0x7f09024f

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/senseonics/fragments/GraphFragment;->signalStrengthImageView:Landroid/widget/ImageView;

    .line 441
    iget-object v1, p0, Lcom/senseonics/fragments/GraphFragment;->glucoseValueDisplay:Landroid/view/View;

    const v4, 0x7f090072

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/senseonics/fragments/GraphFragment;->batteryStrengthImageView:Landroid/widget/ImageView;

    .line 442
    iget-object v1, p0, Lcom/senseonics/fragments/GraphFragment;->glucoseValueDisplay:Landroid/view/View;

    const v4, 0x7f090125

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/senseonics/fragments/GraphFragment;->glucoseValueTextView:Landroid/widget/TextView;

    .line 443
    iget-object v1, p0, Lcom/senseonics/fragments/GraphFragment;->glucoseValueDisplay:Landroid/view/View;

    const v4, 0x7f090124

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/senseonics/fragments/GraphFragment;->glucoseUnitTextView:Landroid/widget/TextView;

    .line 444
    iget-object v1, p0, Lcom/senseonics/fragments/GraphFragment;->glucoseValueDisplay:Landroid/view/View;

    const v4, 0x7f09003f

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/senseonics/fragments/GraphFragment;->arrowImageView:Landroid/widget/ImageView;

    .line 445
    iget-object v1, p0, Lcom/senseonics/fragments/GraphFragment;->glucoseValueDisplay:Landroid/view/View;

    const v4, 0x7f0902c8

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterNameTextView:Landroid/widget/TextView;

    .line 446
    iget-object v1, p0, Lcom/senseonics/fragments/GraphFragment;->glucoseValueDisplay:Landroid/view/View;

    const v4, 0x7f090294

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/senseonics/fragments/GraphFragment;->tempProfileImageView:Landroid/widget/ImageView;

    .line 447
    iget-object v1, p0, Lcom/senseonics/fragments/GraphFragment;->glucoseValueDisplay:Landroid/view/View;

    const v4, 0x7f0900de

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/senseonics/fragments/GraphFragment;->dndImageView:Landroid/widget/ImageView;

    .line 450
    sget v1, Lcom/senseonics/util/Utils;->screenHeight:I

    sub-int/2addr v1, p1

    sub-int/2addr v1, v0

    iget p1, p0, Lcom/senseonics/fragments/GraphFragment;->topLayoutHeight:I

    sub-int/2addr v1, p1

    iput v1, p0, Lcom/senseonics/fragments/GraphFragment;->graphHeight:I

    .line 453
    sget p1, Lcom/senseonics/util/Utils;->screenWidth:I

    const/16 v0, 0x15e

    if-le p1, v0, :cond_0

    .line 454
    sget p1, Lcom/senseonics/util/Utils;->screenWidth:I

    div-int/lit8 p1, p1, 0xa

    iput p1, p0, Lcom/senseonics/fragments/GraphFragment;->graphPaddingTop:I

    goto :goto_0

    .line 456
    :cond_0
    sget p1, Lcom/senseonics/util/Utils;->screenWidth:I

    div-int/lit8 p1, p1, 0x5

    iput p1, p0, Lcom/senseonics/fragments/GraphFragment;->graphPaddingTop:I

    .line 461
    :goto_0
    iget-object p1, p0, Lcom/senseonics/fragments/GraphFragment;->glucoseValueDisplay:Landroid/view/View;

    new-instance v0, Lcom/senseonics/fragments/GraphFragment$2;

    invoke-direct {v0, p0}, Lcom/senseonics/fragments/GraphFragment$2;-><init>(Lcom/senseonics/fragments/GraphFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 471
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, p0, Lcom/senseonics/fragments/GraphFragment;->graphHeight:I

    invoke-direct {p1, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v0, 0x3

    .line 473
    invoke-virtual {p1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 474
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->parentLayout:Landroid/widget/RelativeLayout;

    .line 475
    iget-object p2, p0, Lcom/senseonics/fragments/GraphFragment;->parentLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 476
    iget-object p1, p0, Lcom/senseonics/fragments/GraphFragment;->layout:Landroid/widget/RelativeLayout;

    iget-object p2, p0, Lcom/senseonics/fragments/GraphFragment;->parentLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 478
    invoke-direct {p0}, Lcom/senseonics/fragments/GraphFragment;->addPopUpView()V

    .line 480
    invoke-direct {p0}, Lcom/senseonics/fragments/GraphFragment;->createAlertView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/fragments/GraphFragment;->alertView:Landroid/view/View;

    .line 481
    iget-object p1, p0, Lcom/senseonics/fragments/GraphFragment;->alertView:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/senseonics/fragments/GraphFragment;->addAlertViewToTopLayout(Landroid/view/View;)V

    return-void
.end method

.method private refreshGlucosePanel()V
    .locals 2

    .line 188
    const-class v0, Lcom/senseonics/fragments/GraphFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "in refreshGlucosePanel"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-direct {p0}, Lcom/senseonics/fragments/GraphFragment;->setGlucoseLevel()V

    .line 191
    invoke-direct {p0}, Lcom/senseonics/fragments/GraphFragment;->setSignalStrength()V

    .line 192
    invoke-direct {p0}, Lcom/senseonics/fragments/GraphFragment;->setBatteryLevel()V

    .line 193
    invoke-direct {p0}, Lcom/senseonics/fragments/GraphFragment;->setTempProfileIcon()V

    .line 194
    invoke-direct {p0}, Lcom/senseonics/fragments/GraphFragment;->setDNDIcon()V

    return-void
.end method

.method private setArrowType(Ljava/lang/Boolean;)Z
    .locals 4

    .line 337
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getGlucoseTrendDirection()Lcom/senseonics/util/Utils$ARROW_TYPE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/util/Utils$ARROW_TYPE;->getImageId()I

    move-result v0

    .line 338
    iget-object v1, p0, Lcom/senseonics/fragments/GraphFragment;->arrowImageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 341
    iget-object v1, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getGlucoseTrendDirection()Lcom/senseonics/util/Utils$ARROW_TYPE;

    move-result-object v1

    sget-object v3, Lcom/senseonics/util/Utils$ARROW_TYPE;->STALE:Lcom/senseonics/util/Utils$ARROW_TYPE;

    if-eq v1, v3, :cond_1

    .line 342
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 343
    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentMessageCode()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/senseonics/util/TransmitterMessageCode;->canBlindGlucose()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 344
    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentAppAlertCodeFromState()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/senseonics/util/TransmitterMessageCode;->canBlindGlucose()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 345
    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->isGlucoseLevelWithinRange()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 346
    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->checkIfNonGlucoseShowingPhase()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0xff

    const/4 v1, 0x1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/16 p1, 0x66

    .line 352
    :goto_1
    iget-object v1, p0, Lcom/senseonics/fragments/GraphFragment;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 353
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    :cond_2
    return v2
.end method

.method private setBatteryLevel()V
    .locals 3

    .line 253
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->batteryStrengthImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/senseonics/fragments/GraphFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {p0}, Lcom/senseonics/fragments/GraphFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090072

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->batteryStrengthImageView:Landroid/widget/ImageView;

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->batteryStrengthImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    .line 257
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getBatteryLevel()Lcom/senseonics/model/BATTERY_LEVEL;

    move-result-object v0

    invoke-static {v0}, Lcom/senseonics/util/Utils;->getImageForBatteryLevel(Lcom/senseonics/model/BATTERY_LEVEL;)I

    move-result v0

    .line 259
    iget-object v1, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterConnectionState()Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    move-result-object v1

    sget-object v2, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 260
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentMessageCode()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v1

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->CriticalFaultAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 262
    :cond_1
    iget-object v1, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentMessageCode()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v1

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->EmptyBatteryAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 263
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getBatteryLevel()Lcom/senseonics/model/BATTERY_LEVEL;

    move-result-object v1

    sget-object v2, Lcom/senseonics/model/BATTERY_LEVEL;->BL_0:Lcom/senseonics/model/BATTERY_LEVEL;

    if-ne v1, v2, :cond_4

    :cond_2
    const v0, 0x7f0800da

    goto :goto_1

    :cond_3
    :goto_0
    const v0, 0x7f0800ce

    :cond_4
    :goto_1
    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    .line 268
    iget-object v1, p0, Lcom/senseonics/fragments/GraphFragment;->batteryStrengthImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_5
    return-void
.end method

.method private setDNDIcon()V
    .locals 2

    .line 384
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->dndImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/senseonics/fragments/GraphFragment;->updateIcon(Landroid/widget/ImageView;Z)V

    return-void
.end method

.method private setDashTextBold(Landroid/widget/TextView;)V
    .locals 2

    .line 565
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    sget-object v1, Lcom/senseonics/util/Utils;->GLUCOSE_LEVEL_UNKNOWN_STRING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 566
    invoke-virtual {p0}, Lcom/senseonics/fragments/GraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "Fonts/Roboto-Bold.ttf"

    invoke-static {v0, v1}, Lcom/senseonics/util/TypefaceFetcher;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 568
    :cond_0
    invoke-virtual {p0}, Lcom/senseonics/fragments/GraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "Fonts/Roboto-Regular.ttf"

    invoke-static {v0, v1}, Lcom/senseonics/util/TypefaceFetcher;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_0
    return-void
.end method

.method private setGlucoseLevel()V
    .locals 6

    .line 274
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->glucoseValueTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/senseonics/fragments/GraphFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {p0}, Lcom/senseonics/fragments/GraphFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090125

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->glucoseValueTextView:Landroid/widget/TextView;

    :cond_0
    const/4 v0, 0x1

    .line 277
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    .line 278
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 279
    iget-object v4, p0, Lcom/senseonics/fragments/GraphFragment;->glucoseValueTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_d

    .line 280
    iget-object v1, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterConnectionState()Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    move-result-object v1

    sget-object v4, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    if-ne v1, v4, :cond_2

    iget-object v1, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 281
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getSignalStrength()Lcom/senseonics/model/SIGNAL_STRENGTH;

    move-result-object v1

    sget-object v4, Lcom/senseonics/model/SIGNAL_STRENGTH;->NO_SIGNAL:Lcom/senseonics/model/SIGNAL_STRENGTH;

    if-ne v1, v4, :cond_1

    goto :goto_0

    .line 284
    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_1

    .line 282
    :cond_2
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 287
    :goto_1
    invoke-direct {p0, v1}, Lcom/senseonics/fragments/GraphFragment;->setArrowType(Ljava/lang/Boolean;)Z

    .line 292
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_3

    .line 293
    sget-object v4, Lcom/senseonics/util/Utils;->GLUCOSE_LEVEL_UNKNOWN_STRING:Ljava/lang/String;

    goto :goto_2

    .line 294
    :cond_3
    iget-object v4, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v4}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentAppAlertCodeFromState()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/senseonics/util/TransmitterMessageCode;->canBlindGlucose()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 295
    sget-object v4, Lcom/senseonics/util/Utils;->GLUCOSE_LEVEL_UNKNOWN_STRING:Ljava/lang/String;

    goto :goto_2

    .line 296
    :cond_4
    iget-object v4, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v4}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentMessageCode()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v4

    sget-object v5, Lcom/senseonics/util/TransmitterMessageCode;->SeriouslyLowAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v4, v5, :cond_5

    .line 297
    sget-object v4, Lcom/senseonics/util/Utils;->GLUCOSE_LEVEL_OUT_OF_RANGE_LOW_STRING:Ljava/lang/String;

    goto :goto_2

    .line 298
    :cond_5
    iget-object v4, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v4}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentMessageCode()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v4

    sget-object v5, Lcom/senseonics/util/TransmitterMessageCode;->SeriouslyHighAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v4, v5, :cond_6

    .line 299
    sget-object v4, Lcom/senseonics/util/Utils;->GLUCOSE_LEVEL_OUT_OF_RANGE_HIGH_STRING:Ljava/lang/String;

    goto :goto_2

    .line 300
    :cond_6
    iget-object v4, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v4}, Lcom/senseonics/model/TransmitterStateModel;->isGlucoseLevelWithinRange()Z

    move-result v4

    if-nez v4, :cond_7

    .line 301
    sget-object v4, Lcom/senseonics/util/Utils;->GLUCOSE_LEVEL_UNKNOWN_STRING:Ljava/lang/String;

    goto :goto_2

    .line 302
    :cond_7
    iget-object v4, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v4}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentMessageCode()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/senseonics/util/TransmitterMessageCode;->canBlindGlucose()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 303
    sget-object v4, Lcom/senseonics/util/Utils;->GLUCOSE_LEVEL_UNKNOWN_STRING:Ljava/lang/String;

    goto :goto_2

    .line 304
    :cond_8
    iget-object v4, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v4}, Lcom/senseonics/model/TransmitterStateModel;->checkIfNonGlucoseShowingPhase()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 305
    sget-object v4, Lcom/senseonics/util/Utils;->GLUCOSE_LEVEL_UNKNOWN_STRING:Ljava/lang/String;

    goto :goto_2

    .line 307
    :cond_9
    iget-object v4, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v4}, Lcom/senseonics/model/TransmitterStateModel;->getGlucoseLevel()I

    move-result v4

    invoke-static {v4}, Lcom/senseonics/util/Utils;->getGlucoseLevelValue(I)Ljava/lang/String;

    move-result-object v4

    .line 311
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_a

    goto :goto_3

    .line 318
    :cond_a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 321
    :goto_3
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->glucoseValueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->glucoseValueTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/GraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_b

    const v5, 0x7f06005c

    goto :goto_4

    :cond_b
    const v5, 0x7f06001e

    :goto_4
    invoke-static {v4, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 323
    sget-object v0, Lcom/senseonics/util/Utils;->currentGlucoseUnit:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    sget-object v4, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MG_DL:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    if-ne v0, v4, :cond_c

    .line 324
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->glucoseValueTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/GraphFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070093

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {v0, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_5

    .line 326
    :cond_c
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->glucoseValueTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/GraphFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070094

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {v0, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 328
    :goto_5
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->glucoseValueTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/senseonics/fragments/GraphFragment;->setDashTextBold(Landroid/widget/TextView;)V

    .line 331
    :cond_d
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/senseonics/fragments/GraphFragment;->setGlucoseUnit(Z)V

    .line 332
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/senseonics/fragments/GraphFragment;->setTransmitterName(Z)V

    return-void
.end method

.method private setGlucoseUnit(Z)V
    .locals 2

    .line 363
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->glucoseUnitTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 364
    invoke-virtual {p0}, Lcom/senseonics/fragments/GraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/senseonics/util/Utils;->getGlucoseUnitString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 365
    iget-object v1, p0, Lcom/senseonics/fragments/GraphFragment;->glucoseUnitTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->glucoseUnitTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/GraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz p1, :cond_0

    const p1, 0x7f06005c

    goto :goto_0

    :cond_0
    const p1, 0x7f06001e

    :goto_0
    invoke-static {v1, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method private setSignalStrength()V
    .locals 4

    .line 230
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->signalStrengthImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 231
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getSignalStrength()Lcom/senseonics/model/SIGNAL_STRENGTH;

    move-result-object v0

    invoke-static {v0}, Lcom/senseonics/util/Utils;->getImageForSignalStrength(Lcom/senseonics/model/SIGNAL_STRENGTH;)I

    move-result v0

    .line 233
    iget-object v1, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getSignalStrength()Lcom/senseonics/model/SIGNAL_STRENGTH;

    move-result-object v1

    sget-object v2, Lcom/senseonics/model/SIGNAL_STRENGTH;->NO_SIGNAL:Lcom/senseonics/model/SIGNAL_STRENGTH;

    const v3, 0x7f08016b

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 234
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentMessageCode()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v1

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->SensorAwolAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 235
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterConnectionState()Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    move-result-object v1

    sget-object v2, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    if-eq v1, v2, :cond_1

    :cond_0
    const v0, 0x7f08016b

    :cond_1
    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    if-ne v0, v3, :cond_2

    .line 242
    invoke-virtual {p0}, Lcom/senseonics/fragments/GraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 243
    iget-object v1, p0, Lcom/senseonics/fragments/GraphFragment;->signalStrengthImageView:Landroid/widget/ImageView;

    const-string v2, "#cf3a3a"

    invoke-direct {p0, v0, v2}, Lcom/senseonics/fragments/GraphFragment;->imageColorTint(ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 246
    :cond_2
    iget-object v1, p0, Lcom/senseonics/fragments/GraphFragment;->signalStrengthImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private setTempProfileIcon()V
    .locals 2

    .line 380
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->tempProfileImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/senseonics/fragments/GraphFragment;->tempProfileManager:Lcom/senseonics/bluetoothle/TempProfileManager;

    invoke-virtual {v1}, Lcom/senseonics/bluetoothle/TempProfileManager;->getTempProfileEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/senseonics/fragments/GraphFragment;->updateIcon(Landroid/widget/ImageView;Z)V

    return-void
.end method

.method private setTransmitterName(Z)V
    .locals 2

    .line 371
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterName()Ljava/lang/String;

    move-result-object v0

    .line 372
    iget-object v1, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterNameTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterNameTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/GraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz p1, :cond_1

    const p1, 0x7f06001e

    goto :goto_0

    :cond_1
    const p1, 0x7f06005c

    :goto_0
    invoke-static {v1, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private showProgressDialogIfNeeded()V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/senseonics/fragments/GraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :cond_0
    return-void
.end method

.method private updateIcon(Landroid/widget/ImageView;Z)V
    .locals 3

    const/4 v0, 0x0

    .line 388
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 390
    iget-object v2, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 392
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :cond_0
    if-eqz p1, :cond_2

    .line 397
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 398
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 p2, 0x8

    .line 400
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 80
    invoke-super {p0, p1, p2, p3}, Lcom/senseonics/fragments/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 81
    const-class p2, Lcom/senseonics/fragments/GraphFragment;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "in onCreateView"

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const p2, 0x7f0b0077

    const/4 p3, 0x0

    .line 83
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 84
    invoke-virtual {p0}, Lcom/senseonics/fragments/GraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/senseonics/fragments/GraphFragment;->init(Landroid/view/View;Landroid/content/Context;)V

    const/4 p2, 0x0

    .line 85
    sput-boolean p2, Lcom/senseonics/graph/util/GraphUtils;->listPopUpIsVisible:Z

    .line 86
    iget p2, p0, Lcom/senseonics/fragments/GraphFragment;->topLayoutHeight:I

    div-int/lit8 p2, p2, 0x4

    iput p2, p0, Lcom/senseonics/fragments/GraphFragment;->alertInfoHeight:I

    const p2, 0x7f090111

    .line 88
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/senseonics/fragments/GraphFragment;->expandImageButton:Landroid/widget/ImageButton;

    .line 89
    iget-object p2, p0, Lcom/senseonics/fragments/GraphFragment;->expandImageButton:Landroid/widget/ImageButton;

    new-instance p3, Lcom/senseonics/fragments/GraphFragment$1;

    invoke-direct {p3, p0}, Lcom/senseonics/fragments/GraphFragment$1;-><init>(Lcom/senseonics/fragments/GraphFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 3

    .line 141
    invoke-super {p0}, Lcom/senseonics/fragments/BaseFragment;->onDestroy()V

    const/4 v0, 0x1

    .line 142
    new-array v0, v0, [Lcom/senseonics/util/IDestroyable;

    iget-object v1, p0, Lcom/senseonics/fragments/GraphFragment;->graphManagerView:Lcom/senseonics/graph/GraphManagerView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/senseonics/util/Destroyer;->destroy([Lcom/senseonics/util/IDestroyable;)V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/ModelChangedRefreshGraphEvent;)V
    .locals 0

    .line 201
    invoke-virtual {p0}, Lcom/senseonics/fragments/GraphFragment;->refreshGraph()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/RefreshGraphEvent;)V
    .locals 0

    .line 226
    invoke-virtual {p0}, Lcom/senseonics/fragments/GraphFragment;->refreshGraph()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/TempProfileTurnedOffEvent;)V
    .locals 0

    .line 219
    invoke-direct {p0}, Lcom/senseonics/fragments/GraphFragment;->refreshGlucosePanel()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/model/ModelChangedEvent;)V
    .locals 0

    .line 205
    invoke-direct {p0}, Lcom/senseonics/fragments/GraphFragment;->refreshGlucosePanel()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 129
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 131
    invoke-direct {p0}, Lcom/senseonics/fragments/GraphFragment;->dismissProgressDialogIfNeeded()V

    const/4 v0, 0x0

    .line 134
    iput-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->graphManagerView:Lcom/senseonics/graph/GraphManagerView;

    .line 136
    invoke-super {p0}, Lcom/senseonics/fragments/BaseFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 102
    invoke-super {p0}, Lcom/senseonics/fragments/BaseFragment;->onResume()V

    .line 103
    const-class v0, Lcom/senseonics/fragments/GraphFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "in onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->registerSticky(Ljava/lang/Object;)V

    .line 108
    invoke-direct {p0}, Lcom/senseonics/fragments/GraphFragment;->createProgressDialogIfNeeded()V

    .line 109
    invoke-direct {p0}, Lcom/senseonics/fragments/GraphFragment;->showProgressDialogIfNeeded()V

    .line 112
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->graphManagerView:Lcom/senseonics/graph/GraphManagerView;

    if-nez v0, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/senseonics/fragments/GraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/senseonics/fragments/GraphFragment;->addGraphManagerView(Landroid/app/Activity;)V

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {p0}, Lcom/senseonics/fragments/GraphFragment;->refreshGraph()V

    .line 118
    :goto_0
    invoke-direct {p0}, Lcom/senseonics/fragments/GraphFragment;->refreshGlucosePanel()V

    .line 119
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->layout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/senseonics/fragments/GraphFragment;->expandImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->bringChildToFront(Landroid/view/View;)V

    .line 122
    invoke-virtual {p0}, Lcom/senseonics/fragments/GraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/senseonics/gen12androidapp/MainActivity;

    if-eqz v0, :cond_1

    .line 123
    invoke-virtual {p0}, Lcom/senseonics/fragments/GraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/senseonics/gen12androidapp/MainActivity;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/MainActivity;->refreshAfterFragmentChanged()V

    :cond_1
    return-void
.end method

.method public refreshGraph()V
    .locals 1

    .line 504
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->lazyLoadGraphModel:Lcom/senseonics/graph/LazyLoadGraphModel;

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->lazyLoadGraphModel:Lcom/senseonics/graph/LazyLoadGraphModel;

    invoke-virtual {v0}, Lcom/senseonics/graph/LazyLoadGraphModel;->refreshGraphWithExistingStartEndDates()V

    :cond_0
    return-void
.end method

.method public setDialog(Landroid/app/Dialog;)V
    .locals 0

    .line 657
    iput-object p1, p0, Lcom/senseonics/fragments/GraphFragment;->dialog:Landroid/app/Dialog;

    return-void
.end method

.method public validateGraph()V
    .locals 1

    .line 510
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->lazyLoadGraphModel:Lcom/senseonics/graph/LazyLoadGraphModel;

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->lazyLoadGraphModel:Lcom/senseonics/graph/LazyLoadGraphModel;

    invoke-virtual {v0}, Lcom/senseonics/graph/LazyLoadGraphModel;->refreshGraphWithNewStartEndDates()V

    :cond_0
    return-void
.end method
