.class Lcom/mcdonalds/app/ordering/menu/MenuGridFragment$4;
.super Ljava/lang/Object;
.source "MenuGridFragment.java"

# interfaces
.implements Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->refreshData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment$4;->this$0:Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBuildProductMapComplete(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Category;",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Product;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "productMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/mcdonalds/sdk/modules/models/Category;Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Product;>;>;"
    const/4 v2, 0x0

    const-string v0, "onBuildProductMapComplete"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 273
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment$4;->this$0:Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;

    invoke-virtual {v0, v2}, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->setIsDataRefreshing(Z)V

    .line 274
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment$4;->this$0:Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;

    invoke-static {v0, p1}, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->access$300(Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;Ljava/util/Map;)V

    .line 275
    return-void
.end method
