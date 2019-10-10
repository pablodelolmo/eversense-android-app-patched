.class Lcom/senseonics/gen12androidapp/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/senseonics/fragments/SettingsFragment$SettingsManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/gen12androidapp/MainActivity;
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

    .line 100
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MainActivity$2;->this$0:Lcom/senseonics/gen12androidapp/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public redirectToMainActivity()V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity$2;->this$0:Lcom/senseonics/gen12androidapp/MainActivity;

    iget-object v0, v0, Lcom/senseonics/gen12androidapp/MainActivity;->drawerMenu:Lcom/senseonics/view/DrawerMenu/DrawerMenu;

    sget-object v1, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;->HOME:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    invoke-virtual {v0, v1}, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->selectItem(Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;)V

    return-void
.end method
