.class Lcom/mcdonalds/sdk/services/data/LocalDataManager$8;
.super Lcom/google/gson/reflect/TypeToken;
.source "LocalDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getObjectFromCache(Ljava/lang/String;Ljava/lang/reflect/Type;Z)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/sdk/services/data/LocalDataManager;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/services/data/LocalDataManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    .prologue
    .line 942
    iput-object p1, p0, Lcom/mcdonalds/sdk/services/data/LocalDataManager$8;->this$0:Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method