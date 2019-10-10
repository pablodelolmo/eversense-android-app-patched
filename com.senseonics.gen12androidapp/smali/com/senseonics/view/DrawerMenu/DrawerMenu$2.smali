.class Lcom/senseonics/view/DrawerMenu/DrawerMenu$2;
.super Ljava/lang/Object;
.source "DrawerMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/view/DrawerMenu/DrawerMenu;->refreshMenuItemLayouts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/view/DrawerMenu/DrawerMenu;

.field final synthetic val$menuItem:Lcom/senseonics/view/DrawerMenu/MenuModel;


# direct methods
.method constructor <init>(Lcom/senseonics/view/DrawerMenu/DrawerMenu;Lcom/senseonics/view/DrawerMenu/MenuModel;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu$2;->this$0:Lcom/senseonics/view/DrawerMenu/DrawerMenu;

    iput-object p2, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu$2;->val$menuItem:Lcom/senseonics/view/DrawerMenu/MenuModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 240
    iget-object p1, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu$2;->this$0:Lcom/senseonics/view/DrawerMenu/DrawerMenu;

    iget-object v0, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu$2;->val$menuItem:Lcom/senseonics/view/DrawerMenu/MenuModel;

    invoke-virtual {v0}, Lcom/senseonics/view/DrawerMenu/MenuModel;->getMenuType()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    invoke-virtual {p1, v0}, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->selectItem(Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;)V

    return-void
.end method
