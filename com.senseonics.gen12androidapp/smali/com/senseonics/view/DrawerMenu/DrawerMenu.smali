.class public Lcom/senseonics/view/DrawerMenu/DrawerMenu;
.super Ljava/lang/Object;
.source "DrawerMenu.java"

# interfaces
.implements Lcom/senseonics/account/UserProfilePresenter$UserProfileView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/view/DrawerMenu/DrawerMenu$DrawerMenuCallback;
    }
.end annotation


# static fields
.field private static currentMenu:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

.field private static previousMenu:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;


# instance fields
.field private activity:Landroid/app/Activity;

.field private callback:Lcom/senseonics/view/DrawerMenu/DrawerMenu$DrawerMenuCallback;

.field private drawerLayout:Landroid/support/v4/widget/DrawerLayout;

.field private drawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

.field private menuItemList:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/senseonics/view/DrawerMenu/MenuModel;",
            ">;"
        }
    .end annotation
.end field

.field private model:Lcom/senseonics/model/TransmitterStateModel;

.field private scrollView:Landroid/widget/ScrollView;

.field private swipeRefreshLayout:Lcom/senseonics/view/DrawerMenu/MultiSwipeRefreshLayout;

.field private userImage:Lde/hdodenhof/circleimageview/CircleImageView;

.field private userProfileDivider:Landroid/view/View;

.field private userProfileLayout:Landroid/widget/RelativeLayout;

.field private userProfilePresenter:Lcom/senseonics/account/UserProfilePresenter;

.field private username:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    sget-object v0, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;->HOME:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    sput-object v0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->currentMenu:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    .line 48
    sget-object v0, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;->HOME:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    sput-object v0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->previousMenu:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/senseonics/account/UserProfilePresenter;Lcom/senseonics/model/TransmitterStateModel;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->activity:Landroid/app/Activity;

    .line 59
    iput-object p2, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->userProfilePresenter:Lcom/senseonics/account/UserProfilePresenter;

    .line 60
    iput-object p3, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->model:Lcom/senseonics/model/TransmitterStateModel;

    return-void
.end method

.method static synthetic access$000(Lcom/senseonics/view/DrawerMenu/DrawerMenu;)Landroid/widget/ScrollView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->scrollView:Landroid/widget/ScrollView;

    return-object p0
.end method

.method static synthetic access$100()Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;
    .locals 1

    .line 37
    sget-object v0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->currentMenu:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    return-object v0
.end method

.method static synthetic access$200(Lcom/senseonics/view/DrawerMenu/DrawerMenu;)Lcom/senseonics/view/DrawerMenu/DrawerMenu$DrawerMenuCallback;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->callback:Lcom/senseonics/view/DrawerMenu/DrawerMenu$DrawerMenuCallback;

    return-object p0
.end method

.method static synthetic access$300(Lcom/senseonics/view/DrawerMenu/DrawerMenu;)Lcom/senseonics/model/TransmitterStateModel;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->model:Lcom/senseonics/model/TransmitterStateModel;

    return-object p0
.end method

