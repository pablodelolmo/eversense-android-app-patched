.class final enum Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;
.super Ljava/lang/Enum;
.source "SoundSettingsSimplifiedPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "LAYOUT_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;

.field public static final enum HIGH:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;

.field public static final enum LOW:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;

.field public static final enum MINUTE:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 43
    new-instance v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;

    const-string v1, "LOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;->LOW:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;

    new-instance v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;

    const-string v1, "HIGH"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;->HIGH:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;

    new-instance v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;

    const-string v1, "MINUTE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;->MINUTE:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;

    sget-object v1, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;->LOW:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;->HIGH:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;->MINUTE:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;->$VALUES:[Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;
    .locals 1

    .line 43
    const-class v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;
    .locals 1

    .line 43
    sget-object v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;->$VALUES:[Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;

    invoke-virtual {v0}, [Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;

    return-object v0
.end method
