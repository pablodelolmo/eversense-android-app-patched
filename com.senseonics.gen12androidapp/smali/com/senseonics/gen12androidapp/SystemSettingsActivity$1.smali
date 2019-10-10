.class Lcom/senseonics/gen12androidapp/SystemSettingsActivity$1;
.super Ljava/lang/Object;
.source "SystemSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/gen12androidapp/SystemSettingsActivity;


# direct methods
.method constructor <init>(Lcom/senseonics/gen12androidapp/SystemSettingsActivity;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity$1;->this$0:Lcom/senseonics/gen12androidapp/SystemSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity$1;->this$0:Lcom/senseonics/gen12androidapp/SystemSettingsActivity;

    const-string v1, "input_method"

    .line 90
    invoke-virtual {v0, v1}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 93
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity$1;->this$0:Lcom/senseonics/gen12androidapp/SystemSettingsActivity;

    iget-object p1, p1, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 94
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity$1;->this$0:Lcom/senseonics/gen12androidapp/SystemSettingsActivity;

    invoke-static {p1}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->access$000(Lcom/senseonics/gen12androidapp/SystemSettingsActivity;)Lcom/senseonics/util/CustomEditText;

    move-result-object p1

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity$1;->this$0:Lcom/senseonics/gen12androidapp/SystemSettingsActivity;

    iget-object v0, v0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/senseonics/util/CustomEditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
