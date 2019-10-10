.class interface abstract Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$SoundSettingsSimplifiedView;
.super Ljava/lang/Object;
.source "SoundSettingsSimplifiedPresenter.java"

# interfaces
.implements Lcom/senseonics/util/ProgressShowingView;
.implements Lcom/senseonics/view/DialogShowingView;
.implements Lcom/senseonics/util/PickerDialogView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "SoundSettingsSimplifiedView"
.end annotation


# virtual methods
.method public abstract refreshView(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V
.end method

.method public abstract setDisconnectLayoutVisibility(I)V
.end method

.method public abstract setupView(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;I)V
.end method

.method public abstract startSoundSelectionActivityWithKey(Ljava/lang/String;)V
.end method
