.class Lcom/senseonics/gen12androidapp/DeviceCompatibilityActivity$2;
.super Ljava/lang/Object;
.source "DeviceCompatibilityActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/gen12androidapp/DeviceCompatibilityActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/gen12androidapp/DeviceCompatibilityActivity;


# direct methods
.method constructor <init>(Lcom/senseonics/gen12androidapp/DeviceCompatibilityActivity;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/DeviceCompatibilityActivity$2;->this$0:Lcom/senseonics/gen12androidapp/DeviceCompatibilityActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 50
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/DeviceCompatibilityActivity$2;->this$0:Lcom/senseonics/gen12androidapp/DeviceCompatibilityActivity;

    invoke-static {p1}, Lcom/senseonics/util/Utils;->saveFirstRunForCompatibility(Landroid/content/Context;)V

    .line 52
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/DeviceCompatibilityActivity$2;->this$0:Lcom/senseonics/gen12androidapp/DeviceCompatibilityActivity;

    const-class v1, Lcom/senseonics/gen12androidapp/EulaScreenActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "eula_init"

    const-string v1, "true"

    .line 53
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/DeviceCompatibilityActivity$2;->this$0:Lcom/senseonics/gen12androidapp/DeviceCompatibilityActivity;

    invoke-virtual {v0, p1}, Lcom/senseonics/gen12androidapp/DeviceCompatibilityActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
