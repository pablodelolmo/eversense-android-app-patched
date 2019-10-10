.class Lcom/senseonics/events/InsulinEventActivity$4;
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

.field final synthetic val$pickerManager:Lcom/senseonics/util/dialogs/DoublePickerManager;


# direct methods
.method constructor <init>(Lcom/senseonics/events/InsulinEventActivity;Lcom/senseonics/util/dialogs/DoublePickerManager;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/senseonics/events/InsulinEventActivity$4;->this$0:Lcom/senseonics/events/InsulinEventActivity;

    iput-object p2, p0, Lcom/senseonics/events/InsulinEventActivity$4;->val$pickerManager:Lcom/senseonics/util/dialogs/DoublePickerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14

    .line 84
    iget-object p1, p0, Lcom/senseonics/events/InsulinEventActivity$4;->this$0:Lcom/senseonics/events/InsulinEventActivity;

    invoke-static {p1}, Lcom/senseonics/events/InsulinEventActivity;->access$600(Lcom/senseonics/events/InsulinEventActivity;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/senseonics/events/InsulinEventActivity$4;->this$0:Lcom/senseonics/events/InsulinEventActivity;

    invoke-static {p1}, Lcom/senseonics/events/InsulinEventActivity;->access$600(Lcom/senseonics/events/InsulinEventActivity;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 85
    iget-object p1, p0, Lcom/senseonics/events/InsulinEventActivity$4;->this$0:Lcom/senseonics/events/InsulinEventActivity;

    invoke-static {p1}, Lcom/senseonics/events/InsulinEventActivity;->access$600(Lcom/senseonics/events/InsulinEventActivity;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 87
    :cond_0
    iget-object p1, p0, Lcom/senseonics/events/InsulinEventActivity$4;->this$0:Lcom/senseonics/events/InsulinEventActivity;

    invoke-static {p1}, Lcom/senseonics/events/InsulinEventActivity;->access$200(Lcom/senseonics/events/InsulinEventActivity;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    const-string v0, ","

    const-string v1, "."

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "[.]"

    .line 88
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 90
    array-length v0, p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 91
    iget-object v0, p0, Lcom/senseonics/events/InsulinEventActivity$4;->this$0:Lcom/senseonics/events/InsulinEventActivity;

    invoke-static {v0}, Lcom/senseonics/events/InsulinEventActivity;->access$300(Lcom/senseonics/events/InsulinEventActivity;)Ljava/util/ArrayList;

    move-result-object v0

    aget-object v1, p1, v2

    .line 92
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 91
    invoke-static {v0, v1}, Lcom/senseonics/util/Utils;->getItemPosition(Ljava/util/ArrayList;I)I

    move-result v2

    .line 93
    iget-object v0, p0, Lcom/senseonics/events/InsulinEventActivity$4;->this$0:Lcom/senseonics/events/InsulinEventActivity;

    invoke-static {v0}, Lcom/senseonics/events/InsulinEventActivity;->access$400(Lcom/senseonics/events/InsulinEventActivity;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    aget-object p1, p1, v3

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/senseonics/util/Utils;->getItemPosition(Ljava/util/ArrayList;Ljava/lang/String;)I

    move-result p1

    move v11, p1

    move v10, v2

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 97
    :goto_0
    iget-object p1, p0, Lcom/senseonics/events/InsulinEventActivity$4;->this$0:Lcom/senseonics/events/InsulinEventActivity;

    iget-object v0, p0, Lcom/senseonics/events/InsulinEventActivity$4;->this$0:Lcom/senseonics/events/InsulinEventActivity;

    invoke-static {v0}, Lcom/senseonics/events/InsulinEventActivity;->access$700(Lcom/senseonics/events/InsulinEventActivity;)Lcom/senseonics/bluetoothle/DialogUtils;

    move-result-object v3

    iget-object v4, p0, Lcom/senseonics/events/InsulinEventActivity$4;->this$0:Lcom/senseonics/events/InsulinEventActivity;

    iget-object v0, p0, Lcom/senseonics/events/InsulinEventActivity$4;->this$0:Lcom/senseonics/events/InsulinEventActivity;

    const v1, 0x7f0f0279

    .line 98
    invoke-virtual {v0, v1}, Lcom/senseonics/events/InsulinEventActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/senseonics/events/InsulinEventActivity$4;->this$0:Lcom/senseonics/events/InsulinEventActivity;

    invoke-static {v0}, Lcom/senseonics/events/InsulinEventActivity;->access$300(Lcom/senseonics/events/InsulinEventActivity;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v0, p0, Lcom/senseonics/events/InsulinEventActivity$4;->this$0:Lcom/senseonics/events/InsulinEventActivity;

    invoke-static {v0}, Lcom/senseonics/events/InsulinEventActivity;->access$400(Lcom/senseonics/events/InsulinEventActivity;)Ljava/util/ArrayList;

    move-result-object v7

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/senseonics/events/InsulinEventActivity$4;->val$pickerManager:Lcom/senseonics/util/dialogs/DoublePickerManager;

    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 97
    invoke-virtual/range {v3 .. v13}, Lcom/senseonics/bluetoothle/DialogUtils;->createPickerDialog(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/senseonics/events/EventUtils$PickerManager;Lcom/senseonics/util/dialogs/DoublePickerManager;IIZZ)Landroid/app/Dialog;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/senseonics/events/InsulinEventActivity;->access$602(Lcom/senseonics/events/InsulinEventActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 100
    iget-object p1, p0, Lcom/senseonics/events/InsulinEventActivity$4;->this$0:Lcom/senseonics/events/InsulinEventActivity;

    invoke-static {p1}, Lcom/senseonics/events/InsulinEventActivity;->access$600(Lcom/senseonics/events/InsulinEventActivity;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
