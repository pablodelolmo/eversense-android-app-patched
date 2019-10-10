.class Lcom/senseonics/gen12androidapp/MainActivity$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/gen12androidapp/MainActivity;->updateNavigationBar()V
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

    .line 360
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MainActivity$5;->this$0:Lcom/senseonics/gen12androidapp/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 363
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MainActivity$5;->this$0:Lcom/senseonics/gen12androidapp/MainActivity;

    iget-object p1, p1, Lcom/senseonics/gen12androidapp/MainActivity;->drawerMenu:Lcom/senseonics/view/DrawerMenu/DrawerMenu;

    invoke-virtual {p1}, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->closeDrawer()V

    .line 364
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MainActivity$5;->this$0:Lcom/senseonics/gen12androidapp/MainActivity;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/senseonics/util/AddEventMenuCreator;->createLogEventMenuDialog(Landroid/content/Context;Ljava/util/Calendar;)V

    return-void
.end method
