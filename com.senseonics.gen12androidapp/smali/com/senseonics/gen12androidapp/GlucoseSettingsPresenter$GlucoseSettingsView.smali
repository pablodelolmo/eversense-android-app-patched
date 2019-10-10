.class interface abstract Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;
.super Ljava/lang/Object;
.source "GlucoseSettingsPresenter.java"

# interfaces
.implements Lcom/senseonics/util/ProgressShowingView;
.implements Lcom/senseonics/view/DialogShowingView;
.implements Lcom/senseonics/util/PickerDialogView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "GlucoseSettingsView"
.end annotation


# virtual methods
.method public abstract getViewVisibilityByID(II)I
.end method

.method public abstract refreshGlucoseSection(IIIIZILjava/lang/String;)V
.end method

.method public abstract refreshHighGlucoseAlarmSection(IIIIIIZZIILjava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V
.end method

.method public abstract refreshPredictiveRateSection(IIIIIIZZIILjava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V
.end method

.method public abstract replaceLayout()V
.end method

.method public abstract rotateImageViewByDegree(III)V
.end method

.method public abstract setImageViewWithImage(III)V
.end method

.method public abstract setTextViewWithText(IILjava/lang/String;)V
.end method

.method public abstract setViewVisibilityByID(III)V
.end method

.method public abstract setupGlucoseSection(IIIILandroid/view/View$OnClickListener;I)V
.end method

.method public abstract setupHighGlucoseAlarmSection(IIIIILandroid/view/View$OnClickListener;II)V
.end method

.method public abstract setupPredictiveRateSection(IIILandroid/view/View$OnClickListener;I)V
.end method

.method public abstract setupSectionExpandCollapse(IIIZ)V
.end method

.method public abstract setupTableSectionTapEvent(IILandroid/view/View$OnClickListener;)V
.end method
