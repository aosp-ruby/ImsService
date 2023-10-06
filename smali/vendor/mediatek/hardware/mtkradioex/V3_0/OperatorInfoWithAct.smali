.class public final Lvendor/mediatek/hardware/mtkradioex/V3_0/OperatorInfoWithAct;
.super Ljava/lang/Object;
.source "OperatorInfoWithAct.java"


# instance fields
.field public act:Ljava/lang/String;

.field public base:Landroid/hardware/radio/V1_0/OperatorInfo;

.field public lac:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Landroid/hardware/radio/V1_0/OperatorInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/OperatorInfo;-><init>()V

    iput-object v0, p0, Lvendor/mediatek/hardware/mtkradioex/V3_0/OperatorInfoWithAct;->base:Landroid/hardware/radio/V1_0/OperatorInfo;

    .line 6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lvendor/mediatek/hardware/mtkradioex/V3_0/OperatorInfoWithAct;->lac:Ljava/lang/String;

    .line 7
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lvendor/mediatek/hardware/mtkradioex/V3_0/OperatorInfoWithAct;->act:Ljava/lang/String;

    return-void
.end method

.method public static final readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .locals 12
    .param p0, "parcel"    # Landroid/os/HwParcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            ")",
            "Ljava/util/ArrayList<",
            "Lvendor/mediatek/hardware/mtkradioex/V3_0/OperatorInfoWithAct;",
            ">;"
        }
    .end annotation

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V3_0/OperatorInfoWithAct;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 65
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 66
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x58

    int-to-long v5, v3

    .line 67
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 66
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 70
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 71
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 72
    new-instance v5, Lvendor/mediatek/hardware/mtkradioex/V3_0/OperatorInfoWithAct;

    invoke-direct {v5}, Lvendor/mediatek/hardware/mtkradioex/V3_0/OperatorInfoWithAct;-><init>()V

    .line 73
    .local v5, "_hidl_vec_element":Lvendor/mediatek/hardware/mtkradioex/V3_0/OperatorInfoWithAct;
    mul-int/lit8 v6, v4, 0x58

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Lvendor/mediatek/hardware/mtkradioex/V3_0/OperatorInfoWithAct;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 74
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .end local v5    # "_hidl_vec_element":Lvendor/mediatek/hardware/mtkradioex/V3_0/OperatorInfoWithAct;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 78
    .end local v2    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    .end local v4    # "_hidl_index_0":I
    :cond_0
    return-object v0
.end method

.method public static final writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V
    .locals 7
    .param p0, "parcel"    # Landroid/os/HwParcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            "Ljava/util/ArrayList<",
            "Lvendor/mediatek/hardware/mtkradioex/V3_0/OperatorInfoWithAct;",
            ">;)V"
        }
    .end annotation

    .line 108
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V3_0/OperatorInfoWithAct;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 110
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 111
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 112
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 113
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x58

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 114
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 115
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/mediatek/hardware/mtkradioex/V3_0/OperatorInfoWithAct;

    mul-int/lit8 v5, v3, 0x58

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lvendor/mediatek/hardware/mtkradioex/V3_0/OperatorInfoWithAct;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 114
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 117
    .end local v3    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 120
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 121
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 11
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 12
    return v0

    .line 14
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 15
    return v1

    .line 17
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lvendor/mediatek/hardware/mtkradioex/V3_0/OperatorInfoWithAct;

    if-eq v2, v3, :cond_2

    .line 18
    return v1

    .line 20
    :cond_2
    move-object v2, p1

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/OperatorInfoWithAct;

    .line 21
    .local v2, "other":Lvendor/mediatek/hardware/mtkradioex/V3_0/OperatorInfoWithAct;
    iget-object v3, p0, Lvendor/mediatek/hardware/mtkradioex/V3_0/OperatorInfoWithAct;->base:Landroid/hardware/radio/V1_0/OperatorInfo;

    iget-object v4, v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/OperatorInfoWithAct;->base:Landroid/hardware/radio/V1_0/OperatorInfo;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 22
    return v1

    .line 24
    :cond_3
    iget-object v3, p0, Lvendor/mediatek/hardware/mtkradioex/V3_0/OperatorInfoWithAct;->lac:Ljava/lang/String;

    iget-object v4, v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/OperatorInfoWithAct;->lac:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 25
    return v1

    .line 27
    :cond_4
    iget-object v3, p0, Lvendor/mediatek/hardware/mtkradioex/V3_0/OperatorInfoWithAct;->act:Ljava/lang/String;

    iget-object v4, v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/OperatorInfoWithAct;->act:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 28
    return v1

    .line 30
    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 35
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lvendor/mediatek/hardware/mtkradioex/V3_0/OperatorInfoWithAct;->base:Landroid/hardware/radio/V1_0/OperatorInfo;

    .line 36
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/mediatek/hardware/mtkradioex/V3_0/OperatorInfoWithAct;->lac:Ljava/lang/String;

    .line 37
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/mediatek/hardware/mtkradioex/V3_0/OperatorInfoWithAct;->act:Ljava/lang/String;

    .line 38
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 35
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 16
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 83
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/OperatorInfoWithAct;->base:Landroid/hardware/radio/V1_0/OperatorInfo;

    const-wide/16 v3, 0x0

    add-long v5, p3, v3

    move-object/from16 v15, p1

    invoke-virtual {v2, v15, v1, v5, v6}, Landroid/hardware/radio/V1_0/OperatorInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 84
    const-wide/16 v5, 0x38

    add-long v7, p3, v5

    invoke-virtual {v1, v7, v8}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/OperatorInfoWithAct;->lac:Ljava/lang/String;

    .line 86
    nop

    .line 87
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    int-to-long v8, v2

    .line 88
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v5, p3, v5

    add-long v12, v5, v3

    .line 86
    const/4 v14, 0x0

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 91
    const-wide/16 v5, 0x48

    add-long v7, p3, v5

    invoke-virtual {v1, v7, v8}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/OperatorInfoWithAct;->act:Ljava/lang/String;

    .line 93
    nop

    .line 94
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    int-to-long v8, v2

    .line 95
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v5, p3, v5

    add-long v12, v5, v3

    .line 93
    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 98
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 56
    const-wide/16 v0, 0x58

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 57
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/OperatorInfoWithAct;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 58
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    const-string v1, ".base = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget-object v1, p0, Lvendor/mediatek/hardware/mtkradioex/V3_0/OperatorInfoWithAct;->base:Landroid/hardware/radio/V1_0/OperatorInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    const-string v1, ", .lac = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    iget-object v1, p0, Lvendor/mediatek/hardware/mtkradioex/V3_0/OperatorInfoWithAct;->lac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    const-string v1, ", .act = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    iget-object v1, p0, Lvendor/mediatek/hardware/mtkradioex/V3_0/OperatorInfoWithAct;->act:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 3
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 125
    iget-object v0, p0, Lvendor/mediatek/hardware/mtkradioex/V3_0/OperatorInfoWithAct;->base:Landroid/hardware/radio/V1_0/OperatorInfo;

    const-wide/16 v1, 0x0

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/radio/V1_0/OperatorInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 126
    const-wide/16 v0, 0x38

    add-long/2addr v0, p2

    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V3_0/OperatorInfoWithAct;->lac:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 127
    const-wide/16 v0, 0x48

    add-long/2addr v0, p2

    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V3_0/OperatorInfoWithAct;->act:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 128
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 101
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x58

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 102
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/OperatorInfoWithAct;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 103
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 104
    return-void
.end method
