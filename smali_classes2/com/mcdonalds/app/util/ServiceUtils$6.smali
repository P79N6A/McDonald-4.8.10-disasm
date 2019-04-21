.class Lcom/mcdonalds/app/util/ServiceUtils$6;
.super Lcom/google/gson/reflect/TypeToken;
.source "ServiceUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/util/ServiceUtils;->retrieveOffers(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/mcdonalds/sdk/modules/models/Offer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/util/ServiceUtils;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/util/ServiceUtils;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/util/ServiceUtils;

    .prologue
    .line 335
    iput-object p1, p0, Lcom/mcdonalds/app/util/ServiceUtils$6;->this$0:Lcom/mcdonalds/app/util/ServiceUtils;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
