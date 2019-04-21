.class public Lcom/mcdonalds/sdk/services/data/DataPasser;
.super Ljava/lang/Object;
.source "DataPasser.java"


# static fields
.field public static KEY_NOT_FOUND:I

.field private static instance:Lcom/mcdonalds/sdk/services/data/DataPasser;


# instance fields
.field private currentKey:I

.field private mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mSparseArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, -0x1

    sput v0, Lcom/mcdonalds/sdk/services/data/DataPasser;->KEY_NOT_FOUND:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x1

    iput v0, p0, Lcom/mcdonalds/sdk/services/data/DataPasser;->currentKey:I

    .line 31
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/services/data/DataPasser;->mSparseArray:Landroid/util/SparseArray;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/services/data/DataPasser;->mMap:Ljava/util/HashMap;

    .line 33
    return-void
.end method

.method public static getInstance()Lcom/mcdonalds/sdk/services/data/DataPasser;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/mcdonalds/sdk/services/data/DataPasser;->instance:Lcom/mcdonalds/sdk/services/data/DataPasser;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/mcdonalds/sdk/services/data/DataPasser;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/services/data/DataPasser;-><init>()V

    sput-object v0, Lcom/mcdonalds/sdk/services/data/DataPasser;->instance:Lcom/mcdonalds/sdk/services/data/DataPasser;

    .line 41
    :cond_0
    sget-object v0, Lcom/mcdonalds/sdk/services/data/DataPasser;->instance:Lcom/mcdonalds/sdk/services/data/DataPasser;

    return-object v0
.end method


# virtual methods
.method public getData(I)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 65
    iget-object v1, p0, Lcom/mcdonalds/sdk/services/data/DataPasser;->mSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 66
    .local v0, "ret":Ljava/lang/Object;
    iget-object v1, p0, Lcom/mcdonalds/sdk/services/data/DataPasser;->mSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 68
    return-object v0
.end method

.method public getData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 57
    :try_start_0
    iget-object v1, p0, Lcom/mcdonalds/sdk/services/data/DataPasser;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 59
    :goto_0
    return-object v1

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/ClassCastException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public putData(Ljava/lang/Object;)I
    .locals 2
    .param p1, "data"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 50
    iget v0, p0, Lcom/mcdonalds/sdk/services/data/DataPasser;->currentKey:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mcdonalds/sdk/services/data/DataPasser;->currentKey:I

    .line 51
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/data/DataPasser;->mSparseArray:Landroid/util/SparseArray;

    iget v1, p0, Lcom/mcdonalds/sdk/services/data/DataPasser;->currentKey:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 52
    iget v0, p0, Lcom/mcdonalds/sdk/services/data/DataPasser;->currentKey:I

    return v0
.end method

.method public putData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/data/DataPasser;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    return-void
.end method
