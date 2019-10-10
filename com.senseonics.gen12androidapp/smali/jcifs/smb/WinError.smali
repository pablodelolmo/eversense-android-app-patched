.class public interface abstract Ljcifs/smb/WinError;
.super Ljava/lang/Object;
.source "WinError.java"


# static fields
.field public static final ERROR_ACCESS_DENIED:I = 0x5

.field public static final ERROR_BAD_PIPE:I = 0xe6

.field public static final ERROR_MORE_DATA:I = 0xea

.field public static final ERROR_NO_BROWSER_SERVERS_FOUND:I = 0x17e6

.field public static final ERROR_NO_DATA:I = 0xe8

.field public static final ERROR_PIPE_BUSY:I = 0xe7

.field public static final ERROR_PIPE_NOT_CONNECTED:I = 0xe9

.field public static final ERROR_REQ_NOT_ACCEP:I = 0x47

.field public static final ERROR_SUCCESS:I

.field public static final WINERR_CODES:[I

.field public static final WINERR_MESSAGES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/16 v0, 0x9

    .line 37
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Ljcifs/smb/WinError;->WINERR_CODES:[I

    const-string v1, "The operation completed successfully."

    const-string v2, "Access is denied."

    const-string v3, "No more connections can be made to this remote computer at this time because there are already as many connections as the computer can accept."

    const-string v4, "The pipe state is invalid."

    const-string v5, "All pipe instances are busy."

    const-string v6, "The pipe is being closed."

    const-string v7, "No process is on the other end of the pipe."

    const-string v8, "More data is available."

    const-string v9, "The list of servers for this workgroup is not currently available."

    .line 49
    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljcifs/smb/WinError;->WINERR_MESSAGES:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x0
        0x5
        0x47
        0xe6
        0xe7
        0xe8
        0xe9
        0xea
        0x17e6
    .end array-data
.end method
