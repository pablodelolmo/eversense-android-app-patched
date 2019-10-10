.class Lcom/senseonics/gen12androidapp/UserAccountActivity$1;
.super Ljava/lang/Object;
.source "UserAccountActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/gen12androidapp/UserAccountActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/gen12androidapp/UserAccountActivity;


# direct methods
.method constructor <init>(Lcom/senseonics/gen12androidapp/UserAccountActivity;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity$1;->this$0:Lcom/senseonics/gen12androidapp/UserAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    .line 69
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity$1;->this$0:Lcom/senseonics/gen12androidapp/UserAccountActivity;

    iget-object p1, p1, Lcom/senseonics/gen12androidapp/UserAccountActivity;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {p1}, Lcom/senseonics/util/AccountConstants;->HasValidAccountInfo()Z

    move-result p1

    if-nez p1, :cond_0

    .line 70
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity$1;->this$0:Lcom/senseonics/gen12androidapp/UserAccountActivity;

    invoke-static {p1}, Lcom/senseonics/gen12androidapp/UserAccountActivity;->access$000(Lcom/senseonics/gen12androidapp/UserAccountActivity;)Landroid/widget/Switch;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 71
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity$1;->this$0:Lcom/senseonics/gen12androidapp/UserAccountActivity;

    iget-object p2, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity$1;->this$0:Lcom/senseonics/gen12androidapp/UserAccountActivity;

    const v0, 0x7f0f0292

    invoke-virtual {p2, v0}, Lcom/senseonics/gen12androidapp/UserAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity$1;->this$0:Lcom/senseonics/gen12androidapp/UserAccountActivity;

    const v1, 0x7f0f0242

    .line 72
    invoke-virtual {v0, v1}, Lcom/senseonics/gen12androidapp/UserAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-virtual {p1, p2, v0}, Lcom/senseonics/gen12androidapp/UserAccountActivity;->displayDialogWithTitleAndMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :cond_0
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity$1;->this$0:Lcom/senseonics/gen12androidapp/UserAccountActivity;

    const/4 p2, 0x0

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity$1;->this$0:Lcom/senseonics/gen12androidapp/UserAccountActivity;

    const v1, 0x7f0f0032

    .line 77
    invoke-virtual {v0, v1}, Lcom/senseonics/gen12androidapp/UserAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-virtual {p1, p2, v0}, Lcom/senseonics/gen12androidapp/UserAccountActivity;->displayDialogWithTitleAndMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity$1;->this$0:Lcom/senseonics/gen12androidapp/UserAccountActivity;

    const-string p2, "AccountEnableAutoSync"

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity$1;->this$0:Lcom/senseonics/gen12androidapp/UserAccountActivity;

    invoke-static {v0}, Lcom/senseonics/gen12androidapp/UserAccountActivity;->access$000(Lcom/senseonics/gen12androidapp/UserAccountActivity;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/senseonics/util/Utils;->saveSettings(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method
