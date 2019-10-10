.class Lnet/simonvt/numberpicker/NumberPicker$BeginSoftInputOnLongPressCommand;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/simonvt/numberpicker/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BeginSoftInputOnLongPressCommand"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/simonvt/numberpicker/NumberPicker;


# direct methods
.method constructor <init>(Lnet/simonvt/numberpicker/NumberPicker;)V
    .locals 0

    .line 2194
    iput-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker$BeginSoftInputOnLongPressCommand;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2198
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$BeginSoftInputOnLongPressCommand;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v0}, Lnet/simonvt/numberpicker/NumberPicker;->access$1900(Lnet/simonvt/numberpicker/NumberPicker;)V

    .line 2199
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$BeginSoftInputOnLongPressCommand;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lnet/simonvt/numberpicker/NumberPicker;->access$2002(Lnet/simonvt/numberpicker/NumberPicker;Z)Z

    return-void
.end method
