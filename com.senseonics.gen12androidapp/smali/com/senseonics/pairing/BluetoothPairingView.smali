.class public Lcom/senseonics/pairing/BluetoothPairingView;
.super Landroid/widget/RelativeLayout;
.source "BluetoothPairingView.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final adapter:Lcom/senseonics/pairing/BluetoothTransmitterAdapter;

.field arrowConnect:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090062
    .end annotation
.end field

.field private bus:Lde/greenrobot/event/EventBus;

.field connectHtmlInitialText:Ljava/lang/String;
    .annotation build Lbutterknife/BindString;
        value = 0x7f0f025c
    .end annotation
.end field

.field connectHtmlText:Ljava/lang/String;
    .annotation build Lbutterknife/BindString;
        value = 0x7f0f025b
    .end annotation
.end field

.field connectLayout:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902b3
    .end annotation
.end field

.field connectTextViewLayout:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902b5
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field listView:Landroid/widget/ListView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090185
    .end annotation
.end field

.field pairTitleTextView:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901f8
    .end annotation
.end field

.field private refreshButton:Landroid/widget/ImageButton;

.field tipsTextView:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902b4
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lde/greenrobot/event/EventBus;Lcom/senseonics/pairing/BluetoothTransmitterAdapter;Landroid/widget/ImageButton;ZLandroid/app/Activity;)V
    .locals 1
    .param p4    # Landroid/widget/ImageButton;
        .annotation runtime Ljavax/inject/Named;
            value = "REFRESH_BUTTON"
        .end annotation
    .end param
    .param p5    # Z
        .annotation runtime Ljavax/inject/Named;
            value = "IS_FIRST_RUN"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 64
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 65
    iput-object p6, p0, Lcom/senseonics/pairing/BluetoothPairingView;->activity:Landroid/app/Activity;

    const p6, 0x7f0b0071

    .line 66
    invoke-static {p1, p6, p0}, Lcom/senseonics/pairing/BluetoothPairingView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 67
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/view/View;)Lbutterknife/Unbinder;

    .line 69
    iput-object p1, p0, Lcom/senseonics/pairing/BluetoothPairingView;->context:Landroid/content/Context;

    .line 70
    iput-object p2, p0, Lcom/senseonics/pairing/BluetoothPairingView;->bus:Lde/greenrobot/event/EventBus;

    .line 71
    iput-object p3, p0, Lcom/senseonics/pairing/BluetoothPairingView;->adapter:Lcom/senseonics/pairing/BluetoothTransmitterAdapter;

    .line 72
    iput-object p4, p0, Lcom/senseonics/pairing/BluetoothPairingView;->refreshButton:Landroid/widget/ImageButton;

    .line 74
    invoke-direct {p0}, Lcom/senseonics/pairing/BluetoothPairingView;->checkPermissionsIfNeeded()V

    const/4 p6, 0x0

    .line 76
    invoke-virtual {p4, p6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 77
    new-instance v0, Lcom/senseonics/pairing/BluetoothPairingView$1;

    invoke-direct {v0, p0}, Lcom/senseonics/pairing/BluetoothPairingView$1;-><init>(Lcom/senseonics/pairing/BluetoothPairingView;)V

    invoke-virtual {p4, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object p4, p0, Lcom/senseonics/pairing/BluetoothPairingView;->listView:Landroid/widget/ListView;

    invoke-virtual {p4, p3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 85
    iget-object p4, p0, Lcom/senseonics/pairing/BluetoothPairingView;->listView:Landroid/widget/ListView;

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    invoke-virtual {p4, v0, p1, p6}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 86
    iget-object p1, p0, Lcom/senseonics/pairing/BluetoothPairingView;->listView:Landroid/widget/ListView;

    new-instance p4, Lcom/senseonics/pairing/BluetoothPairingView$2;

    invoke-direct {p4, p0, p2, p3}, Lcom/senseonics/pairing/BluetoothPairingView$2;-><init>(Lcom/senseonics/pairing/BluetoothPairingView;Lde/greenrobot/event/EventBus;Lcom/senseonics/pairing/BluetoothTransmitterAdapter;)V

    invoke-virtual {p1, p4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 93
    invoke-direct {p0, p5}, Lcom/senseonics/pairing/BluetoothPairingView;->initBottomLayout(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/senseonics/pairing/BluetoothPairingView;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/senseonics/pairing/BluetoothPairingView;->checkPermissionsIfNeeded()V

    return-void
.end method

.method private checkPermissionsIfNeeded()V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/senseonics/pairing/BluetoothPairingView;->activity:Landroid/app/Activity;

    check-cast v0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->checkPermissionsIfNeeded()V

    return-void
.end method

.method private initBottomLayout(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 123
    iget-object p1, p0, Lcom/senseonics/pairing/BluetoothPairingView;->pairTitleTextView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    iget-object p1, p0, Lcom/senseonics/pairing/BluetoothPairingView;->connectHtmlInitialText:Ljava/lang/String;

    goto :goto_0

    .line 126
    :cond_0
    iget-object p1, p0, Lcom/senseonics/pairing/BluetoothPairingView;->pairTitleTextView:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 127
    iget-object p1, p0, Lcom/senseonics/pairing/BluetoothPairingView;->connectHtmlText:Ljava/lang/String;

    .line 129
    :goto_0
    iget-object v0, p0, Lcom/senseonics/pairing/BluetoothPairingView;->tipsTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object p1, p0, Lcom/senseonics/pairing/BluetoothPairingView;->connectLayout:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/senseonics/pairing/BluetoothPairingView$3;

    invoke-direct {v0, p0}, Lcom/senseonics/pairing/BluetoothPairingView$3;-><init>(Lcom/senseonics/pairing/BluetoothPairingView;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public beginRefreshButtonAnimation()V
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/senseonics/pairing/BluetoothPairingView;->context:Landroid/content/Context;

    const v1, 0x7f010013

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/senseonics/pairing/BluetoothPairingView;->refreshButton:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 103
    iget-object v1, p0, Lcom/senseonics/pairing/BluetoothPairingView;->refreshButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 104
    iget-object v0, p0, Lcom/senseonics/pairing/BluetoothPairingView;->refreshButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    return-void
.end method

.method public refreshList()V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/senseonics/pairing/BluetoothPairingView;->adapter:Lcom/senseonics/pairing/BluetoothTransmitterAdapter;

    invoke-virtual {v0}, Lcom/senseonics/pairing/BluetoothTransmitterAdapter;->refreshList()V

    return-void
.end method

.method public setDevices(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/senseonics/bluetoothle/Transmitter;",
            ">;)V"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/senseonics/pairing/BluetoothPairingView;->adapter:Lcom/senseonics/pairing/BluetoothTransmitterAdapter;

    invoke-virtual {v0, p1}, Lcom/senseonics/pairing/BluetoothTransmitterAdapter;->setDevices(Ljava/util/List;)V

    return-void
.end method

.method public stopRefreshButtonAnimation()V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/senseonics/pairing/BluetoothPairingView;->refreshButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->clearAnimation()V

    .line 109
    iget-object v0, p0, Lcom/senseonics/pairing/BluetoothPairingView;->refreshButton:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    return-void
.end method
