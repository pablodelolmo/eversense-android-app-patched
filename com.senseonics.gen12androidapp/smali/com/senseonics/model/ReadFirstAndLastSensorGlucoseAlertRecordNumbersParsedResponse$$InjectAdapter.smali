.class public final Lcom/senseonics/model/ReadFirstAndLastSensorGlucoseAlertRecordNumbersParsedResponse$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "ReadFirstAndLastSensorGlucoseAlertRecordNumbersParsedResponse$$InjectAdapter.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding<",
        "Lcom/senseonics/model/ReadFirstAndLastSensorGlucoseAlertRecordNumbersParsedResponse;",
        ">;",
        "Ljavax/inject/Provider<",
        "Lcom/senseonics/model/ReadFirstAndLastSensorGlucoseAlertRecordNumbersParsedResponse;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string v0, "com.senseonics.model.ReadFirstAndLastSensorGlucoseAlertRecordNumbersParsedResponse"

    const-string v1, "members/com.senseonics.model.ReadFirstAndLastSensorGlucoseAlertRecordNumbersParsedResponse"

    .line 18
    const-class v2, Lcom/senseonics/model/ReadFirstAndLastSensorGlucoseAlertRecordNumbersParsedResponse;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v3, v2}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public get()Lcom/senseonics/model/ReadFirstAndLastSensorGlucoseAlertRecordNumbersParsedResponse;
    .locals 1

    .line 27
    new-instance v0, Lcom/senseonics/model/ReadFirstAndLastSensorGlucoseAlertRecordNumbersParsedResponse;

    invoke-direct {v0}, Lcom/senseonics/model/ReadFirstAndLastSensorGlucoseAlertRecordNumbersParsedResponse;-><init>()V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/senseonics/model/ReadFirstAndLastSensorGlucoseAlertRecordNumbersParsedResponse$$InjectAdapter;->get()Lcom/senseonics/model/ReadFirstAndLastSensorGlucoseAlertRecordNumbersParsedResponse;

    move-result-object v0

    return-object v0
.end method
