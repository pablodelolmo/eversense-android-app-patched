.class public final enum Lokhttp3/mockwebserver/SocketPolicy;
.super Ljava/lang/Enum;
.source "SocketPolicy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lokhttp3/mockwebserver/SocketPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lokhttp3/mockwebserver/SocketPolicy;

.field public static final enum DISCONNECT_AFTER_REQUEST:Lokhttp3/mockwebserver/SocketPolicy;

.field public static final enum DISCONNECT_AT_END:Lokhttp3/mockwebserver/SocketPolicy;

.field public static final enum DISCONNECT_AT_START:Lokhttp3/mockwebserver/SocketPolicy;

.field public static final enum DISCONNECT_DURING_REQUEST_BODY:Lokhttp3/mockwebserver/SocketPolicy;

.field public static final enum DISCONNECT_DURING_RESPONSE_BODY:Lokhttp3/mockwebserver/SocketPolicy;

.field public static final enum EXPECT_CONTINUE:Lokhttp3/mockwebserver/SocketPolicy;

.field public static final enum FAIL_HANDSHAKE:Lokhttp3/mockwebserver/SocketPolicy;

.field public static final enum KEEP_OPEN:Lokhttp3/mockwebserver/SocketPolicy;

.field public static final enum NO_RESPONSE:Lokhttp3/mockwebserver/SocketPolicy;

.field public static final enum RESET_STREAM_AT_START:Lokhttp3/mockwebserver/SocketPolicy;

.field public static final enum SHUTDOWN_INPUT_AT_END:Lokhttp3/mockwebserver/SocketPolicy;

.field public static final enum SHUTDOWN_OUTPUT_AT_END:Lokhttp3/mockwebserver/SocketPolicy;