.method static synthetic access$400(Lcom/senseonics/view/DrawerMenu/DrawerMenu;Z)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->enableBluetoothMenuItems(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/senseonics/view/DrawerMenu/DrawerMenu;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->refreshMenuItemLayouts()V

    return-void
.end method

.method private enableBluetoothMenuItems(Z)V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->menuItemList:Ljava/util/LinkedHashMap;

    const-string v1, "drawer_menu_calibrate"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/view/DrawerMenu/MenuModel;

    invoke-virtual {v0, p1}, Lcom/senseonics/view/DrawerMenu/MenuModel;->setActive(Z)V

    .line 81
    iget-object v0, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->menuItemList:Ljava/util/LinkedHashMap;

    const-string v1, "drawer_menu_placement"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/view/DrawerMenu/MenuModel;

    invoke-virtual {v0, p1}, Lcom/senseonics/view/DrawerMenu/MenuModel;->setActive(Z)V

    return-void
.end method

.method private initializeDrawerMenu()V
    .locals 7

    .line 182
    iget-object v0, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/senseonics/view/DrawerMenu/DrawerItems;->getMenuItems(Landroid/app/Activity;)Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->menuItemList:Ljava/util/LinkedHashMap;

    .line 184
    iget-object v0, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->activity:Landroid/app/Activity;

    const v1, 0x7f0900ea

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    iput-object v0, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    .line 185
    iget-object v0, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->activity:Landroid/app/Activity;

    const v1, 0x7f090187

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->scrollView:Landroid/widget/ScrollView;

    .line 187
    iget-object v0, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->activity:Landroid/app/Activity;

    const v1, 0x7f090277

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/senseonics/view/DrawerMenu/MultiSwipeRefreshLayout;

    iput-object v0, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->swipeRefreshLayout:Lcom/senseonics/view/DrawerMenu/MultiSwipeRefreshLayout;

    .line 188
    iget-object v0, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->swipeRefreshLayout:Lcom/senseonics/view/DrawerMenu/MultiSwipeRefreshLayout;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Lcom/senseonics/view/DrawerMenu/MultiSwipeRefreshLayout;->setSwipeableChildren([I)V

    .line 190
    iget-object v0, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->activity:Landroid/app/Activity;

    const v1, 0x7f0902e3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->userProfileLayout:Landroid/widget/RelativeLayout;

    .line 191
    iget-object v0, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->activity:Landroid/app/Activity;

    const v1, 0x7f0902e2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->userProfileDivider:Landroid/view/View;

    .line 194
    iget-object v0, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->swipeRefreshLayout:Lcom/senseonics/view/DrawerMenu/MultiSwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/senseonics/view/DrawerMenu/MultiSwipeRefreshLayout;->setEnabled(Z)V

    .line 195
    iget-object v0, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->userProfileLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->userProfileDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->enableBluetoothMenuItems(Z)V

    .line 201
    new-instance v0, Lcom/senseonics/view/DrawerMenu/DrawerMenu$1;

    iget-object v3, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->activity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const v5, 0x7f0f00ca

    const v6, 0x7f0f00c9

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/senseonics/view/DrawerMenu/DrawerMenu$1;-><init>(Lcom/senseonics/view/DrawerMenu/DrawerMenu;Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;II)V

    iput-object v0, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->drawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    .line 214
    iget-object v0, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->drawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->addDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 215
    invoke-direct {p0}, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->refreshMenuItemLayouts()V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f090187
        0x1020004
    .end array-data
.end method

.method private refreshMenuItemLayouts()V
    .locals 8

    .line 219
    iget-object v0, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->menuItemList:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 220
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/senseonics/view/DrawerMenu/MenuModel;

    .line 221
    invoke-virtual {v2}, Lcom/senseonics/view/DrawerMenu/MenuModel;->isActive()Z

    move-result v3

    .line 222
    sget-object v4, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->currentMenu:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    invoke-virtual {v2}, Lcom/senseonics/view/DrawerMenu/MenuModel;->getMenuType()Ljava/lang/Object;

    move-result-object v5

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    .line 224
    :goto_1
    iget-object v5, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v6, "id"

    iget-object v7, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->activity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v1, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 225
    iget-object v5, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->activity:Landroid/app/Activity;

    invoke-virtual {v5, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v5, 0x7f090150

    .line 227
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 228
    invoke-virtual {v2}, Lcom/senseonics/view/DrawerMenu/MenuModel;->getDrawableId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz v3, :cond_1

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_1
    const v6, 0x3e851eb8    # 0.26f

    .line 229
    :goto_2
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    const v5, 0x7f090295

    .line 231
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 232
    invoke-virtual {v2}, Lcom/senseonics/view/DrawerMenu/MenuModel;->getMenuName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    iget-object v6, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->activity:Landroid/app/Activity;

    if-eqz v3, :cond_2

    const v7, 0x7f06001e

    goto :goto_3

    :cond_2
    const v7, 0x7f060067

    :goto_3
    invoke-static {v6, v7}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 235
    iget-object v5, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->activity:Landroid/app/Activity;

    if-eqz v4, :cond_3

    const v4, 0x7f06005e

    goto :goto_4

    :cond_3
    const v4, 0x7f06009c

    :goto_4
    invoke-static {v5, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    if-eqz v3, :cond_4

    .line 237
    new-instance v3, Lcom/senseonics/view/DrawerMenu/DrawerMenu$2;

    invoke-direct {v3, p0, v2}, Lcom/senseonics/view/DrawerMenu/DrawerMenu$2;-><init>(Lcom/senseonics/view/DrawerMenu/DrawerMenu;Lcom/senseonics/view/DrawerMenu/MenuModel;)V

    goto :goto_5

    :cond_4
    const/4 v3, 0x0

    :goto_5
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :cond_5
    return-void
.end method


# virtual methods
.method public attachDrawer()V
    .locals 0

    return-void
.end method

.method public closeDrawer()V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    return-void
.end method

.method public detachDrawer()V
    .locals 0

    return-void
.end method

.method public displayProfileNameAndImage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->username:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object p1, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->activity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->userImage:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-static {p1, p2, v0}, Lcom/senseonics/view/GlideHelper;->loadImageIntoView(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void
.end method

.method public getCurrentMenu()Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;
    .locals 1

    .line 101
    sget-object v0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->currentMenu:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    return-object v0
.end method

.method public getDrawerToggle()Landroid/support/v7/app/ActionBarDrawerToggle;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->drawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    return-object v0
.end method

.method public getPreviousMenu()Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;
    .locals 1

    .line 97
    sget-object v0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->previousMenu:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    return-object v0
.end method

.method public hideProgress()V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->swipeRefreshLayout:Lcom/senseonics/view/DrawerMenu/MultiSwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/senseonics/view/DrawerMenu/MultiSwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method

.method public openDrawer()V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(I)V

    return-void
.end method

.method public refreshBluetoothMenuItem()V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->enableBluetoothMenuItems(Z)V

    .line 106
    invoke-direct {p0}, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->refreshMenuItemLayouts()V

    return-void
.end method

.method public selectItem(Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;)V
    .locals 1

    .line 85
    sget-object v0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->currentMenu:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    sput-object v0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->previousMenu:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    .line 86
    sput-object p1, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->currentMenu:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    .line 87
    invoke-direct {p0}, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->refreshMenuItemLayouts()V

    .line 89
    iget-object p1, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const v0, 0x800003

    invoke-virtual {p1, v0}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->closeDrawer()V

    goto :goto_0

    .line 92
    :cond_0
    iget-object p1, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->callback:Lcom/senseonics/view/DrawerMenu/DrawerMenu$DrawerMenuCallback;

    sget-object v0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->currentMenu:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    invoke-interface {p1, v0}, Lcom/senseonics/view/DrawerMenu/DrawerMenu$DrawerMenuCallback;->onItemSelected(Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;)V

    :goto_0
    return-void
.end method

.method public setItemSelectedListener(Lcom/senseonics/view/DrawerMenu/DrawerMenu$DrawerMenuCallback;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->callback:Lcom/senseonics/view/DrawerMenu/DrawerMenu$DrawerMenuCallback;

    return-void
.end method

.method public setupDrawer()V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->initializeDrawerMenu()V

    return-void
.end method

.method public setupProfileViews(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->activity:Landroid/app/Activity;

    const v1, 0x7f0902e4

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->username:Landroid/widget/TextView;

    .line 150
    iget-object v0, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->activity:Landroid/app/Activity;

    const v1, 0x7f0902e5

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lde/hdodenhof/circleimageview/CircleImageView;

    iput-object v0, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->userImage:Lde/hdodenhof/circleimageview/CircleImageView;

    .line 151
    iget-object v0, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->swipeRefreshLayout:Lcom/senseonics/view/DrawerMenu/MultiSwipeRefreshLayout;

    invoke-virtual {v0, p1}, Lcom/senseonics/view/DrawerMenu/MultiSwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 152
    iget-object p1, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->userProfileLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public showDialog(IIILcom/senseonics/view/SimpleDialogFragment$OnDismissListener;Z)V
    .locals 6

    .line 161
    new-instance v0, Lcom/senseonics/view/SimpleDialogFragment$Builder;

    invoke-direct {v0}, Lcom/senseonics/view/SimpleDialogFragment$Builder;-><init>()V

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 162
    invoke-virtual/range {v0 .. v5}, Lcom/senseonics/view/SimpleDialogFragment$Builder;->buildDialog(IIILcom/senseonics/view/SimpleDialogFragment$OnDismissListener;Z)Lcom/senseonics/view/SimpleDialogFragment;

    move-result-object p1

    iget-object p2, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->activity:Landroid/app/Activity;

    .line 163
    invoke-virtual {p2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p2

    const-string p3, "DIALOG_TAG"

    invoke-virtual {p1, p2, p3}, Lcom/senseonics/view/SimpleDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public showDialogWithCustomButtons(IIILcom/senseonics/view/SimpleDialogFragment$OnDismissListener;ZII)V
    .locals 0

    return-void
.end method

.method public showDialogWithCustomMessage(ILjava/lang/String;ILcom/senseonics/view/SimpleDialogFragment$OnDismissListener;Z)V
    .locals 0

    return-void
.end method

.method public showDialogWithTitleBold(IZIILcom/senseonics/view/SimpleDialogFragment$OnDismissListener;Z)V
    .locals 0

    return-void
.end method

.method public showProfileImageSelector()V
    .locals 4

    .line 134
    iget-object v0, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->activity:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->activity:Landroid/app/Activity;

    const-class v3, Lcom/senseonics/account/ProfileImageSelectActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public showProgress()V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->swipeRefreshLayout:Lcom/senseonics/view/DrawerMenu/MultiSwipeRefreshLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/senseonics/view/DrawerMenu/MultiSwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method
