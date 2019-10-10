.class public Lcom/senseonics/bluetoothle/DialogUtils;
.super Ljava/lang/Object;
.source "DialogUtils.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private final MAX_REPEATED_ALERTS:I

.field private alertHelper:Lcom/senseonics/util/AlertHelper;

.field private appUpdateDialog:Landroid/app/Dialog;

.field private final customDialogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/senseonics/util/dialogs/CustomDialogInfo;",
            ">;"
        }
    .end annotation
.end field

.field public doNotDisturbAlertDialog:Landroid/app/Dialog;

.field public moreThanMaxAlertDialog:Landroid/app/Dialog;

.field private nullTimeChangedListener:Lnet/simonvt/timepicker/TimePicker$OnTimeChangedListener;

.field private tempProfileAlertDialog:Landroid/app/Dialog;

.field private tempProfileManager:Lcom/senseonics/bluetoothle/TempProfileManager;

.field private transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;


# direct methods
.method public constructor <init>(Lcom/senseonics/model/TransmitterStateModel;Lcom/senseonics/bluetoothle/TempProfileManager;Lcom/senseonics/util/AlertHelper;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/senseonics/bluetoothle/DialogUtils;-><init>(Lcom/senseonics/model/TransmitterStateModel;Lcom/senseonics/bluetoothle/TempProfileManager;Lcom/senseonics/util/AlertHelper;Ljava/util/ArrayList;)V

    return-void
.end method

.method protected constructor <init>(Lcom/senseonics/model/TransmitterStateModel;Lcom/senseonics/bluetoothle/TempProfileManager;Lcom/senseonics/util/AlertHelper;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/senseonics/model/TransmitterStateModel;",
            "Lcom/senseonics/bluetoothle/TempProfileManager;",
            "Lcom/senseonics/util/AlertHelper;",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/dialogs/CustomDialogInfo;",
            ">;)V"
        }
    .end annotation

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 82
    iput v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->MAX_REPEATED_ALERTS:I

    .line 1123
    new-instance v0, Lcom/senseonics/bluetoothle/DialogUtils$26;

    invoke-direct {v0, p0}, Lcom/senseonics/bluetoothle/DialogUtils$26;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;)V

    iput-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->nullTimeChangedListener:Lnet/simonvt/timepicker/TimePicker$OnTimeChangedListener;

    .line 90
    iput-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 91
    iput-object p2, p0, Lcom/senseonics/bluetoothle/DialogUtils;->tempProfileManager:Lcom/senseonics/bluetoothle/TempProfileManager;

    .line 92
    iput-object p3, p0, Lcom/senseonics/bluetoothle/DialogUtils;->alertHelper:Lcom/senseonics/util/AlertHelper;

    .line 93
    iput-object p4, p0, Lcom/senseonics/bluetoothle/DialogUtils;->customDialogs:Ljava/util/List;

    return-void
.end method

