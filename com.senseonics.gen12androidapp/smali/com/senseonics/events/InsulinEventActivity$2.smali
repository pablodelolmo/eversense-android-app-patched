.class Lcom/senseonics/events/InsulinEventActivity$2;
.super Ljava/lang/Object;
.source "InsulinEventActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/events/InsulinEventActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/events/InsulinEventActivity;


# direct methods
.method constructor <init>(Lcom/senseonics/events/InsulinEventActivity;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/senseonics/events/InsulinEventActivity$2;->this$0:Lcom/senseonics/events/InsulinEventActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 64
    iget-object p1, p0, Lcom/senseonics/events/InsulinEventActivity$2;->this$0:Lcom/senseonics/events/InsulinEventActivity;

    iget-object v0, p0, Lcom/senseonics/events/InsulinEventActivity$2;->this$0:Lcom/senseonics/events/InsulinEventActivity;

    .line 65
    invoke-virtual {v0}, Lcom/senseonics/events/InsulinEventActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0131

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/events/InsulinEventActivity$2;->this$0:Lcom/senseonics/events/InsulinEventActivity;

    .line 66
    invoke-static {v1}, Lcom/senseonics/events/InsulinEventActivity;->access$000(Lcom/senseonics/events/InsulinEventActivity;)Lcom/senseonics/events/EventUtils$PickerManager;

    move-result-object v1

    iget-object v2, p0, Lcom/senseonics/events/InsulinEventActivity$2;->this$0:Lcom/senseonics/events/InsulinEventActivity;

    invoke-static {v2}, Lcom/senseonics/events/InsulinEventActivity;->access$100(Lcom/senseonics/events/InsulinEventActivity;)Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

    move-result-object v2

    invoke-virtual {v2}, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;->ordinal()I

    move-result v2

    .line 64
    invoke-static {p1, v0, v1, v2}, Lcom/senseonics/events/EventUtils;->createInsulinTypePicker(Landroid/content/Context;Ljava/lang/String;Lcom/senseonics/events/EventUtils$PickerManager;I)V

    return-void
.end method
