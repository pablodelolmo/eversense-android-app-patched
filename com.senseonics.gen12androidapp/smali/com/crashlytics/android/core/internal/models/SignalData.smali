.class public Lcom/crashlytics/android/core/internal/models/SignalData;
.super Ljava/lang/Object;
.source "SignalData.java"


# instance fields
.field public final code:Ljava/lang/String;

.field public final faultAddress:J

.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/crashlytics/android/core/internal/models/SignalData;->name:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/crashlytics/android/core/internal/models/SignalData;->code:Ljava/lang/String;

    .line 26
    iput-wide p3, p0, Lcom/crashlytics/android/core/internal/models/SignalData;->faultAddress:J

    return-void
.end method