.method private HideKeyboard(Landroid/app/Dialog;)V
    .locals 1

    .line 1313
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/senseonics/bluetoothle/DialogUtils;)Ljava/util/List;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->customDialogs:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/senseonics/bluetoothle/DialogUtils;)Landroid/app/Dialog;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->appUpdateDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$200(Lcom/senseonics/bluetoothle/DialogUtils;Landroid/content/Context;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcom/senseonics/bluetoothle/DialogUtils;->openPlayStore(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300(Lcom/senseonics/bluetoothle/DialogUtils;)Landroid/app/Dialog;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->tempProfileAlertDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$400(Lcom/senseonics/bluetoothle/DialogUtils;)Lnet/simonvt/timepicker/TimePicker$OnTimeChangedListener;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->nullTimeChangedListener:Lnet/simonvt/timepicker/TimePicker$OnTimeChangedListener;

    return-object p0
.end method

.method private addDialogInfo(Lcom/senseonics/util/dialogs/CustomDialogInfo;)V
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->customDialogs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 257
    iget-object v1, p0, Lcom/senseonics/bluetoothle/DialogUtils;->customDialogs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/util/dialogs/CustomDialogInfo;

    .line 258
    iget-object v1, p0, Lcom/senseonics/bluetoothle/DialogUtils;->customDialogs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 259
    invoke-virtual {v0}, Lcom/senseonics/util/dialogs/CustomDialogInfo;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 260
    invoke-virtual {v0}, Lcom/senseonics/util/dialogs/CustomDialogInfo;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->customDialogs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private createDoNotDisturbAlertDialog(Landroid/content/Context;IIIILjava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IIII",
            "Ljava/lang/Class<",
            "Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;",
            ">;)V"
        }
    .end annotation

    .line 861
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->doNotDisturbAlertDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->doNotDisturbAlertDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 862
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->doNotDisturbAlertDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 864
    :cond_0
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f1000b8

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->doNotDisturbAlertDialog:Landroid/app/Dialog;

    .line 866
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0058

    const/4 v2, 0x0

    .line 867
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0902b6

    .line 869
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x0

    .line 870
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 871
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f09029c

    .line 873
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 875
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 874
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f090091

    .line 877
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 878
    invoke-virtual {p1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 879
    new-instance p3, Lcom/senseonics/bluetoothle/DialogUtils$19;

    invoke-direct {p3, p0}, Lcom/senseonics/bluetoothle/DialogUtils$19;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0901f1

    .line 887
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 888
    invoke-virtual {p1, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 889
    new-instance p3, Lcom/senseonics/bluetoothle/DialogUtils$20;

    invoke-direct {p3, p0, p1, p6}, Lcom/senseonics/bluetoothle/DialogUtils$20;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 903
    iget-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils;->doNotDisturbAlertDialog:Landroid/app/Dialog;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 904
    iget-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils;->doNotDisturbAlertDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private createMoreThanMaxAlertDialog(Landroid/content/Context;IIIILjava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IIII",
            "Ljava/lang/Class<",
            "Lcom/senseonics/gen12androidapp/NotificationsActivity;",
            ">;)V"
        }
    .end annotation

    .line 664
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->moreThanMaxAlertDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->moreThanMaxAlertDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 665
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->moreThanMaxAlertDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 667
    :cond_0
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f1000b8

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->moreThanMaxAlertDialog:Landroid/app/Dialog;

    .line 669
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0058

    const/4 v2, 0x0

    .line 670
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0902b6

    .line 672
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x0

    .line 673
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 674
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f09029c

    .line 676
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 678
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 677
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f090091

    .line 680
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 681
    invoke-virtual {p1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 682
    new-instance p3, Lcom/senseonics/bluetoothle/DialogUtils$13;

    invoke-direct {p3, p0, p1, p6}, Lcom/senseonics/bluetoothle/DialogUtils$13;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0901f1

    .line 694
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 695
    invoke-virtual {p1, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 696
    new-instance p1, Lcom/senseonics/bluetoothle/DialogUtils$14;

    invoke-direct {p1, p0}, Lcom/senseonics/bluetoothle/DialogUtils$14;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;)V

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 705
    iget-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils;->moreThanMaxAlertDialog:Landroid/app/Dialog;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 706
    iget-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils;->moreThanMaxAlertDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private createTempProfileTurnedOffPopup(Landroid/content/Context;IIIILjava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IIII",
            "Ljava/lang/Class<",
            "Lcom/senseonics/gen12androidapp/TempGlucoseProfileActivity;",
            ">;)V"
        }
    .end annotation

    .line 800
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->tempProfileAlertDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->tempProfileAlertDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 801
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->tempProfileAlertDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 803
    :cond_0
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f1000b8

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->tempProfileAlertDialog:Landroid/app/Dialog;

    .line 805
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0058

    const/4 v2, 0x0

    .line 806
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0902b6

    .line 808
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x0

    .line 809
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 810
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f09029c

    .line 812
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 814
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 813
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f090091

    .line 816
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 817
    invoke-virtual {p1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 818
    new-instance p3, Lcom/senseonics/bluetoothle/DialogUtils$17;

    invoke-direct {p3, p0}, Lcom/senseonics/bluetoothle/DialogUtils$17;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0901f1

    .line 826
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 827
    invoke-virtual {p1, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 828
    new-instance p3, Lcom/senseonics/bluetoothle/DialogUtils$18;

    invoke-direct {p3, p0, p1, p6}, Lcom/senseonics/bluetoothle/DialogUtils$18;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 842
    iget-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils;->tempProfileAlertDialog:Landroid/app/Dialog;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 843
    iget-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils;->tempProfileAlertDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private createUpdateAppPopup(Landroid/content/Context;IIIILjava/lang/String;)V
    .locals 2

    .line 733
    iget-object p6, p0, Lcom/senseonics/bluetoothle/DialogUtils;->appUpdateDialog:Landroid/app/Dialog;

    if-eqz p6, :cond_0

    iget-object p6, p0, Lcom/senseonics/bluetoothle/DialogUtils;->appUpdateDialog:Landroid/app/Dialog;

    invoke-virtual {p6}, Landroid/app/Dialog;->isShowing()Z

    move-result p6

    if-eqz p6, :cond_0

    return-void

    .line 737
    :cond_0
    new-instance p6, Landroid/app/Dialog;

    const v0, 0x7f1000b8

    invoke-direct {p6, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p6, p0, Lcom/senseonics/bluetoothle/DialogUtils;->appUpdateDialog:Landroid/app/Dialog;

    .line 739
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p6

    const v0, 0x7f0b0058

    const/4 v1, 0x0

    .line 740
    invoke-virtual {p6, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p6

    const v0, 0x7f0902b6

    .line 742
    invoke-virtual {p6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    .line 743
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 744
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f09029c

    .line 746
    invoke-virtual {p6, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 748
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 747
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f090091

    .line 750
    invoke-virtual {p6, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 751
    invoke-virtual {p1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 752
    new-instance p3, Lcom/senseonics/bluetoothle/DialogUtils$15;

    invoke-direct {p3, p0}, Lcom/senseonics/bluetoothle/DialogUtils$15;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0901f1

    .line 760
    invoke-virtual {p6, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 761
    invoke-virtual {p1, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 762
    new-instance p3, Lcom/senseonics/bluetoothle/DialogUtils$16;

    invoke-direct {p3, p0, p1}, Lcom/senseonics/bluetoothle/DialogUtils$16;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 772
    iget-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils;->appUpdateDialog:Landroid/app/Dialog;

    invoke-virtual {p1, p6}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 773
    iget-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils;->appUpdateDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private openPlayStore(Landroid/content/Context;)V
    .locals 3

    .line 723
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "market://developer?id=Senseonics"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 725
    :catch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "https://play.google.com/store/apps/developer?id=Senseonics"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method private showCommonNotificationDialog(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/senseonics/util/dialogs/NotificationDialogManager;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/senseonics/events/EventPoint;)Landroid/app/Dialog;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p6

    move-object/from16 v5, p8

    move/from16 v6, p9

    .line 919
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    const/4 v9, 0x2

    if-ne v7, v9, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    .line 921
    :goto_0
    new-instance v9, Landroid/app/Dialog;

    const v10, 0x7f1000b7

    invoke-direct {v9, v1, v10}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 922
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    const v11, 0x7f0b003d

    const/4 v12, 0x0

    .line 923
    invoke-virtual {v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    if-nez v7, :cond_1

    .line 926
    invoke-virtual {v9}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v11

    .line 927
    iget v12, v11, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/lit16 v12, v12, 0x96

    iput v12, v11, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 928
    invoke-virtual {v9}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v12

    invoke-virtual {v12, v11}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    const-string v11, ""

    .line 931
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const v12, 0x7f09023d

    if-eqz v11, :cond_2

    .line 933
    invoke-virtual {v10, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewStub;

    const v12, 0x7f0b00bc

    .line 934
    invoke-virtual {v11, v12}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 935
    invoke-virtual {v11}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    goto :goto_1

    .line 937
    :cond_2
    invoke-virtual {v10, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewStub;

    const v12, 0x7f0b00bd

    .line 938
    invoke-virtual {v11, v12}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 939
    invoke-virtual {v11}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :goto_1
    const v11, 0x7f0901e6

    .line 942
    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 943
    invoke-virtual {v11, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    const v11, 0x7f0902b9

    .line 946
    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 947
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v12, 0x7f090123

    .line 950
    invoke-virtual {v10, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 951
    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v13, 0x7f0902b0

    .line 954
    invoke-virtual {v10, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 955
    invoke-virtual/range {p11 .. p11}, Lcom/senseonics/events/EventPoint;->getTimestamp()J

    move-result-wide v14

    .line 956
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 957
    invoke-virtual {v8, v14, v15}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 958
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v14

    invoke-static {v8, v14, v1}, Lcom/senseonics/util/Utils;->formatWeekDateTimeForTimeZone(Ljava/util/Calendar;Ljava/util/TimeZone;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v8, 0x7f090079

    .line 961
    invoke-virtual {v10, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const-string v14, " "

    const/4 v15, -0x1

    if-eq v6, v15, :cond_3

    .line 964
    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 966
    :cond_3
    invoke-virtual {v8, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v6, 0x7f07004e

    if-eqz v7, :cond_4

    .line 968
    invoke-virtual {v8}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 969
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    float-to-int v15, v15

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    const/4 v6, 0x0

    invoke-virtual {v14, v15, v6, v4, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 970
    invoke-virtual {v8, v14}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    const v4, 0x7f090035

    .line 974
    invoke-virtual {v10, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 975
    new-instance v6, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v6}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    move-object/from16 v6, p5

    .line 976
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v7, :cond_5

    .line 978
    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 979
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v14, 0x7f07004e

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v14, v14

    const/4 v15, 0x0

    invoke-virtual {v6, v8, v15, v14, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 980
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    const v4, 0x7f0902c2

    .line 984
    invoke-virtual {v10, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 985
    iget-object v6, v0, Lcom/senseonics/bluetoothle/DialogUtils;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v6}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f080193

    if-ne v2, v4, :cond_6

    const v2, 0x7f06001e

    .line 989
    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    .line 990
    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 991
    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 992
    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_6
    const v2, 0x7f090156

    .line 995
    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 998
    new-instance v4, Lcom/senseonics/bluetoothle/DialogUtils$21;

    move-object/from16 v6, p10

    invoke-direct {v4, v0, v1, v6, v3}, Lcom/senseonics/bluetoothle/DialogUtils$21;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f090091

    .line 1023
    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0901f1

    .line 1024
    invoke-virtual {v10, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, ""

    .line 1027
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1028
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1029
    new-instance v4, Lcom/senseonics/bluetoothle/DialogUtils$22;

    move-object/from16 v5, p6

    invoke-direct {v4, v0, v9, v5}, Lcom/senseonics/bluetoothle/DialogUtils$22;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;Landroid/app/Dialog;Lcom/senseonics/util/dialogs/NotificationDialogManager;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_7
    move-object/from16 v5, p6

    :goto_2
    move-object/from16 v3, p7

    .line 1039
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1040
    new-instance v3, Lcom/senseonics/bluetoothle/DialogUtils$23;

    invoke-direct {v3, v0, v9, v5}, Lcom/senseonics/bluetoothle/DialogUtils$23;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;Landroid/app/Dialog;Lcom/senseonics/util/dialogs/NotificationDialogManager;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1049
    invoke-virtual {v9, v10}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const/4 v2, 0x0

    .line 1050
    invoke-virtual {v9, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1052
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700ae

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 1054
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0700ad

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    if-nez v7, :cond_8

    .line 1058
    invoke-virtual {v9}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/view/Window;->setLayout(II)V

    goto :goto_3

    .line 1060
    :cond_8
    invoke-virtual {v9}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/Window;->setLayout(II)V

    :goto_3
    return-object v9
.end method


# virtual methods
.method public addAPendingAlertOrAlarmDialog(Lcom/senseonics/events/AlertEventPoint;I)V
    .locals 1

    .line 251
    new-instance v0, Lcom/senseonics/util/dialogs/AlertDialogInfo;

    invoke-direct {v0, p1, p2}, Lcom/senseonics/util/dialogs/AlertDialogInfo;-><init>(Lcom/senseonics/events/AlertEventPoint;I)V

    invoke-direct {p0, v0}, Lcom/senseonics/bluetoothle/DialogUtils;->addDialogInfo(Lcom/senseonics/util/dialogs/CustomDialogInfo;)V

    return-void
.end method

.method public addAPendingCalibrationDialog(Lcom/senseonics/events/EventPoint;I)V
    .locals 1

    .line 330
    new-instance v0, Lcom/senseonics/util/dialogs/CalibrateDialogInfo;

    invoke-direct {v0, p1, p2}, Lcom/senseonics/util/dialogs/CalibrateDialogInfo;-><init>(Lcom/senseonics/events/EventPoint;I)V

    invoke-direct {p0, v0}, Lcom/senseonics/bluetoothle/DialogUtils;->addDialogInfo(Lcom/senseonics/util/dialogs/CustomDialogInfo;)V

    return-void
.end method

.method public addAPendingNotificationAlertOrAlarm(Lcom/senseonics/events/EventPoint;Lcom/senseonics/util/TransmitterMessageCode;)V
    .locals 2

    .line 467
    new-instance v0, Lcom/senseonics/util/dialogs/NotificationDialogInfo;

    invoke-virtual {p2}, Lcom/senseonics/util/TransmitterMessageCode;->notificationId()I

    move-result v1

    invoke-direct {v0, p1, p2, v1}, Lcom/senseonics/util/dialogs/NotificationDialogInfo;-><init>(Lcom/senseonics/events/EventPoint;Lcom/senseonics/util/TransmitterMessageCode;I)V

    invoke-direct {p0, v0}, Lcom/senseonics/bluetoothle/DialogUtils;->addDialogInfo(Lcom/senseonics/util/dialogs/CustomDialogInfo;)V

    return-void
.end method

.method public addAPendingRateOrPredictiveRateAlertDialog(Lcom/senseonics/events/AlertEventPoint;I)V
    .locals 1

    .line 391
    new-instance v0, Lcom/senseonics/util/dialogs/PredictiveRateAlertDialogInfo;

    invoke-direct {v0, p1, p2}, Lcom/senseonics/util/dialogs/PredictiveRateAlertDialogInfo;-><init>(Lcom/senseonics/events/AlertEventPoint;I)V

    invoke-direct {p0, v0}, Lcom/senseonics/bluetoothle/DialogUtils;->addDialogInfo(Lcom/senseonics/util/dialogs/CustomDialogInfo;)V

    return-void
.end method

.method public createAlertDialog(Landroid/content/Context;Lcom/senseonics/util/dialogs/AlertDialogInfo;)Landroid/app/Dialog;
    .locals 12

    .line 267
    invoke-virtual {p2}, Lcom/senseonics/util/dialogs/AlertDialogInfo;->getAlertEventPoint()Lcom/senseonics/events/AlertEventPoint;

    move-result-object v11

    .line 268
    invoke-virtual {v11}, Lcom/senseonics/events/AlertEventPoint;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v0

    .line 269
    invoke-virtual {v11}, Lcom/senseonics/events/AlertEventPoint;->getAlertType()Lcom/senseonics/util/Utils$ALERT_TYPE;

    move-result-object v1

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    .line 276
    sget-object v5, Lcom/senseonics/bluetoothle/DialogUtils$36;->$SwitchMap$com$senseonics$util$Utils$EVENT_TYPE:[I

    invoke-virtual {v0}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result v0

    aget v0, v5, v0

    const v5, 0x7f0f0023

    const v6, 0x7f080193

    packed-switch v0, :pswitch_data_0

    const/4 v0, -0x1

    const/4 v1, 0x0

    move-object v5, v3

    move-object v3, v4

    move-object v4, v2

    const/4 v2, -0x1

    goto :goto_3

    .line 288
    :pswitch_0
    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 289
    iget-object v2, p0, Lcom/senseonics/bluetoothle/DialogUtils;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 290
    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseAlarmThreshold()I

    move-result v2

    iget-object v3, p0, Lcom/senseonics/bluetoothle/DialogUtils;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 291
    invoke-virtual {v3}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseAlarmThreshold()I

    move-result v3

    .line 289
    invoke-static {p1, v1, v2, v3}, Lcom/senseonics/util/TransmitterMessageCode;->getAlarmEventText(Landroid/content/Context;Lcom/senseonics/util/Utils$ALERT_TYPE;II)Ljava/lang/String;

    move-result-object v2

    .line 292
    sget-object v3, Lcom/senseonics/util/Utils$ALERT_TYPE;->LOW_GLUCOSE:Lcom/senseonics/util/Utils$ALERT_TYPE;

    if-ne v1, v3, :cond_0

    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->LowGlucoseAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->HighGlucoseAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    .line 293
    :goto_0
    invoke-virtual {v1}, Lcom/senseonics/util/TransmitterMessageCode;->getTitle()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 279
    :pswitch_1
    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 280
    iget-object v2, p0, Lcom/senseonics/bluetoothle/DialogUtils;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 281
    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseAlertThreshold()I

    move-result v2

    iget-object v3, p0, Lcom/senseonics/bluetoothle/DialogUtils;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 282
    invoke-virtual {v3}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseAlertThreshold()I

    move-result v3

    .line 280
    invoke-static {p1, v1, v2, v3}, Lcom/senseonics/util/TransmitterMessageCode;->getAlertEventText(Landroid/content/Context;Lcom/senseonics/util/Utils$ALERT_TYPE;II)Ljava/lang/String;

    move-result-object v2

    .line 283
    sget-object v3, Lcom/senseonics/util/Utils$ALERT_TYPE;->LOW_GLUCOSE:Lcom/senseonics/util/Utils$ALERT_TYPE;

    if-ne v1, v3, :cond_1

    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->LowGlucoseAlert:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->HighGlucoseAlert:Lcom/senseonics/util/TransmitterMessageCode;

    .line 284
    :goto_1
    invoke-virtual {v1}, Lcom/senseonics/util/TransmitterMessageCode;->getTitle()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_2
    move-object v5, v2

    move-object v4, v3

    const v2, 0x7f080193

    move-object v3, v0

    .line 299
    :goto_3
    new-instance v6, Lcom/senseonics/bluetoothle/DialogUtils$4;

    invoke-direct {v6, p0, p2}, Lcom/senseonics/bluetoothle/DialogUtils$4;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;Lcom/senseonics/util/dialogs/AlertDialogInfo;)V

    .line 312
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0f019d

    .line 313
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    .line 314
    invoke-virtual {v1}, Lcom/senseonics/util/TransmitterMessageCode;->getSubtitle()I

    move-result v9

    iget-object p2, p0, Lcom/senseonics/bluetoothle/DialogUtils;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 315
    invoke-static {p1, v1, p2}, Lcom/senseonics/util/TransmitterMessageCode;->getHelpString(Landroid/content/Context;Lcom/senseonics/util/TransmitterMessageCode;Lcom/senseonics/model/TransmitterStateModel;)Ljava/lang/String;

    move-result-object v10

    move-object v0, p0

    move-object v1, p1

    .line 311
    invoke-direct/range {v0 .. v11}, Lcom/senseonics/bluetoothle/DialogUtils;->showCommonNotificationDialog(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/senseonics/util/dialogs/NotificationDialogManager;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/senseonics/events/EventPoint;)Landroid/app/Dialog;

    move-result-object p1

    const/4 p2, 0x0

    .line 318
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCancelable(Z)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public createAlertDialogInfo(Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;Lcom/senseonics/events/AlertEventPoint;I)V
    .locals 0

    .line 246
    invoke-virtual {p0, p2, p3}, Lcom/senseonics/bluetoothle/DialogUtils;->addAPendingAlertOrAlarmDialog(Lcom/senseonics/events/AlertEventPoint;I)V

    .line 247
    invoke-virtual {p0, p1}, Lcom/senseonics/bluetoothle/DialogUtils;->showDialogs(Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;)V

    return-void
.end method

.method public createCalibrateDialog(Landroid/content/Context;Lcom/senseonics/util/dialogs/CalibrateDialogInfo;Lcom/senseonics/util/dialogs/NotificationDialogManager;)Landroid/app/Dialog;
    .locals 12

    .line 336
    invoke-virtual {p2}, Lcom/senseonics/util/dialogs/CalibrateDialogInfo;->getEventPoint()Lcom/senseonics/events/EventPoint;

    move-result-object v11

    .line 338
    new-instance v6, Lcom/senseonics/bluetoothle/DialogUtils$5;

    invoke-direct {v6, p0, p3, p2}, Lcom/senseonics/bluetoothle/DialogUtils$5;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;Lcom/senseonics/util/dialogs/NotificationDialogManager;Lcom/senseonics/util/dialogs/CalibrateDialogInfo;)V

    .line 352
    iget-object p2, p0, Lcom/senseonics/bluetoothle/DialogUtils;->alertHelper:Lcom/senseonics/util/AlertHelper;

    invoke-virtual {v11}, Lcom/senseonics/events/EventPoint;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/senseonics/util/AlertHelper;->getTransmitterMessageCodeForCalibrateEvent(Lcom/senseonics/util/Utils$EVENT_TYPE;)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object p2

    .line 353
    sget-object p3, Lcom/senseonics/util/TransmitterMessageCode;->NumberOfMessages:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne p2, p3, :cond_0

    .line 354
    invoke-virtual {v11}, Lcom/senseonics/events/EventPoint;->getNotificationEventType()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object p3

    if-eqz p3, :cond_0

    move-object p2, p3

    :cond_0
    const p3, 0x7f0f0196

    .line 360
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    const v0, 0x7f0f0065

    .line 361
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 362
    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->CalibrationSuspiciousAlert:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne p2, v1, :cond_1

    const p3, 0x7f0f019d

    .line 363
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    const-string v0, ""

    :cond_1
    move-object v7, p3

    move-object v8, v0

    .line 369
    invoke-virtual {p2}, Lcom/senseonics/util/TransmitterMessageCode;->getBackgroundImage()I

    move-result v2

    .line 370
    invoke-virtual {p2}, Lcom/senseonics/util/TransmitterMessageCode;->getType()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 371
    invoke-virtual {p2}, Lcom/senseonics/util/TransmitterMessageCode;->getTitle()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object p3, p0, Lcom/senseonics/bluetoothle/DialogUtils;->alertHelper:Lcom/senseonics/util/AlertHelper;

    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 372
    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11}, Lcom/senseonics/events/EventPoint;->getTimestamp()J

    move-result-wide v9

    invoke-virtual {p3, p2, v0, v9, v10}, Lcom/senseonics/util/AlertHelper;->getNotificationMessageText(Lcom/senseonics/util/TransmitterMessageCode;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    .line 376
    invoke-virtual {p2}, Lcom/senseonics/util/TransmitterMessageCode;->getSubtitle()I

    move-result v9

    iget-object p3, p0, Lcom/senseonics/bluetoothle/DialogUtils;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 377
    invoke-static {p1, p2, p3}, Lcom/senseonics/util/TransmitterMessageCode;->getHelpString(Landroid/content/Context;Lcom/senseonics/util/TransmitterMessageCode;Lcom/senseonics/model/TransmitterStateModel;)Ljava/lang/String;

    move-result-object v10

    move-object v0, p0

    move-object v1, p1

    .line 367
    invoke-direct/range {v0 .. v11}, Lcom/senseonics/bluetoothle/DialogUtils;->showCommonNotificationDialog(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/senseonics/util/dialogs/NotificationDialogManager;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/senseonics/events/EventPoint;)Landroid/app/Dialog;

    move-result-object p1

    const/4 p2, 0x0

    .line 379
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCancelable(Z)V

    return-object p1
.end method

.method public createCalibrateDialogInfo(Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;Lcom/senseonics/events/EventPoint;I)V
    .locals 0

    .line 325
    invoke-virtual {p0, p2, p3}, Lcom/senseonics/bluetoothle/DialogUtils;->addAPendingCalibrationDialog(Lcom/senseonics/events/EventPoint;I)V

    .line 326
    invoke-virtual {p0, p1}, Lcom/senseonics/bluetoothle/DialogUtils;->showDialogs(Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;)V

    return-void
.end method

.method public createDatePickerDialog(Landroid/content/Context;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;Lcom/senseonics/util/dialogs/DateDialogManager;)Landroid/app/Dialog;
    .locals 6

    .line 1070
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f1000b8

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    .line 1071
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1072
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v2, 0x0

    const v3, 0x7f0b0048

    .line 1073
    invoke-virtual {p1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v3, 0x7f0900bf

    .line 1076
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lnet/simonvt/datepicker/DatePicker;

    const v4, 0x7f090091

    .line 1077
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1078
    new-instance v5, Lcom/senseonics/bluetoothle/DialogUtils$24;

    invoke-direct {v5, p0, v0}, Lcom/senseonics/bluetoothle/DialogUtils$24;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;Landroid/app/Dialog;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f0901f1

    .line 1086
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1087
    new-instance v5, Lcom/senseonics/bluetoothle/DialogUtils$25;

    invoke-direct {v5, p0, v3, p5, v0}, Lcom/senseonics/bluetoothle/DialogUtils$25;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;Lnet/simonvt/datepicker/DatePicker;Lcom/senseonics/util/dialogs/DateDialogManager;Landroid/app/Dialog;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p5, 0x1

    .line 1107
    invoke-virtual {p2, p5}, Ljava/util/Calendar;->get(I)I

    move-result p5

    const/4 v4, 0x2

    .line 1108
    invoke-virtual {p2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x5

    .line 1109
    invoke-virtual {p2, v5}, Ljava/util/Calendar;->get(I)I

    move-result p2

    .line 1110
    invoke-virtual {v3, p5, v4, p2, v2}, Lnet/simonvt/datepicker/DatePicker;->init(IIILnet/simonvt/datepicker/DatePicker$OnDateChangedListener;)V

    .line 1112
    invoke-virtual {v3, v1}, Lnet/simonvt/datepicker/DatePicker;->setCalendarViewShown(Z)V

    .line 1113
    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p2

    invoke-virtual {v3, p2, p3}, Lnet/simonvt/datepicker/DatePicker;->setMinDate(J)V

    .line 1114
    invoke-virtual {p4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p2

    invoke-virtual {v3, p2, p3}, Lnet/simonvt/datepicker/DatePicker;->setMaxDate(J)V

    .line 1116
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1118
    invoke-direct {p0, v0}, Lcom/senseonics/bluetoothle/DialogUtils;->HideKeyboard(Landroid/app/Dialog;)V

    return-object v0
.end method

.method public createDateTimePickerDialog(Landroid/content/Context;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;Lcom/senseonics/util/dialogs/DateDialogManager;Z)V
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    .line 1134
    new-instance v8, Landroid/app/Dialog;

    const v0, 0x7f1000b8

    move-object/from16 v1, p1

    invoke-direct {v8, v1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1135
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v9, 0x0

    const v2, 0x7f0b0049

    .line 1136
    invoke-virtual {v0, v2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    const v0, 0x7f0900bf

    .line 1139
    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lnet/simonvt/datepicker/DatePicker;

    const v0, 0x7f0902af

    .line 1142
    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lnet/simonvt/timepicker/TimePicker;

    const/high16 v0, 0x60000

    .line 1144
    invoke-virtual {v12, v0}, Lnet/simonvt/timepicker/TimePicker;->setDescendantFocusability(I)V

    .line 1145
    invoke-static/range {p1 .. p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    const/4 v13, 0x1

    if-eqz v0, :cond_0

    .line 1146
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v12, v0}, Lnet/simonvt/timepicker/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 1150
    :cond_0
    new-instance v14, Lcom/senseonics/bluetoothle/DialogUtils$27;

    move-object v0, v14

    move-object v1, v6

    move-object v2, v11

    move-object v3, v12

    move/from16 v4, p6

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/senseonics/bluetoothle/DialogUtils$27;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;Lnet/simonvt/datepicker/DatePicker;Lnet/simonvt/timepicker/TimePicker;ZLjava/util/Calendar;)V

    .line 1206
    invoke-virtual {v12, v14}, Lnet/simonvt/timepicker/TimePicker;->setOnTimeChangedListener(Lnet/simonvt/timepicker/TimePicker$OnTimeChangedListener;)V

    const v0, 0x7f090091

    .line 1208
    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1209
    new-instance v1, Lcom/senseonics/bluetoothle/DialogUtils$28;

    invoke-direct {v1, v6, v8}, Lcom/senseonics/bluetoothle/DialogUtils$28;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901f1

    .line 1217
    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/widget/TextView;

    .line 1218
    new-instance v15, Lcom/senseonics/bluetoothle/DialogUtils$29;

    move-object v0, v15

    move-object v1, v6

    move-object/from16 v4, p5

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/senseonics/bluetoothle/DialogUtils$29;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;Lnet/simonvt/datepicker/DatePicker;Lnet/simonvt/timepicker/TimePicker;Lcom/senseonics/util/dialogs/DateDialogManager;Landroid/app/Dialog;)V

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1239
    invoke-virtual {v7, v13}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x2

    .line 1240
    invoke-virtual {v7, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x5

    .line 1241
    invoke-virtual {v7, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 1242
    invoke-virtual {v11, v0, v1, v2, v9}, Lnet/simonvt/datepicker/DatePicker;->init(IIILnet/simonvt/datepicker/DatePicker$OnDateChangedListener;)V

    const/4 v0, 0x0

    .line 1244
    invoke-virtual {v11, v0}, Lnet/simonvt/datepicker/DatePicker;->setCalendarViewShown(Z)V

    .line 1245
    invoke-virtual/range {p3 .. p3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {v11, v0, v1}, Lnet/simonvt/datepicker/DatePicker;->setMinDate(J)V

    .line 1246
    invoke-virtual/range {p4 .. p4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {v11, v0, v1}, Lnet/simonvt/datepicker/DatePicker;->setMaxDate(J)V

    const/16 v0, 0xb

    .line 1248
    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lnet/simonvt/timepicker/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    const/16 v0, 0xc

    .line 1249
    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lnet/simonvt/timepicker/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 1251
    invoke-virtual {v8, v10}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1253
    invoke-direct {v6, v8}, Lcom/senseonics/bluetoothle/DialogUtils;->HideKeyboard(Landroid/app/Dialog;)V

    .line 1255
    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public createNotificationDialog(Landroid/content/Context;Lcom/senseonics/util/dialogs/NotificationDialogInfo;)Landroid/app/Dialog;
    .locals 12

    .line 472
    invoke-virtual {p2}, Lcom/senseonics/util/dialogs/NotificationDialogInfo;->getEventPoint()Lcom/senseonics/events/EventPoint;

    move-result-object v11

    .line 474
    invoke-virtual {p2}, Lcom/senseonics/util/dialogs/NotificationDialogInfo;->getNotificationEventType()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v0

    .line 475
    invoke-virtual {v0}, Lcom/senseonics/util/TransmitterMessageCode;->getBackgroundImage()I

    move-result v2

    .line 477
    invoke-virtual {v0}, Lcom/senseonics/util/TransmitterMessageCode;->getType()I

    move-result v1

    const-string v3, ""

    if-lez v1, :cond_0

    .line 480
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    .line 482
    :cond_0
    invoke-virtual {v0}, Lcom/senseonics/util/TransmitterMessageCode;->getTitle()I

    move-result v1

    const-string v4, ""

    if-lez v1, :cond_1

    .line 485
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0f027d

    if-ne v1, v5, :cond_1

    .line 488
    sget v1, Lcom/senseonics/util/Utils;->currentUnknownErrorCode:I

    invoke-static {p1, v4, v1}, Lcom/senseonics/util/Utils;->replaceUnknownErrorCodeString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    .line 492
    :cond_1
    iget-object v1, p0, Lcom/senseonics/bluetoothle/DialogUtils;->alertHelper:Lcom/senseonics/util/AlertHelper;

    iget-object v5, p0, Lcom/senseonics/bluetoothle/DialogUtils;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v5}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/senseonics/events/EventPoint;->getTimestamp()J

    move-result-wide v6

    invoke-virtual {v1, v0, v5, v6, v7}, Lcom/senseonics/util/AlertHelper;->getNotificationMessageText(Lcom/senseonics/util/TransmitterMessageCode;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    .line 494
    invoke-virtual {v11}, Lcom/senseonics/events/EventPoint;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v1

    .line 497
    sget-object v6, Lcom/senseonics/util/TransmitterMessageCode;->InvalidSensorAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v0, v6, :cond_2

    .line 498
    new-instance v1, Lcom/senseonics/bluetoothle/DialogUtils$7;

    invoke-direct {v1, p0, p2, p1}, Lcom/senseonics/bluetoothle/DialogUtils$7;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;Lcom/senseonics/util/dialogs/NotificationDialogInfo;Landroid/content/Context;)V

    :goto_0
    move-object v6, v1

    goto :goto_2

    .line 514
    :cond_2
    sget-object v6, Lcom/senseonics/util/TransmitterMessageCode;->SensorStability:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v0, v6, :cond_3

    .line 515
    new-instance v1, Lcom/senseonics/bluetoothle/DialogUtils$8;

    invoke-direct {v1, p0, p2, p1}, Lcom/senseonics/bluetoothle/DialogUtils$8;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;Lcom/senseonics/util/dialogs/NotificationDialogInfo;Landroid/content/Context;)V

    goto :goto_0

    .line 531
    :cond_3
    sget-object v6, Lcom/senseonics/util/TransmitterMessageCode;->SensorAwolAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v0, v6, :cond_4

    .line 532
    new-instance v1, Lcom/senseonics/bluetoothle/DialogUtils$9;

    invoke-direct {v1, p0, p2, p1}, Lcom/senseonics/bluetoothle/DialogUtils$9;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;Lcom/senseonics/util/dialogs/NotificationDialogInfo;Landroid/content/Context;)V

    goto :goto_0

    .line 549
    :cond_4
    sget-object v6, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_BLUE:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-eq v1, v6, :cond_6

    sget-object v6, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_RED:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-eq v1, v6, :cond_6

    sget-object v6, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_YELLOW:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne v1, v6, :cond_5

    goto :goto_1

    .line 569
    :cond_5
    new-instance v1, Lcom/senseonics/bluetoothle/DialogUtils$11;

    invoke-direct {v1, p0, p2, p1}, Lcom/senseonics/bluetoothle/DialogUtils$11;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;Lcom/senseonics/util/dialogs/NotificationDialogInfo;Landroid/content/Context;)V

    goto :goto_0

    .line 552
    :cond_6
    :goto_1
    new-instance v1, Lcom/senseonics/bluetoothle/DialogUtils$10;

    invoke-direct {v1, p0, p2, p1}, Lcom/senseonics/bluetoothle/DialogUtils$10;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;Lcom/senseonics/util/dialogs/NotificationDialogInfo;Landroid/content/Context;)V

    goto :goto_0

    .line 588
    :goto_2
    invoke-virtual {v0}, Lcom/senseonics/util/TransmitterMessageCode;->getRightButtonText()I

    move-result p2

    const-string v1, ""

    if-lez p2, :cond_7

    .line 591
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    move-object v8, p2

    goto :goto_3

    :cond_7
    move-object v8, v1

    :goto_3
    const p2, 0x7f0f019d

    .line 594
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 595
    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->SensorStability:Lcom/senseonics/util/TransmitterMessageCode;

    if-eq v0, v1, :cond_8

    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->InvalidSensorAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-eq v0, v1, :cond_8

    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->SensorAwolAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v0, v1, :cond_9

    :cond_8
    const p2, 0x7f0f0196

    .line 598
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_9
    move-object v7, p2

    .line 604
    invoke-virtual {v0}, Lcom/senseonics/util/TransmitterMessageCode;->getSubtitle()I

    move-result v9

    iget-object p2, p0, Lcom/senseonics/bluetoothle/DialogUtils;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 605
    invoke-static {p1, v0, p2}, Lcom/senseonics/util/TransmitterMessageCode;->getHelpString(Landroid/content/Context;Lcom/senseonics/util/TransmitterMessageCode;Lcom/senseonics/model/TransmitterStateModel;)Ljava/lang/String;

    move-result-object v10

    move-object v0, p0

    move-object v1, p1

    .line 601
    invoke-direct/range {v0 .. v11}, Lcom/senseonics/bluetoothle/DialogUtils;->showCommonNotificationDialog(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/senseonics/util/dialogs/NotificationDialogManager;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/senseonics/events/EventPoint;)Landroid/app/Dialog;

    move-result-object p1

    const/4 p2, 0x0

    .line 607
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCancelable(Z)V

    return-object p1
.end method

.method public createNotificationDialogInfo(Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;Lcom/senseonics/events/EventPoint;Lcom/senseonics/util/TransmitterMessageCode;)V
    .locals 0

    .line 462
    invoke-virtual {p0, p2, p3}, Lcom/senseonics/bluetoothle/DialogUtils;->addAPendingNotificationAlertOrAlarm(Lcom/senseonics/events/EventPoint;Lcom/senseonics/util/TransmitterMessageCode;)V

    .line 463
    invoke-virtual {p0, p1}, Lcom/senseonics/bluetoothle/DialogUtils;->showDialogs(Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;)V

    return-void
.end method

.method public createPickerDialog(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Lcom/senseonics/events/EventUtils$PickerManager;I)Landroid/app/Dialog;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Item;",
            ">;",
            "Lcom/senseonics/events/EventUtils$PickerManager;",
            "I)",
            "Landroid/app/Dialog;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move/from16 v7, p5

    .line 1392
    invoke-virtual/range {v0 .. v10}, Lcom/senseonics/bluetoothle/DialogUtils;->createPickerDialog(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/senseonics/events/EventUtils$PickerManager;Lcom/senseonics/util/dialogs/DoublePickerManager;IIZZ)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public createPickerDialog(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/senseonics/events/EventUtils$PickerManager;Lcom/senseonics/util/dialogs/DoublePickerManager;IIZZ)Landroid/app/Dialog;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Item;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Item;",
            ">;",
            "Lcom/senseonics/events/EventUtils$PickerManager;",
            "Lcom/senseonics/util/dialogs/DoublePickerManager;",
            "IIZZ)",
            "Landroid/app/Dialog;"
        }
    .end annotation

    move-object v7, p0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, p7

    .line 1402
    new-instance v8, Landroid/app/Dialog;

    const v3, 0x7f1000b8

    move-object v4, p1

    invoke-direct {v8, v4, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1403
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0b00c0

    const/4 v5, 0x0

    .line 1404
    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    const v3, 0x7f0902b6

    .line 1406
    invoke-virtual {v9, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v4, p2

    .line 1407
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f090201

    .line 1410
    invoke-virtual {v9, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lnet/simonvt/numberpicker/NumberPicker;

    .line 1411
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v5, 0x0

    .line 1412
    :goto_0
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 1413
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/senseonics/util/Item;

    invoke-virtual {v6}, Lcom/senseonics/util/Item;->getValue()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1414
    :cond_0
    invoke-virtual {v3, v10}, Lnet/simonvt/numberpicker/NumberPicker;->setMinValue(I)V

    .line 1415
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-virtual {v3, v5}, Lnet/simonvt/numberpicker/NumberPicker;->setMaxValue(I)V

    .line 1416
    invoke-virtual {v3, v4}, Lnet/simonvt/numberpicker/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    const/high16 v4, 0x60000

    .line 1417
    invoke-virtual {v3, v4}, Lnet/simonvt/numberpicker/NumberPicker;->setDescendantFocusability(I)V

    .line 1418
    invoke-virtual {v3, v10}, Lnet/simonvt/numberpicker/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 1419
    invoke-virtual {v3, v2}, Lnet/simonvt/numberpicker/NumberPicker;->setValue(I)V

    const v5, 0x7f090202

    .line 1421
    invoke-virtual {v9, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lnet/simonvt/numberpicker/NumberPicker;

    if-eqz v1, :cond_2

    .line 1423
    invoke-virtual {v5, v10}, Lnet/simonvt/numberpicker/NumberPicker;->setVisibility(I)V

    .line 1424
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    .line 1425
    :goto_1
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v12, v13, :cond_1

    .line 1426
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/senseonics/util/Item;

    invoke-virtual {v13}, Lcom/senseonics/util/Item;->getValue()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1427
    :cond_1
    invoke-virtual {v5, v10}, Lnet/simonvt/numberpicker/NumberPicker;->setMinValue(I)V

    .line 1428
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v12

    sub-int/2addr v12, v6

    invoke-virtual {v5, v12}, Lnet/simonvt/numberpicker/NumberPicker;->setMaxValue(I)V

    .line 1429
    invoke-virtual {v5, v11}, Lnet/simonvt/numberpicker/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 1430
    invoke-virtual {v5, v4}, Lnet/simonvt/numberpicker/NumberPicker;->setDescendantFocusability(I)V

    .line 1431
    invoke-virtual {v5, v10}, Lnet/simonvt/numberpicker/NumberPicker;->setWrapSelectorWheel(Z)V

    move/from16 v4, p8

    .line 1432
    invoke-virtual {v5, v4}, Lnet/simonvt/numberpicker/NumberPicker;->setValue(I)V

    :cond_2
    if-eqz p9, :cond_4

    .line 1436
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v6

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/util/Item;

    .line 1437
    invoke-virtual {v0}, Lcom/senseonics/util/Item;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 1436
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v2, v0, :cond_3

    .line 1439
    invoke-virtual {v5, v10}, Lnet/simonvt/numberpicker/NumberPicker;->setMaxValue(I)V

    .line 1440
    :cond_3
    new-instance v4, Lcom/senseonics/bluetoothle/DialogUtils$32;

    invoke-direct {v4, v7, v0, v5, v1}, Lcom/senseonics/bluetoothle/DialogUtils$32;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;ILnet/simonvt/numberpicker/NumberPicker;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Lnet/simonvt/numberpicker/NumberPicker;->setOnValueChangedListener(Lnet/simonvt/numberpicker/NumberPicker$OnValueChangeListener;)V

    :cond_4
    if-eqz p10, :cond_7

    if-nez v2, :cond_5

    .line 1458
    invoke-virtual {v5, v10}, Lnet/simonvt/numberpicker/NumberPicker;->setMaxValue(I)V

    .line 1459
    new-array v0, v6, [Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/senseonics/util/Item;

    invoke-virtual {v2}, Lcom/senseonics/util/Item;->getValue()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v10

    invoke-virtual {v5, v0}, Lnet/simonvt/numberpicker/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 1460
    invoke-virtual {v5, v10}, Lnet/simonvt/numberpicker/NumberPicker;->setValue(I)V

    goto :goto_2

    :cond_5
    const/16 v0, 0x24

    if-ne v2, v0, :cond_6

    .line 1463
    invoke-virtual {v5, v10}, Lnet/simonvt/numberpicker/NumberPicker;->setMaxValue(I)V

    .line 1464
    new-array v0, v6, [Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/senseonics/util/Item;

    invoke-virtual {v2}, Lcom/senseonics/util/Item;->getValue()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v10

    invoke-virtual {v5, v0}, Lnet/simonvt/numberpicker/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 1465
    invoke-virtual {v5, v10}, Lnet/simonvt/numberpicker/NumberPicker;->setValue(I)V

    .line 1468
    :cond_6
    :goto_2
    new-instance v0, Lcom/senseonics/bluetoothle/DialogUtils$33;

    invoke-direct {v0, v7, v5, v1}, Lcom/senseonics/bluetoothle/DialogUtils$33;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;Lnet/simonvt/numberpicker/NumberPicker;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v0}, Lnet/simonvt/numberpicker/NumberPicker;->setOnValueChangedListener(Lnet/simonvt/numberpicker/NumberPicker$OnValueChangeListener;)V

    :cond_7
    const v0, 0x7f0901f1

    .line 1489
    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/widget/TextView;

    .line 1490
    new-instance v12, Lcom/senseonics/bluetoothle/DialogUtils$34;

    move-object v0, v12

    move-object v1, v7

    move-object/from16 v2, p5

    move-object/from16 v4, p6

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/senseonics/bluetoothle/DialogUtils$34;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;Lcom/senseonics/events/EventUtils$PickerManager;Lnet/simonvt/numberpicker/NumberPicker;Lcom/senseonics/util/dialogs/DoublePickerManager;Lnet/simonvt/numberpicker/NumberPicker;Landroid/app/Dialog;)V

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090091

    .line 1504
    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1505
    new-instance v1, Lcom/senseonics/bluetoothle/DialogUtils$35;

    invoke-direct {v1, v7, v8}, Lcom/senseonics/bluetoothle/DialogUtils$35;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1512
    invoke-virtual {v8, v9}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1513
    invoke-virtual {v8, v10}, Landroid/app/Dialog;->setCancelable(Z)V

    return-object v8
.end method

.method public createPlacementDialog(Landroid/app/Activity;Lcom/senseonics/util/dialogs/PlacementDialogInfo;)Landroid/app/Dialog;
    .locals 7

    .line 146
    new-instance v0, Lcom/senseonics/bluetoothle/DialogUtils$1;

    invoke-direct {v0, p0, p2}, Lcom/senseonics/bluetoothle/DialogUtils$1;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;Lcom/senseonics/util/dialogs/PlacementDialogInfo;)V

    const p2, 0x7f0f01bb

    .line 158
    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    const v1, 0x7f0f01ba

    .line 159
    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0f029a

    .line 160
    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0f0121

    .line 161
    invoke-virtual {p1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 163
    new-instance v4, Landroid/app/Dialog;

    const v5, 0x7f1000b8

    invoke-direct {v4, p1, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 165
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v5, 0x7f0b0058

    const/4 v6, 0x0

    .line 166
    invoke-virtual {p1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v5, 0x7f0902b6

    .line 168
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 169
    invoke-virtual {v5, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x0

    .line 170
    invoke-virtual {v5, p2}, Landroid/widget/TextView;->setVisibility(I)V

    const v5, 0x7f09029c

    .line 171
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f090091

    .line 173
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 174
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    new-instance v2, Lcom/senseonics/bluetoothle/DialogUtils$2;

    invoke-direct {v2, p0, v0, v4}, Lcom/senseonics/bluetoothle/DialogUtils$2;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;Lcom/senseonics/util/dialogs/NotificationDialogManager;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0901f1

    .line 184
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 185
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    new-instance v2, Lcom/senseonics/bluetoothle/DialogUtils$3;

    invoke-direct {v2, p0, v0, v4}, Lcom/senseonics/bluetoothle/DialogUtils$3;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;Lcom/senseonics/util/dialogs/NotificationDialogManager;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    invoke-virtual {v4, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 195
    invoke-virtual {v4, p2}, Landroid/app/Dialog;->setCancelable(Z)V

    return-object v4
.end method

.method public createPredictiveRateAlertDialog(Landroid/content/Context;Lcom/senseonics/util/dialogs/PredictiveRateAlertDialogInfo;)Landroid/app/Dialog;
    .locals 12

    .line 398
    invoke-virtual {p2}, Lcom/senseonics/util/dialogs/PredictiveRateAlertDialogInfo;->getAlertEventPoint()Lcom/senseonics/events/AlertEventPoint;

    move-result-object v11

    .line 399
    invoke-virtual {v11}, Lcom/senseonics/events/AlertEventPoint;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v0

    const v1, 0x7f0f0023

    .line 402
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v1, ""

    const-string v2, ""

    .line 405
    iget-object v4, p0, Lcom/senseonics/bluetoothle/DialogUtils;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v4}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterName()Ljava/lang/String;

    move-result-object v4

    .line 407
    sget-object v5, Lcom/senseonics/util/Utils$EVENT_TYPE;->PREDICTIVE_ALERT_EVENT_FALLING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne v0, v5, :cond_0

    .line 408
    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->PredictiveLowAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    .line 409
    invoke-static {p1, v0}, Lcom/senseonics/util/TransmitterMessageCode;->getPredictiveAlertTitle(Landroid/content/Context;Lcom/senseonics/util/Utils$EVENT_TYPE;)Ljava/lang/String;

    move-result-object v2

    .line 410
    iget-object v5, p0, Lcom/senseonics/bluetoothle/DialogUtils;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 411
    invoke-virtual {v5}, Lcom/senseonics/model/TransmitterStateModel;->getPredictiveFallingRateAlertMinuteInterval()I

    move-result v5

    .line 410
    invoke-static {p1, v0, v5, v4}, Lcom/senseonics/util/TransmitterMessageCode;->getPredictiveAlertText(Landroid/content/Context;Lcom/senseonics/util/Utils$EVENT_TYPE;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v5, v0

    move-object v4, v2

    goto :goto_1

    .line 413
    :cond_0
    sget-object v5, Lcom/senseonics/util/Utils$EVENT_TYPE;->PREDICTIVE_ALERT_EVENT_RISING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne v0, v5, :cond_1

    .line 414
    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->PredictiveHighAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    .line 415
    invoke-static {p1, v0}, Lcom/senseonics/util/TransmitterMessageCode;->getPredictiveAlertTitle(Landroid/content/Context;Lcom/senseonics/util/Utils$EVENT_TYPE;)Ljava/lang/String;

    move-result-object v2

    .line 416
    iget-object v5, p0, Lcom/senseonics/bluetoothle/DialogUtils;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 417
    invoke-virtual {v5}, Lcom/senseonics/model/TransmitterStateModel;->getPredictiveRisingRateAlertMinuteInterval()I

    move-result v5

    .line 416
    invoke-static {p1, v0, v5, v4}, Lcom/senseonics/util/TransmitterMessageCode;->getPredictiveAlertText(Landroid/content/Context;Lcom/senseonics/util/Utils$EVENT_TYPE;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 419
    :cond_1
    sget-object v5, Lcom/senseonics/util/Utils$EVENT_TYPE;->RATE_ALERT_EVENT_FALLING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne v0, v5, :cond_2

    .line 420
    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->RateFallingAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    .line 421
    invoke-static {p1, v0}, Lcom/senseonics/util/TransmitterMessageCode;->getRateAlertTitle(Landroid/content/Context;Lcom/senseonics/util/Utils$EVENT_TYPE;)Ljava/lang/String;

    move-result-object v2

    .line 422
    iget-object v5, p0, Lcom/senseonics/bluetoothle/DialogUtils;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 423
    invoke-virtual {v5}, Lcom/senseonics/model/TransmitterStateModel;->getRateAlertFallingThreshold()F

    move-result v5

    .line 422
    invoke-static {p1, v0, v5, v4}, Lcom/senseonics/util/TransmitterMessageCode;->getRateAlertText(Landroid/content/Context;Lcom/senseonics/util/Utils$EVENT_TYPE;FLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 425
    :cond_2
    sget-object v5, Lcom/senseonics/util/Utils$EVENT_TYPE;->RATE_ALERT_EVENT_RISING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne v0, v5, :cond_3

    .line 426
    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->RateRisingAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    .line 427
    invoke-static {p1, v0}, Lcom/senseonics/util/TransmitterMessageCode;->getRateAlertTitle(Landroid/content/Context;Lcom/senseonics/util/Utils$EVENT_TYPE;)Ljava/lang/String;

    move-result-object v2

    .line 428
    iget-object v5, p0, Lcom/senseonics/bluetoothle/DialogUtils;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 429
    invoke-virtual {v5}, Lcom/senseonics/model/TransmitterStateModel;->getRateAlertRisingThreshold()F

    move-result v5

    .line 428
    invoke-static {p1, v0, v5, v4}, Lcom/senseonics/util/TransmitterMessageCode;->getRateAlertText(Landroid/content/Context;Lcom/senseonics/util/Utils$EVENT_TYPE;FLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    move-object v4, v1

    move-object v5, v2

    move-object v1, v0

    .line 433
    :goto_1
    new-instance v6, Lcom/senseonics/bluetoothle/DialogUtils$6;

    invoke-direct {v6, p0, p2, p1}, Lcom/senseonics/bluetoothle/DialogUtils$6;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;Lcom/senseonics/util/dialogs/PredictiveRateAlertDialogInfo;Landroid/content/Context;)V

    .line 450
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0f019d

    .line 451
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    .line 452
    invoke-virtual {v1}, Lcom/senseonics/util/TransmitterMessageCode;->getSubtitle()I

    move-result v9

    iget-object p2, p0, Lcom/senseonics/bluetoothle/DialogUtils;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 453
    invoke-static {p1, v1, p2}, Lcom/senseonics/util/TransmitterMessageCode;->getHelpString(Landroid/content/Context;Lcom/senseonics/util/TransmitterMessageCode;Lcom/senseonics/model/TransmitterStateModel;)Ljava/lang/String;

    move-result-object v10

    const v2, 0x7f080193

    move-object v0, p0

    move-object v1, p1

    .line 449
    invoke-direct/range {v0 .. v11}, Lcom/senseonics/bluetoothle/DialogUtils;->showCommonNotificationDialog(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/senseonics/util/dialogs/NotificationDialogManager;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/senseonics/events/EventPoint;)Landroid/app/Dialog;

    move-result-object p1

    const/4 p2, 0x0

    .line 455
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCancelable(Z)V

    return-object p1
.end method

.method public createPredictiveRateAlertDialogInfo(Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;Lcom/senseonics/events/AlertEventPoint;I)V
    .locals 0

    .line 386
    invoke-virtual {p0, p2, p3}, Lcom/senseonics/bluetoothle/DialogUtils;->addAPendingRateOrPredictiveRateAlertDialog(Lcom/senseonics/events/AlertEventPoint;I)V

    .line 387
    invoke-virtual {p0, p1}, Lcom/senseonics/bluetoothle/DialogUtils;->showDialogs(Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;)V

    return-void
.end method

.method public createTimePickerDialog(Landroid/content/Context;IILjava/lang/String;Lcom/senseonics/util/dialogs/TimeDialogManager;)Landroid/app/Dialog;
    .locals 4

    .line 1263
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f1000b8

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1264
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b00da

    const/4 v3, 0x0

    .line 1265
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0902af

    .line 1268
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lnet/simonvt/timepicker/TimePicker;

    const/high16 v3, 0x60000

    .line 1270
    invoke-virtual {v2, v3}, Lnet/simonvt/timepicker/TimePicker;->setDescendantFocusability(I)V

    .line 1271
    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1272
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v2, p1}, Lnet/simonvt/timepicker/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 1275
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Lnet/simonvt/timepicker/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 1276
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Lnet/simonvt/timepicker/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    const p1, 0x7f0902b6

    .line 1278
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 1279
    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f090091

    .line 1281
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 1282
    new-instance p2, Lcom/senseonics/bluetoothle/DialogUtils$30;

    invoke-direct {p2, p0, v0}, Lcom/senseonics/bluetoothle/DialogUtils$30;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;Landroid/app/Dialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0901f1

    .line 1290
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 1291
    new-instance p2, Lcom/senseonics/bluetoothle/DialogUtils$31;

    invoke-direct {p2, p0, v2, p5, v0}, Lcom/senseonics/bluetoothle/DialogUtils$31;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;Lnet/simonvt/timepicker/TimePicker;Lcom/senseonics/util/dialogs/TimeDialogManager;Landroid/app/Dialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1304
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1306
    invoke-direct {p0, v0}, Lcom/senseonics/bluetoothle/DialogUtils;->HideKeyboard(Landroid/app/Dialog;)V

    return-object v0
.end method

.method public createWarningDialog(Landroid/content/Context;Lcom/senseonics/util/dialogs/WarningDialogInfo;)Landroid/app/Dialog;
    .locals 1

    const/4 v0, 0x0

    .line 613
    invoke-virtual {p0, p1, p2, v0}, Lcom/senseonics/bluetoothle/DialogUtils;->createWarningDialog(Landroid/content/Context;Lcom/senseonics/util/dialogs/WarningDialogInfo;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public createWarningDialog(Landroid/content/Context;Lcom/senseonics/util/dialogs/WarningDialogInfo;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;
    .locals 5

    .line 618
    invoke-virtual {p2}, Lcom/senseonics/util/dialogs/WarningDialogInfo;->getImageResId()I

    move-result v0

    .line 619
    invoke-virtual {p2}, Lcom/senseonics/util/dialogs/WarningDialogInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 620
    invoke-virtual {p2}, Lcom/senseonics/util/dialogs/WarningDialogInfo;->getText()Ljava/lang/String;

    move-result-object p2

    .line 622
    new-instance v2, Landroid/app/Dialog;

    const v3, 0x7f1000b8

    invoke-direct {v2, p1, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 623
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v3, 0x7f0b0067

    const/4 v4, 0x0

    .line 624
    invoke-virtual {p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const v4, 0x7f0902b9

    .line 627
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 628
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 629
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const v1, 0x7f090150

    .line 633
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 634
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 635
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    const v0, 0x7f09029c

    .line 638
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 639
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0901f1

    .line 641
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-nez p3, :cond_2

    .line 643
    new-instance p3, Lcom/senseonics/bluetoothle/DialogUtils$12;

    invoke-direct {p3, p0, v2}, Lcom/senseonics/bluetoothle/DialogUtils$12;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;Landroid/app/Dialog;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 652
    :cond_2
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 655
    :goto_0
    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 656
    invoke-virtual {v2, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    return-object v2
.end method

.method public fireDoNotDisturbAlertDialog(Landroid/content/Context;Z)V
    .locals 7

    if-eqz p2, :cond_0

    const v2, 0x7f0f00bd

    const v3, 0x7f0f00bc

    const v4, 0x7f0f019d

    const v5, 0x7f0f0228

    .line 849
    const-class v6, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/senseonics/bluetoothle/DialogUtils;->createDoNotDisturbAlertDialog(Landroid/content/Context;IIIILjava/lang/Class;)V

    :cond_0
    return-void
.end method

.method public fireTempProfileTurnedOffPopup(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 7

    .line 780
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->tempProfileManager:Lcom/senseonics/bluetoothle/TempProfileManager;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/TempProfileManager;->getTempProfileHasPendingPopup()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 781
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->tempProfileManager:Lcom/senseonics/bluetoothle/TempProfileManager;

    invoke-virtual {v0, v2}, Lcom/senseonics/bluetoothle/TempProfileManager;->setTempProfileHasPendingPopup(Z)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 785
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_1
    const v2, 0x7f0f0250

    const v3, 0x7f0f024f

    const v4, 0x7f0f019d

    const v5, 0x7f0f024e

    .line 786
    const-class v6, Lcom/senseonics/gen12androidapp/TempGlucoseProfileActivity;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/senseonics/bluetoothle/DialogUtils;->createTempProfileTurnedOffPopup(Landroid/content/Context;IIIILjava/lang/Class;)V

    :cond_2
    return-void
.end method

.method public fireUpdateAppPopup(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    const v2, 0x7f0f002f

    const v3, 0x7f0f002e

    const v4, 0x7f0f0186

    const v5, 0x7f0f029a

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    .line 711
    invoke-direct/range {v0 .. v6}, Lcom/senseonics/bluetoothle/DialogUtils;->createUpdateAppPopup(Landroid/content/Context;IIIILjava/lang/String;)V

    return-void
.end method

.method public getDecimalsBetween(III)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Item;",
            ">;"
        }
    .end annotation

    .line 1368
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-gt p1, p2, :cond_0

    .line 1370
    new-instance v1, Lcom/senseonics/util/Item;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/senseonics/util/Item;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr p1, p3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getGlucoseLevels(FFF)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFF)",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Item;",
            ">;"
        }
    .end annotation

    .line 1328
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    float-to-double v0, p1

    float-to-double p1, p2

    :goto_0
    cmpg-double v2, v0, p1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gez v2, :cond_0

    .line 1335
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%.1f"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v3

    invoke-static {v2, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getGlucoseLevels"

    .line 1336
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "formatted:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    new-instance v3, Lcom/senseonics/util/Item;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v3, v4, v2}, Lcom/senseonics/util/Item;-><init>(ILjava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide v2, 0x3fb999999999999aL    # 0.1

    add-double/2addr v0, v2

    goto :goto_0

    .line 1340
    :cond_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1341
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/util/Item;

    invoke-virtual {v0}, Lcom/senseonics/util/Item;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 1342
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%.1f"

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v1, v2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1343
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1344
    new-instance v0, Lcom/senseonics/util/Item;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%.1f"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, v4, v3

    invoke-static {v2, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/senseonics/util/Item;-><init>(ILjava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p3
.end method

.method public getGlucoseLevels(III)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Item;",
            ">;"
        }
    .end annotation

    .line 1319
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1320
    invoke-virtual {p0, p1, p2, p3}, Lcom/senseonics/bluetoothle/DialogUtils;->getNumbersBetween(III)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getGlucoseValueMg(Ljava/lang/String;)I
    .locals 1

    .line 1376
    invoke-virtual {p0, p1}, Lcom/senseonics/bluetoothle/DialogUtils;->isFloat(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1377
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p1}, Lcom/senseonics/util/Convert;->MLConvertMmolToMg(F)I

    move-result p1

    return p1

    .line 1379
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getNumbersBetween(III)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Item;",
            ">;"
        }
    .end annotation

    .line 1352
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-gt p1, p2, :cond_0

    .line 1354
    new-instance v1, Lcom/senseonics/util/Item;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/senseonics/util/Item;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr p1, p3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getNumbersBetweenWithSuffix(IIILjava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Item;",
            ">;"
        }
    .end annotation

    .line 1360
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-gt p1, p2, :cond_0

    .line 1362
    new-instance v1, Lcom/senseonics/util/Item;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/senseonics/util/Item;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr p1, p3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public isFloat(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "."

    .line 1383
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public removeDialogs()V
    .locals 7

    .line 218
    const-class v0, Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removing dialogs, staring size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/senseonics/bluetoothle/DialogUtils;->customDialogs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 221
    iget-object v1, p0, Lcom/senseonics/bluetoothle/DialogUtils;->customDialogs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/senseonics/util/dialogs/CustomDialogInfo;

    .line 222
    invoke-virtual {v2}, Lcom/senseonics/util/dialogs/CustomDialogInfo;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 223
    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 231
    :cond_0
    const-class v2, Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "dismiss showing dialog "

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    .line 225
    const-class v4, Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " preserving dialog, is showing: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 227
    :cond_2
    const-class v3, Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "preserve pending dialaog, it\'s null "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :goto_2
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 236
    :cond_3
    iget-object v1, p0, Lcom/senseonics/bluetoothle/DialogUtils;->customDialogs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 237
    iget-object v1, p0, Lcom/senseonics/bluetoothle/DialogUtils;->customDialogs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 239
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->moreThanMaxAlertDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_4

    .line 240
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->moreThanMaxAlertDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_4
    return-void
.end method

.method public removeOtherDialogs()V
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->moreThanMaxAlertDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->moreThanMaxAlertDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->moreThanMaxAlertDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->doNotDisturbAlertDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->doNotDisturbAlertDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->doNotDisturbAlertDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->tempProfileAlertDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->tempProfileAlertDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 209
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->tempProfileAlertDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 212
    :cond_2
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->appUpdateDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->appUpdateDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 213
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->appUpdateDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_3
    return-void
.end method

.method public showDialogs(Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;)V
    .locals 9

    const-string v0, "DIALOGS SIZE"

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---------------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/senseonics/bluetoothle/DialogUtils;->customDialogs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "^^^^^^^^^^^^^^^^^^^^^^^^^^"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->customDialogs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 101
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->customDialogs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/senseonics/util/dialogs/CustomDialogInfo;

    .line 103
    invoke-virtual {v1}, Lcom/senseonics/util/dialogs/CustomDialogInfo;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 105
    :try_start_0
    const-class v2, Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "try to dismiss existing dialog ---- "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {v1}, Lcom/senseonics/util/dialogs/CustomDialogInfo;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 108
    :catch_0
    const-class v2, Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Close dialog ---- "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_0
    :goto_1
    sget-object v2, Lcom/senseonics/bluetoothle/DialogUtils$36;->$SwitchMap$com$senseonics$util$dialogs$CustomDialogInfo$DIALOG_TYPE:[I

    invoke-virtual {v1}, Lcom/senseonics/util/dialogs/CustomDialogInfo;->getDialogType()Lcom/senseonics/util/dialogs/CustomDialogInfo$DIALOG_TYPE;

    move-result-object v3

    invoke-virtual {v3}, Lcom/senseonics/util/dialogs/CustomDialogInfo$DIALOG_TYPE;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_2

    .line 122
    :pswitch_0
    move-object v2, v1

    check-cast v2, Lcom/senseonics/util/dialogs/NotificationDialogInfo;

    invoke-virtual {p0, p1, v2}, Lcom/senseonics/bluetoothle/DialogUtils;->createNotificationDialog(Landroid/content/Context;Lcom/senseonics/util/dialogs/NotificationDialogInfo;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/senseonics/util/dialogs/CustomDialogInfo;->setDialog(Landroid/app/Dialog;)V

    goto :goto_2

    .line 119
    :pswitch_1
    move-object v2, v1

    check-cast v2, Lcom/senseonics/util/dialogs/PredictiveRateAlertDialogInfo;

    invoke-virtual {p0, p1, v2}, Lcom/senseonics/bluetoothle/DialogUtils;->createPredictiveRateAlertDialog(Landroid/content/Context;Lcom/senseonics/util/dialogs/PredictiveRateAlertDialogInfo;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/senseonics/util/dialogs/CustomDialogInfo;->setDialog(Landroid/app/Dialog;)V

    goto :goto_2

    .line 116
    :pswitch_2
    move-object v2, v1

    check-cast v2, Lcom/senseonics/util/dialogs/CalibrateDialogInfo;

    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->provideCalibrationDialogManager()Lcom/senseonics/util/dialogs/NotificationDialogManager;

    move-result-object v3

    invoke-virtual {p0, p1, v2, v3}, Lcom/senseonics/bluetoothle/DialogUtils;->createCalibrateDialog(Landroid/content/Context;Lcom/senseonics/util/dialogs/CalibrateDialogInfo;Lcom/senseonics/util/dialogs/NotificationDialogManager;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/senseonics/util/dialogs/CustomDialogInfo;->setDialog(Landroid/app/Dialog;)V

    goto :goto_2

    .line 113
    :pswitch_3
    move-object v2, v1

    check-cast v2, Lcom/senseonics/util/dialogs/AlertDialogInfo;

    invoke-virtual {p0, p1, v2}, Lcom/senseonics/bluetoothle/DialogUtils;->createAlertDialog(Landroid/content/Context;Lcom/senseonics/util/dialogs/AlertDialogInfo;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/senseonics/util/dialogs/CustomDialogInfo;->setDialog(Landroid/app/Dialog;)V

    .line 127
    :goto_2
    invoke-virtual {v1}, Lcom/senseonics/util/dialogs/CustomDialogInfo;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    .line 128
    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_1

    .line 129
    const-class v3, Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "show dialog --- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 132
    :cond_1
    const-class v3, Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hide/show "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-virtual {v2}, Landroid/app/Dialog;->hide()V

    .line 134
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 138
    :cond_2
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->customDialogs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    const v4, 0x7f0f0026

    const v5, 0x7f0f0175

    const v6, 0x7f0f028d

    const v7, 0x7f0f00b8

    .line 139
    const-class v8, Lcom/senseonics/gen12androidapp/NotificationsActivity;

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/senseonics/bluetoothle/DialogUtils;->createMoreThanMaxAlertDialog(Landroid/content/Context;IIIILjava/lang/Class;)V

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
