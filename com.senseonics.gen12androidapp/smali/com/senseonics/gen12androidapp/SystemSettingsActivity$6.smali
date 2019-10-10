.class Lcom/senseonics/gen12androidapp/SystemSettingsActivity$6;
.super Ljava/lang/Object;
.source "SystemSettingsActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->addTransmitterNameView()V
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

    .line 289
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity$6;->this$0:Lcom/senseonics/gen12androidapp/SystemSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p3, 0x6

    if-ne p2, p3, :cond_0

    .line 295
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity$6;->this$0:Lcom/senseonics/gen12androidapp/SystemSettingsActivity;

    const-string p3, "input_method"

    .line 296
    invoke-virtual {p2, p3}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    .line 298
    invoke-virtual {p1}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 p3, 0x2

    .line 297
    invoke-virtual {p2, p1, p3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 301
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity$6;->this$0:Lcom/senseonics/gen12androidapp/SystemSettingsActivity;

    invoke-static {p1}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->access$400(Lcom/senseonics/gen12androidapp/SystemSettingsActivity;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
