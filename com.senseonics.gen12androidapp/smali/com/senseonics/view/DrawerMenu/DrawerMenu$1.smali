.class Lcom/senseonics/view/DrawerMenu/DrawerMenu$1;
.super Landroid/support/v7/app/ActionBarDrawerToggle;
.source "DrawerMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/view/DrawerMenu/DrawerMenu;->initializeDrawerMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/view/DrawerMenu/DrawerMenu;


# direct methods
.method constructor <init>(Lcom/senseonics/view/DrawerMenu/DrawerMenu;Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;II)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu$1;->this$0:Lcom/senseonics/view/DrawerMenu/DrawerMenu;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/support/v7/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;II)V

    return-void
.end method


# virtual methods
.method public onDrawerClosed(Landroid/view/View;)V
    .locals 1

    .line 204
    iget-object p1, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu$1;->this$0:Lcom/senseonics/view/DrawerMenu/DrawerMenu;

    invoke-static {p1}, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->access$000(Lcom/senseonics/view/DrawerMenu/DrawerMenu;)Landroid/widget/ScrollView;

    move-result-object p1

    const/16 v0, 0x21

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 205
    iget-object p1, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu$1;->this$0:Lcom/senseonics/view/DrawerMenu/DrawerMenu;

    invoke-static {p1}, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->access$200(Lcom/senseonics/view/DrawerMenu/DrawerMenu;)Lcom/senseonics/view/DrawerMenu/DrawerMenu$DrawerMenuCallback;

    move-result-object p1

    invoke-static {}, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->access$100()Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/senseonics/view/DrawerMenu/DrawerMenu$DrawerMenuCallback;->onItemSelected(Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;)V

    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 1

    .line 210
    iget-object p1, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu$1;->this$0:Lcom/senseonics/view/DrawerMenu/DrawerMenu;

    iget-object v0, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu$1;->this$0:Lcom/senseonics/view/DrawerMenu/DrawerMenu;

    invoke-static {v0}, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->access$300(Lcom/senseonics/view/DrawerMenu/DrawerMenu;)Lcom/senseonics/model/TransmitterStateModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->access$400(Lcom/senseonics/view/DrawerMenu/DrawerMenu;Z)V

    .line 211
    iget-object p1, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu$1;->this$0:Lcom/senseonics/view/DrawerMenu/DrawerMenu;

    invoke-static {p1}, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->access$500(Lcom/senseonics/view/DrawerMenu/DrawerMenu;)V

    return-void
.end method
