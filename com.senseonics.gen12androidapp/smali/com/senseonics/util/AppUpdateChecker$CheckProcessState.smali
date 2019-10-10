.class final enum Lcom/senseonics/util/AppUpdateChecker$CheckProcessState;
.super Ljava/lang/Enum;
.source "AppUpdateChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/util/AppUpdateChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CheckProcessState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/senseonics/util/AppUpdateChecker$CheckProcessState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/senseonics/util/AppUpdateChecker$CheckProcessState;

.field public static final enum ENDED:Lcom/senseonics/util/AppUpdateChecker$CheckProcessState;

.field public static final enum STARTED:Lcom/senseonics/util/AppUpdateChecker$CheckProcessState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 68
    new-instance v0, Lcom/senseonics/util/AppUpdateChecker$CheckProcessState;

    const-string v1, "STARTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/senseonics/util/AppUpdateChecker$CheckProcessState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/util/AppUpdateChecker$CheckProcessState;->STARTED:Lcom/senseonics/util/AppUpdateChecker$CheckProcessState;

    .line 69
    new-instance v0, Lcom/senseonics/util/AppUpdateChecker$CheckProcessState;

    const-string v1, "ENDED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/senseonics/util/AppUpdateChecker$CheckProcessState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/util/AppUpdateChecker$CheckProcessState;->ENDED:Lcom/senseonics/util/AppUpdateChecker$CheckProcessState;

    const/4 v0, 0x2

    .line 67
    new-array v0, v0, [Lcom/senseonics/util/AppUpdateChecker$CheckProcessState;

    sget-object v1, Lcom/senseonics/util/AppUpdateChecker$CheckProcessState;->STARTED:Lcom/senseonics/util/AppUpdateChecker$CheckProcessState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/util/AppUpdateChecker$CheckProcessState;->ENDED:Lcom/senseonics/util/AppUpdateChecker$CheckProcessState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/senseonics/util/AppUpdateChecker$CheckProcessState;->$VALUES:[Lcom/senseonics/util/AppUpdateChecker$CheckProcessState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/senseonics/util/AppUpdateChecker$CheckProcessState;
    .locals 1

    .line 67
    const-class v0, Lcom/senseonics/util/AppUpdateChecker$CheckProcessState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/senseonics/util/AppUpdateChecker$CheckProcessState;

    return-object p0
.end method

.method public static values()[Lcom/senseonics/util/AppUpdateChecker$CheckProcessState;
    .locals 1

    .line 67
    sget-object v0, Lcom/senseonics/util/AppUpdateChecker$CheckProcessState;->$VALUES:[Lcom/senseonics/util/AppUpdateChecker$CheckProcessState;

    invoke-virtual {v0}, [Lcom/senseonics/util/AppUpdateChecker$CheckProcessState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/senseonics/util/AppUpdateChecker$CheckProcessState;

    return-object v0
.end method
