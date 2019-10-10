.class Lcom/senseonics/gen12androidapp/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/senseonics/view/DrawerMenu/DrawerMenu$DrawerMenuCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/gen12androidapp/MainActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 151
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MainActivity$3;->this$0:Lcom/senseonics/gen12androidapp/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;)V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity$3;->this$0:Lcom/senseonics/gen12androidapp/MainActivity;

    invoke-static {v0, p1}, Lcom/senseonics/gen12androidapp/MainActivity;->access$000(Lcom/senseonics/gen12androidapp/MainActivity;Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;)V

    return-void
.end method
