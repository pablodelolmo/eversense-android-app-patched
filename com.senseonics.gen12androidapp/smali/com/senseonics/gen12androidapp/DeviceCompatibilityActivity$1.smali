.class Lcom/senseonics/gen12androidapp/DeviceCompatibilityActivity$1;
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

    .line 37
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/DeviceCompatibilityActivity$1;->this$0:Lcom/senseonics/gen12androidapp/DeviceCompatibilityActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 41
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/DeviceCompatibilityActivity$1;->this$0:Lcom/senseonics/gen12androidapp/DeviceCompatibilityActivity;

    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/DeviceCompatibilityActivity;->finish()V

    return-void
.end method
