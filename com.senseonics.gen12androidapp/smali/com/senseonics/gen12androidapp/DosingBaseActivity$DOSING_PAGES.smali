.class public final enum Lcom/senseonics/gen12androidapp/DosingBaseActivity$DOSING_PAGES;
.super Ljava/lang/Enum;
.source "DosingBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/gen12androidapp/DosingBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "DOSING_PAGES"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/senseonics/gen12androidapp/DosingBaseActivity$DOSING_PAGES;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/senseonics/gen12androidapp/DosingBaseActivity$DOSING_PAGES;

.field public static final enum MATCH:Lcom/senseonics/gen12androidapp/DosingBaseActivity$DOSING_PAGES;

.field public static final enum NOT_OK:Lcom/senseonics/gen12androidapp/DosingBaseActivity$DOSING_PAGES;

.field public static final enum OK:Lcom/senseonics/gen12androidapp/DosingBaseActivity$DOSING_PAGES;

.field public static final enum SUMMARY:Lcom/senseonics/gen12androidapp/DosingBaseActivity$DOSING_PAGES;

.field public static final enum WELCOME:Lcom/senseonics/gen12androidapp/DosingBaseActivity$DOSING_PAGES;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 47
    new-instance v0, Lcom/senseonics/gen12androidapp/DosingBaseActivity$DOSING_PAGES;

    const-string v1, "WELCOME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/senseonics/gen12androidapp/DosingBaseActivity$DOSING_PAGES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/gen12androidapp/DosingBaseActivity$DOSING_PAGES;->WELCOME:Lcom/senseonics/gen12androidapp/DosingBaseActivity$DOSING_PAGES;

    .line 48
    new-instance v0, Lcom/senseonics/gen12androidapp/DosingBaseActivity$DOSING_PAGES;

    const-string v1, "OK"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/senseonics/gen12androidapp/DosingBaseActivity$DOSING_PAGES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/gen12androidapp/DosingBaseActivity$DOSING_PAGES;->OK:Lcom/senseonics/gen12androidapp/DosingBaseActivity$DOSING_PAGES;

    .line 49
    new-instance v0, Lcom/senseonics/gen12androidapp/DosingBaseActivity$DOSING_PAGES;

    const-string v1, "MATCH"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/senseonics/gen12androidapp/DosingBaseActivity$DOSING_PAGES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/gen12androidapp/DosingBaseActivity$DOSING_PAGES;->MATCH:Lcom/senseonics/gen12androidapp/DosingBaseActivity$DOSING_PAGES;

    .line 50
    new-instance v0, Lcom/senseonics/gen12androidapp/DosingBaseActivity$DOSING_PAGES;

    const-string v1, "NOT_OK"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/senseonics/gen12androidapp/DosingBaseActivity$DOSING_PAGES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/gen12androidapp/DosingBaseActivity$DOSING_PAGES;->NOT_OK:Lcom/senseonics/gen12androidapp/DosingBaseActivity$DOSING_PAGES;

    .line 51
    new-instance v0, Lcom/senseonics/gen12androidapp/DosingBaseActivity$DOSING_PAGES;

    const-string v1, "SUMMARY"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/senseonics/gen12androidapp/DosingBaseActivity$DOSING_PAGES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/gen12androidapp/DosingBaseActivity$DOSING_PAGES;->SUMMARY:Lcom/senseonics/gen12androidapp/DosingBaseActivity$DOSING_PAGES;

    const/4 v0, 0x5

    .line 46
    new-array v0, v0, [Lcom/senseonics/gen12androidapp/DosingBaseActivity$DOSING_PAGES;

    sget-object v1, Lcom/senseonics/gen12androidapp/DosingBaseActivity$DOSING_PAGES;->WELCOME:Lcom/senseonics/gen12androidapp/DosingBaseActivity$DOSING_PAGES;

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/gen12androidapp/DosingBaseActivity$DOSING_PAGES;->OK:Lcom/senseonics/gen12androidapp/DosingBaseActivity$DOSING_PAGES;

    aput-object v1, v0, v3

    sget-object v1, Lcom/senseonics/gen12androidapp/DosingBaseActivity$DOSING_PAGES;->MATCH:Lcom/senseonics/gen12androidapp/DosingBaseActivity$DOSING_PAGES;

    aput-object v1, v0, v4

    sget-object v1, Lcom/senseonics/gen12androidapp/DosingBaseActivity$DOSING_PAGES;->NOT_OK:Lcom/senseonics/gen12androidapp/DosingBaseActivity$DOSING_PAGES;

    aput-object v1, v0, v5

    sget-object v1, Lcom/senseonics/gen12androidapp/DosingBaseActivity$DOSING_PAGES;->SUMMARY:Lcom/senseonics/gen12androidapp/DosingBaseActivity$DOSING_PAGES;

    aput-object v1, v0, v6

    sput-object v0, Lcom/senseonics/gen12androidapp/DosingBaseActivity$DOSING_PAGES;->$VALUES:[Lcom/senseonics/gen12androidapp/DosingBaseActivity$DOSING_PAGES;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/senseonics/gen12androidapp/DosingBaseActivity$DOSING_PAGES;
    .locals 1

    .line 46
    const-class v0, Lcom/senseonics/gen12androidapp/DosingBaseActivity$DOSING_PAGES;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/senseonics/gen12androidapp/DosingBaseActivity$DOSING_PAGES;

    return-object p0
.end method

.method public static values()[Lcom/senseonics/gen12androidapp/DosingBaseActivity$DOSING_PAGES;
    .locals 1

    .line 46
    sget-object v0, Lcom/senseonics/gen12androidapp/DosingBaseActivity$DOSING_PAGES;->$VALUES:[Lcom/senseonics/gen12androidapp/DosingBaseActivity$DOSING_PAGES;

    invoke-virtual {v0}, [Lcom/senseonics/gen12androidapp/DosingBaseActivity$DOSING_PAGES;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/senseonics/gen12androidapp/DosingBaseActivity$DOSING_PAGES;

    return-object v0
.end method
