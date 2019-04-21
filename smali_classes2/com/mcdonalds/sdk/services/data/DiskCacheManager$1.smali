.class Lcom/mcdonalds/sdk/services/data/DiskCacheManager$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "DiskCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/services/data/DiskCacheManager;->initializeKeySet()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken",
        "<",
        "Ljava/util/Set",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/sdk/services/data/DiskCacheManager;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/services/data/DiskCacheManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/services/data/DiskCacheManager;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/mcdonalds/sdk/services/data/DiskCacheManager$1;->this$0:Lcom/mcdonalds/sdk/services/data/DiskCacheManager;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
