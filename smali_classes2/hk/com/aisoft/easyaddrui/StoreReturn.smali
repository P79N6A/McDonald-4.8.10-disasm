.class public Lhk/com/aisoft/easyaddrui/StoreReturn;
.super Ljava/lang/Object;
.source "StoreReturn.java"


# instance fields
.field public sCode:Ljava/lang/String;

.field public sHub1:Ljava/lang/String;

.field public sHub2:Ljava/lang/String;

.field public sHub3:Ljava/lang/String;

.field public sHub4:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "mCode"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/StoreReturn;->sCode:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/StoreReturn;->sHub1:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/StoreReturn;->sHub2:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/StoreReturn;->sHub3:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/StoreReturn;->sHub4:Ljava/lang/String;

    .line 16
    iput-object p1, p0, Lhk/com/aisoft/easyaddrui/StoreReturn;->sCode:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public setHub(Ljava/lang/String;)V
    .locals 6
    .param p1, "mPayLoad"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 20
    const-string v2, "\\\"Stores\\\":["

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_5

    .line 21
    const-string v2, "1"

    iput-object v2, p0, Lhk/com/aisoft/easyaddrui/StoreReturn;->sCode:Ljava/lang/String;

    .line 22
    const-string v2, "\"Stores\":["

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const-string v3, "\"Stores\":["

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 23
    const-string v2, "]"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 26
    :try_start_0
    const-string v2, "StoreNumber"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 27
    .local v1, "sStroreSet":[Ljava/lang/String;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 28
    aget-object v2, v1, v0

    const-string v3, "\\\"StoreTypeCode\\\":1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1

    .line 29
    aget-object v2, v1, v0

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lhk/com/aisoft/easyaddrui/StoreReturn;->sHub1:Ljava/lang/String;

    .line 30
    iget-object v2, p0, Lhk/com/aisoft/easyaddrui/StoreReturn;->sHub1:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lhk/com/aisoft/easyaddrui/StoreReturn;->sHub1:Ljava/lang/String;

    const-string v5, "\\\""

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lhk/com/aisoft/easyaddrui/StoreReturn;->sHub1:Ljava/lang/String;

    .line 27
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 31
    :cond_1
    aget-object v2, v1, v0

    const-string v3, "\\\"StoreTypeCode\\\":2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_3

    .line 32
    aget-object v2, v1, v0

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lhk/com/aisoft/easyaddrui/StoreReturn;->sHub2:Ljava/lang/String;

    .line 33
    iget-object v2, p0, Lhk/com/aisoft/easyaddrui/StoreReturn;->sHub2:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lhk/com/aisoft/easyaddrui/StoreReturn;->sHub2:Ljava/lang/String;

    const-string v5, "\\\""

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lhk/com/aisoft/easyaddrui/StoreReturn;->sHub2:Ljava/lang/String;

    goto :goto_1

    .line 43
    .end local v0    # "i":I
    .end local v1    # "sStroreSet":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 53
    :cond_2
    :goto_2
    return-void

    .line 34
    .restart local v0    # "i":I
    .restart local v1    # "sStroreSet":[Ljava/lang/String;
    :cond_3
    aget-object v2, v1, v0

    const-string v3, "\\\"StoreTypeCode\\\":3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_4

    .line 35
    aget-object v2, v1, v0

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lhk/com/aisoft/easyaddrui/StoreReturn;->sHub3:Ljava/lang/String;

    .line 36
    iget-object v2, p0, Lhk/com/aisoft/easyaddrui/StoreReturn;->sHub3:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lhk/com/aisoft/easyaddrui/StoreReturn;->sHub3:Ljava/lang/String;

    const-string v5, "\\\""

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lhk/com/aisoft/easyaddrui/StoreReturn;->sHub3:Ljava/lang/String;

    goto :goto_1

    .line 37
    :cond_4
    aget-object v2, v1, v0

    const-string v3, "\\\"StoreTypeCode\\\":4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    .line 38
    aget-object v2, v1, v0

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lhk/com/aisoft/easyaddrui/StoreReturn;->sHub4:Ljava/lang/String;

    .line 39
    iget-object v2, p0, Lhk/com/aisoft/easyaddrui/StoreReturn;->sHub4:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lhk/com/aisoft/easyaddrui/StoreReturn;->sHub4:Ljava/lang/String;

    const-string v5, "\\\""

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lhk/com/aisoft/easyaddrui/StoreReturn;->sHub4:Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 47
    .end local v0    # "i":I
    .end local v1    # "sStroreSet":[Ljava/lang/String;
    :cond_5
    const-string v2, "\"ResultCode\":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const-string v3, "\"ResultCode\":"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 48
    const-string v2, "}"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 49
    iput-object p1, p0, Lhk/com/aisoft/easyaddrui/StoreReturn;->sCode:Ljava/lang/String;

    goto :goto_2
.end method
