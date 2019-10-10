.class Lcom/senseonics/fragments/SettingsFragment$7;
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

    .line 130
    iput-object p1, p0, Lcom/senseonics/fragments/SettingsFragment$7;->this$0:Lcom/senseonics/fragments/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 134
    iget-object p1, p0, Lcom/senseonics/fragments/SettingsFragment$7;->this$0:Lcom/senseonics/fragments/SettingsFragment;

    iget-object v0, p0, Lcom/senseonics/fragments/SettingsFragment$7;->this$0:Lcom/senseonics/fragments/SettingsFragment;

    const v1, 0x7f0f0292

    invoke-virtual {v0, v1}, Lcom/senseonics/fragments/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/fragments/SettingsFragment$7;->this$0:Lcom/senseonics/fragments/SettingsFragment;

    const v2, 0x7f0f014c

    .line 135
    invoke-virtual {v1, v2}, Lcom/senseonics/fragments/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 134
    invoke-virtual {p1, v0, v1}, Lcom/senseonics/fragments/SettingsFragment;->createDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
