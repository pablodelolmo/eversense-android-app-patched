.class public final enum Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;
.super Ljava/lang/Enum;
.source "TempProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/bluetoothle/TempProfileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GLUCOSE_PROFILE_ATTRIBUTE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

.field public static final enum GLUCOSE_PROFILE_ATTRIBUTE_ALARM_HIGH:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

.field public static final enum GLUCOSE_PROFILE_ATTRIBUTE_ALARM_LOW:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

.field public static final enum GLUCOSE_PROFILE_ATTRIBUTE_TARGET_HIGH:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

.field public static final enum GLUCOSE_PROFILE_ATTRIBUTE_TARGET_LOW:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 36
    new-instance v0, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    const-string v1, "GLUCOSE_PROFILE_ATTRIBUTE_TARGET_HIGH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;->GLUCOSE_PROFILE_ATTRIBUTE_TARGET_HIGH:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    .line 37
    new-instance v0, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    const-string v1, "GLUCOSE_PROFILE_ATTRIBUTE_TARGET_LOW"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;->GLUCOSE_PROFILE_ATTRIBUTE_TARGET_LOW:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    .line 38
    new-instance v0, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    const-string v1, "GLUCOSE_PROFILE_ATTRIBUTE_ALARM_HIGH"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;->GLUCOSE_PROFILE_ATTRIBUTE_ALARM_HIGH:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    .line 39
    new-instance v0, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    const-string v1, "GLUCOSE_PROFILE_ATTRIBUTE_ALARM_LOW"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;->GLUCOSE_PROFILE_ATTRIBUTE_ALARM_LOW:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    const/4 v0, 0x4

    .line 35
    new-array v0, v0, [Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    sget-object v1, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;->GLUCOSE_PROFILE_ATTRIBUTE_TARGET_HIGH:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;->GLUCOSE_PROFILE_ATTRIBUTE_TARGET_LOW:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;->GLUCOSE_PROFILE_ATTRIBUTE_ALARM_HIGH:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;->GLUCOSE_PROFILE_ATTRIBUTE_ALARM_LOW:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    aput-object v1, v0, v5

    sput-object v0, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;->$VALUES:[Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;
    .locals 1

    .line 35
    const-class v0, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    return-object p0
.end method

.method public static values()[Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;
    .locals 1

    .line 35
    sget-object v0, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;->$VALUES:[Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    invoke-virtual {v0}, [Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    return-object v0
.end method
