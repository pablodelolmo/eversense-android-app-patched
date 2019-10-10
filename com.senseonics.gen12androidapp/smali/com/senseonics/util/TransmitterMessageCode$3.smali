.class final enum Lcom/senseonics/util/TransmitterMessageCode$3;
.super Lcom/senseonics/util/TransmitterMessageCode;
.source "TransmitterMessageCode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/util/TransmitterMessageCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILcom/senseonics/util/Utils$EVENT_TYPE;IIIIIILjava/lang/String;ZIIIZ)V
    .locals 17

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    .line 377
    invoke-direct/range {v0 .. v16}, Lcom/senseonics/util/TransmitterMessageCode;-><init>(Ljava/lang/String;ILcom/senseonics/util/Utils$EVENT_TYPE;IIIIIILjava/lang/String;ZIIIZLcom/senseonics/util/TransmitterMessageCode$1;)V

    return-void
.end method


# virtual methods
.method public notificationId()I
    .locals 1

    .line 394
    invoke-static {}, Lcom/senseonics/util/TransmitterMessageCode;->access$100()I

    move-result v0

    return v0
.end method
