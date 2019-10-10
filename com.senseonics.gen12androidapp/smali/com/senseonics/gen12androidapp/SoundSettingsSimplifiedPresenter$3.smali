.class Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$3;
.super Ljava/lang/Object;
.source "SoundSettingsSimplifiedPresenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->getSoundSelectionClickListener(Ljava/lang/String;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;Ljava/lang/String;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$3;->this$0:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;

    iput-object p2, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$3;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 225
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$3;->this$0:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;

    iget-object p1, p1, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->view:Ljava/lang/Object;

    check-cast p1, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$SoundSettingsSimplifiedView;

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$3;->val$key:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$SoundSettingsSimplifiedView;->startSoundSelectionActivityWithKey(Ljava/lang/String;)V

    return-void
.end method
