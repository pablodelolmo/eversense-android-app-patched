.class final enum Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;
.super Ljava/lang/Enum;
.source "AppUpdateChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/util/AppUpdateChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "MLCheckResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;

.field public static final enum None:Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;

.field public static final enum NotConnectedToWifi:Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;

.field public static final enum ServerError:Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;

.field public static final enum Timeout:Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;

.field public static final enum Unknown:Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 41
    new-instance v0, Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;

    const-string v1, "Timeout"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;->Timeout:Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;

    .line 42
    new-instance v0, Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;

    const-string v1, "NotConnectedToWifi"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;->NotConnectedToWifi:Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;

    .line 43
    new-instance v0, Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;

    const-string v1, "ServerError"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5}, Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;->ServerError:Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;

    .line 44
    new-instance v0, Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;

    const-string v1, "None"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v6}, Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;->None:Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;

    .line 45
    new-instance v0, Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;

    const-string v1, "Unknown"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v6, v7}, Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;->Unknown:Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;

    .line 40
    new-array v0, v7, [Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;

    sget-object v1, Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;->Timeout:Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;->NotConnectedToWifi:Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;->ServerError:Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;

    aput-object v1, v0, v4

    sget-object v1, Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;->None:Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;

    aput-object v1, v0, v5

    sget-object v1, Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;->Unknown:Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;

    aput-object v1, v0, v6

    sput-object v0, Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;->$VALUES:[Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;->id:I

    return-void
.end method

.method public static fromValue(I)Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;
    .locals 5

    .line 52
    invoke-static {}, Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;->values()[Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 53
    invoke-virtual {v3}, Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;->getValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;
    .locals 1

    .line 40
    const-class v0, Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;

    return-object p0
.end method

.method public static values()[Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;
    .locals 1

    .line 40
    sget-object v0, Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;->$VALUES:[Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;

    invoke-virtual {v0}, [Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;->id:I

    return v0
.end method
