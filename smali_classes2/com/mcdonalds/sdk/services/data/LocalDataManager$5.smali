.class Lcom/mcdonalds/sdk/services/data/LocalDataManager$5;
.super Lcom/google/gson/reflect/TypeToken;
.source "LocalDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getStringList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/sdk/services/data/LocalDataManager;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/services/data/LocalDataManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    .prologue
    .line 671
    iput-object p1, p0, Lcom/mcdonalds/sdk/services/data/LocalDataManager$5;->this$0:Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