.field public static final enum UPGRADE_TO_SSL_AT_END:Lokhttp3/mockwebserver/SocketPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 37
    new-instance v0, Lokhttp3/mockwebserver/SocketPolicy;

    const-string v1, "KEEP_OPEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lokhttp3/mockwebserver/SocketPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lokhttp3/mockwebserver/SocketPolicy;->KEEP_OPEN:Lokhttp3/mockwebserver/SocketPolicy;

    .line 47
    new-instance v0, Lokhttp3/mockwebserver/SocketPolicy;

    const-string v1, "DISCONNECT_AT_END"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lokhttp3/mockwebserver/SocketPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lokhttp3/mockwebserver/SocketPolicy;->DISCONNECT_AT_END:Lokhttp3/mockwebserver/SocketPolicy;

    .line 53
    new-instance v0, Lokhttp3/mockwebserver/SocketPolicy;

    const-string v1, "UPGRADE_TO_SSL_AT_END"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lokhttp3/mockwebserver/SocketPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lokhttp3/mockwebserver/SocketPolicy;->UPGRADE_TO_SSL_AT_END:Lokhttp3/mockwebserver/SocketPolicy;

    .line 59
    new-instance v0, Lokhttp3/mockwebserver/SocketPolicy;

    const-string v1, "DISCONNECT_AT_START"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lokhttp3/mockwebserver/SocketPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lokhttp3/mockwebserver/SocketPolicy;->DISCONNECT_AT_START:Lokhttp3/mockwebserver/SocketPolicy;

    .line 65
    new-instance v0, Lokhttp3/mockwebserver/SocketPolicy;

    const-string v1, "DISCONNECT_AFTER_REQUEST"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lokhttp3/mockwebserver/SocketPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lokhttp3/mockwebserver/SocketPolicy;->DISCONNECT_AFTER_REQUEST:Lokhttp3/mockwebserver/SocketPolicy;

    .line 68
    new-instance v0, Lokhttp3/mockwebserver/SocketPolicy;

    const-string v1, "DISCONNECT_DURING_REQUEST_BODY"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lokhttp3/mockwebserver/SocketPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lokhttp3/mockwebserver/SocketPolicy;->DISCONNECT_DURING_REQUEST_BODY:Lokhttp3/mockwebserver/SocketPolicy;

    .line 71
    new-instance v0, Lokhttp3/mockwebserver/SocketPolicy;

    const-string v1, "DISCONNECT_DURING_RESPONSE_BODY"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lokhttp3/mockwebserver/SocketPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lokhttp3/mockwebserver/SocketPolicy;->DISCONNECT_DURING_RESPONSE_BODY:Lokhttp3/mockwebserver/SocketPolicy;

    .line 74
    new-instance v0, Lokhttp3/mockwebserver/SocketPolicy;

    const-string v1, "FAIL_HANDSHAKE"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lokhttp3/mockwebserver/SocketPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lokhttp3/mockwebserver/SocketPolicy;->FAIL_HANDSHAKE:Lokhttp3/mockwebserver/SocketPolicy;

    .line 81
    new-instance v0, Lokhttp3/mockwebserver/SocketPolicy;

    const-string v1, "SHUTDOWN_INPUT_AT_END"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lokhttp3/mockwebserver/SocketPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lokhttp3/mockwebserver/SocketPolicy;->SHUTDOWN_INPUT_AT_END:Lokhttp3/mockwebserver/SocketPolicy;

    .line 88
    new-instance v0, Lokhttp3/mockwebserver/SocketPolicy;

    const-string v1, "SHUTDOWN_OUTPUT_AT_END"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lokhttp3/mockwebserver/SocketPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lokhttp3/mockwebserver/SocketPolicy;->SHUTDOWN_OUTPUT_AT_END:Lokhttp3/mockwebserver/SocketPolicy;

    .line 94
    new-instance v0, Lokhttp3/mockwebserver/SocketPolicy;

    const-string v1, "NO_RESPONSE"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lokhttp3/mockwebserver/SocketPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lokhttp3/mockwebserver/SocketPolicy;->NO_RESPONSE:Lokhttp3/mockwebserver/SocketPolicy;

    .line 100
    new-instance v0, Lokhttp3/mockwebserver/SocketPolicy;

    const-string v1, "RESET_STREAM_AT_START"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lokhttp3/mockwebserver/SocketPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lokhttp3/mockwebserver/SocketPolicy;->RESET_STREAM_AT_START:Lokhttp3/mockwebserver/SocketPolicy;

    .line 107
    new-instance v0, Lokhttp3/mockwebserver/SocketPolicy;

    const-string v1, "EXPECT_CONTINUE"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lokhttp3/mockwebserver/SocketPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lokhttp3/mockwebserver/SocketPolicy;->EXPECT_CONTINUE:Lokhttp3/mockwebserver/SocketPolicy;

    const/16 v0, 0xd

    .line 32
    new-array v0, v0, [Lokhttp3/mockwebserver/SocketPolicy;

    sget-object v1, Lokhttp3/mockwebserver/SocketPolicy;->KEEP_OPEN:Lokhttp3/mockwebserver/SocketPolicy;

    aput-object v1, v0, v2

    sget-object v1, Lokhttp3/mockwebserver/SocketPolicy;->DISCONNECT_AT_END:Lokhttp3/mockwebserver/SocketPolicy;

    aput-object v1, v0, v3

    sget-object v1, Lokhttp3/mockwebserver/SocketPolicy;->UPGRADE_TO_SSL_AT_END:Lokhttp3/mockwebserver/SocketPolicy;

    aput-object v1, v0, v4

    sget-object v1, Lokhttp3/mockwebserver/SocketPolicy;->DISCONNECT_AT_START:Lokhttp3/mockwebserver/SocketPolicy;

    aput-object v1, v0, v5

    sget-object v1, Lokhttp3/mockwebserver/SocketPolicy;->DISCONNECT_AFTER_REQUEST:Lokhttp3/mockwebserver/SocketPolicy;

    aput-object v1, v0, v6

    sget-object v1, Lokhttp3/mockwebserver/SocketPolicy;->DISCONNECT_DURING_REQUEST_BODY:Lokhttp3/mockwebserver/SocketPolicy;

    aput-object v1, v0, v7

    sget-object v1, Lokhttp3/mockwebserver/SocketPolicy;->DISCONNECT_DURING_RESPONSE_BODY:Lokhttp3/mockwebserver/SocketPolicy;

    aput-object v1, v0, v8

    sget-object v1, Lokhttp3/mockwebserver/SocketPolicy;->FAIL_HANDSHAKE:Lokhttp3/mockwebserver/SocketPolicy;

    aput-object v1, v0, v9

    sget-object v1, Lokhttp3/mockwebserver/SocketPolicy;->SHUTDOWN_INPUT_AT_END:Lokhttp3/mockwebserver/SocketPolicy;

    aput-object v1, v0, v10

    sget-object v1, Lokhttp3/mockwebserver/SocketPolicy;->SHUTDOWN_OUTPUT_AT_END:Lokhttp3/mockwebserver/SocketPolicy;

    aput-object v1, v0, v11

    sget-object v1, Lokhttp3/mockwebserver/SocketPolicy;->NO_RESPONSE:Lokhttp3/mockwebserver/SocketPolicy;

    aput-object v1, v0, v12

    sget-object v1, Lokhttp3/mockwebserver/SocketPolicy;->RESET_STREAM_AT_START:Lokhttp3/mockwebserver/SocketPolicy;

    aput-object v1, v0, v13

    sget-object v1, Lokhttp3/mockwebserver/SocketPolicy;->EXPECT_CONTINUE:Lokhttp3/mockwebserver/SocketPolicy;

    aput-object v1, v0, v14

    sput-object v0, Lokhttp3/mockwebserver/SocketPolicy;->$VALUES:[Lokhttp3/mockwebserver/SocketPolicy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lokhttp3/mockwebserver/SocketPolicy;
    .locals 1

    .line 32
    const-class v0, Lokhttp3/mockwebserver/SocketPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lokhttp3/mockwebserver/SocketPolicy;

    return-object p0
.end method

.method public static values()[Lokhttp3/mockwebserver/SocketPolicy;
    .locals 1

    .line 32
    sget-object v0, Lokhttp3/mockwebserver/SocketPolicy;->$VALUES:[Lokhttp3/mockwebserver/SocketPolicy;

    invoke-virtual {v0}, [Lokhttp3/mockwebserver/SocketPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lokhttp3/mockwebserver/SocketPolicy;

    return-object v0
.end method
