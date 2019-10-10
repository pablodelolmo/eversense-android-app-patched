.class Lcom/senseonics/gen12androidapp/SoundSelectionActivity$1;
.super Ljava/lang/Object;
.source "SoundSelectionActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/gen12androidapp/SoundSelectionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/gen12androidapp/SoundSelectionActivity;


# direct methods
.method constructor <init>(Lcom/senseonics/gen12androidapp/SoundSelectionActivity;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSelectionActivity$1;->this$0:Lcom/senseonics/gen12androidapp/SoundSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 65
    check-cast p2, Landroid/widget/CheckedTextView;

    .line 66
    invoke-virtual {p2}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "SoundSettingSelect"

    .line 67
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Checked:"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :try_start_0
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSelectionActivity$1;->this$0:Lcom/senseonics/gen12androidapp/SoundSelectionActivity;

    invoke-static {p1}, Lcom/senseonics/gen12androidapp/SoundSelectionActivity;->access$000(Lcom/senseonics/gen12androidapp/SoundSelectionActivity;)V

    .line 71
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSelectionActivity$1;->this$0:Lcom/senseonics/gen12androidapp/SoundSelectionActivity;

    iget-object p1, p1, Lcom/senseonics/gen12androidapp/SoundSelectionActivity;->alarmRingtoneManager:Lcom/senseonics/util/AlarmRingtoneManager;

    invoke-virtual {p1, p3}, Lcom/senseonics/util/AlarmRingtoneManager;->getUriforRingtone(I)Landroid/net/Uri;

    move-result-object p1

    const-string p2, "SoundSettingSelect"

    .line 72
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "PLAY: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/SoundSelectionActivity$1;->this$0:Lcom/senseonics/gen12androidapp/SoundSelectionActivity;

    iget-object p4, p0, Lcom/senseonics/gen12androidapp/SoundSelectionActivity$1;->this$0:Lcom/senseonics/gen12androidapp/SoundSelectionActivity;

    invoke-virtual {p4}, Lcom/senseonics/gen12androidapp/SoundSelectionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4, p1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/senseonics/gen12androidapp/SoundSelectionActivity;->access$102(Lcom/senseonics/gen12androidapp/SoundSelectionActivity;Landroid/media/Ringtone;)Landroid/media/Ringtone;

    .line 74
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSelectionActivity$1;->this$0:Lcom/senseonics/gen12androidapp/SoundSelectionActivity;

    invoke-static {p1}, Lcom/senseonics/gen12androidapp/SoundSelectionActivity;->access$100(Lcom/senseonics/gen12androidapp/SoundSelectionActivity;)Landroid/media/Ringtone;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/Ringtone;->play()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "SoundSettingSelect"

    .line 77
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :goto_0
    sget-object p1, Lcom/senseonics/gen12androidapp/SoundSelectionActivity$2;->$SwitchMap$com$senseonics$gen12androidapp$SoundSelectionActivity$ALARM_SOUND_TYPE:[I

    iget-object p2, p0, Lcom/senseonics/gen12androidapp/SoundSelectionActivity$1;->this$0:Lcom/senseonics/gen12androidapp/SoundSelectionActivity;

    invoke-static {p2}, Lcom/senseonics/gen12androidapp/SoundSelectionActivity;->access$200(Lcom/senseonics/gen12androidapp/SoundSelectionActivity;)Lcom/senseonics/gen12androidapp/SoundSelectionActivity$ALARM_SOUND_TYPE;

    move-result-object p2

    invoke-virtual {p2}, Lcom/senseonics/gen12androidapp/SoundSelectionActivity$ALARM_SOUND_TYPE;->ordinal()I

    move-result p2

    aget p1, p1, p2

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 85
    :pswitch_0
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSelectionActivity$1;->this$0:Lcom/senseonics/gen12androidapp/SoundSelectionActivity;

    iget-object p1, p1, Lcom/senseonics/gen12androidapp/SoundSelectionActivity;->alarmRingtoneManager:Lcom/senseonics/util/AlarmRingtoneManager;

    iget-object p2, p0, Lcom/senseonics/gen12androidapp/SoundSelectionActivity$1;->this$0:Lcom/senseonics/gen12androidapp/SoundSelectionActivity;

    iget-object p2, p2, Lcom/senseonics/gen12androidapp/SoundSelectionActivity;->alarmRingtoneManager:Lcom/senseonics/util/AlarmRingtoneManager;

    invoke-virtual {p2, p3}, Lcom/senseonics/util/AlarmRingtoneManager;->ringtoneAtIndex(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/senseonics/util/AlarmRingtoneManager;->setDayHighAlarmSound(Ljava/lang/String;)V

    goto :goto_1

    .line 82
    :pswitch_1
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSelectionActivity$1;->this$0:Lcom/senseonics/gen12androidapp/SoundSelectionActivity;

    iget-object p1, p1, Lcom/senseonics/gen12androidapp/SoundSelectionActivity;->alarmRingtoneManager:Lcom/senseonics/util/AlarmRingtoneManager;

    iget-object p2, p0, Lcom/senseonics/gen12androidapp/SoundSelectionActivity$1;->this$0:Lcom/senseonics/gen12androidapp/SoundSelectionActivity;

    iget-object p2, p2, Lcom/senseonics/gen12androidapp/SoundSelectionActivity;->alarmRingtoneManager:Lcom/senseonics/util/AlarmRingtoneManager;

    invoke-virtual {p2, p3}, Lcom/senseonics/util/AlarmRingtoneManager;->ringtoneAtIndex(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/senseonics/util/AlarmRingtoneManager;->setDayLowAlarmSound(Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
