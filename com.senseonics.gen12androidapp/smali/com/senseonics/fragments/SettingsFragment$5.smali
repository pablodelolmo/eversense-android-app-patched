.class Lcom/senseonics/fragments/SettingsFragment$5;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/fragments/SettingsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/fragments/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/senseonics/fragments/SettingsFragment;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/senseonics/fragments/SettingsFragment$5;->this$0:Lcom/senseonics/fragments/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 109
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/senseonics/fragments/SettingsFragment$5;->this$0:Lcom/senseonics/fragments/SettingsFragment;

    invoke-virtual {v0}, Lcom/senseonics/fragments/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 111
    iget-object v0, p0, Lcom/senseonics/fragments/SettingsFragment$5;->this$0:Lcom/senseonics/fragments/SettingsFragment;

    invoke-virtual {v0}, Lcom/senseonics/fragments/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
