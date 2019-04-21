.class Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$7$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "DashboardViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$7;->onResponse(Lcom/mcdonalds/app/model/PromoResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
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
        "Lcom/mcdonalds/app/model/Promo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$7;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$7;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$7;

    .prologue
    .line 699
    iput-object p1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$7$1;->this$1:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$7;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
