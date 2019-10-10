.class Lcom/senseonics/gen12androidapp/MainActivity$8;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/senseonics/util/dialogs/NotificationDialogManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/gen12androidapp/MainActivity;->provideCalibrationDialogManager()Lcom/senseonics/util/dialogs/NotificationDialogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/gen12androidapp/MainActivity;


# direct methods
.method constructor <init>(Lcom/senseonics/gen12androidapp/MainActivity;)V
    .locals 0

    .line 627
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MainActivity$8;->this$0:Lcom/senseonics/gen12androidapp/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public leftButtonPressed()V
    .locals 0

    return-void
.end method

.method public rightButtonPressed()V
    .locals 2

    .line 631
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity$8;->this$0:Lcom/senseonics/gen12androidapp/MainActivity;

    invoke-static {v0}, Lcom/senseonics/util/Utils;->checkIfInitialLaunch(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 632
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity$8;->this$0:Lcom/senseonics/gen12androidapp/MainActivity;

    iget-object v0, v0, Lcom/senseonics/gen12androidapp/MainActivity;->drawerMenu:Lcom/senseonics/view/DrawerMenu/DrawerMenu;

    sget-object v1, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;->CALIBRATE:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    invoke-virtual {v0, v1}, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->selectItem(Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;)V

    :cond_0
    return-void
.end method
