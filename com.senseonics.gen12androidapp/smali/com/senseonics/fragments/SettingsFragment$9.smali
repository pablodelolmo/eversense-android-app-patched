.class Lcom/senseonics/fragments/SettingsFragment$9;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/fragments/SettingsFragment;->createDialog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/fragments/SettingsFragment;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/senseonics/fragments/SettingsFragment;Landroid/app/Dialog;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/senseonics/fragments/SettingsFragment$9;->this$0:Lcom/senseonics/fragments/SettingsFragment;

    iput-object p2, p0, Lcom/senseonics/fragments/SettingsFragment$9;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 195
    iget-object p1, p0, Lcom/senseonics/fragments/SettingsFragment$9;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 197
    iget-object p1, p0, Lcom/senseonics/fragments/SettingsFragment$9;->this$0:Lcom/senseonics/fragments/SettingsFragment;

    iget-object p1, p1, Lcom/senseonics/fragments/SettingsFragment;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {p1}, Lcom/senseonics/util/AccountConstants;->setDefaultLoggedIn()V

    .line 199
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/senseonics/fragments/SettingsFragment$9;->this$0:Lcom/senseonics/fragments/SettingsFragment;

    invoke-virtual {v0}, Lcom/senseonics/fragments/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->getLoginActivity()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 200
    iget-object v0, p0, Lcom/senseonics/fragments/SettingsFragment$9;->this$0:Lcom/senseonics/fragments/SettingsFragment;

    invoke-virtual {v0}, Lcom/senseonics/fragments/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 203
    iget-object p1, p0, Lcom/senseonics/fragments/SettingsFragment$9;->this$0:Lcom/senseonics/fragments/SettingsFragment;

    invoke-virtual {p1}, Lcom/senseonics/fragments/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 206
    invoke-static {}, Lcom/crashlytics/android/answers/Answers;->getInstance()Lcom/crashlytics/android/answers/Answers;

    move-result-object p1

    new-instance v0, Lcom/crashlytics/android/answers/CustomEvent;

    const-string v1, "Logout"

    invoke-direct {v0, v1}, Lcom/crashlytics/android/answers/CustomEvent;-><init>(Ljava/lang/String;)V

    const-string v1, "Reason"

    const-string v2, "User Clicked"

    .line 207
    invoke-virtual {v0, v1, v2}, Lcom/crashlytics/android/answers/CustomEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/answers/AnswersEvent;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/answers/CustomEvent;

    .line 206
    invoke-virtual {p1, v0}, Lcom/crashlytics/android/answers/Answers;->logCustom(Lcom/crashlytics/android/answers/CustomEvent;)V

    return-void
.end method
