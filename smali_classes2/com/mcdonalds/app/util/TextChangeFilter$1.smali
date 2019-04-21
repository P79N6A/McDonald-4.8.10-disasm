.class Lcom/mcdonalds/app/util/TextChangeFilter$1;
.super Ljava/lang/Object;
.source "TextChangeFilter.java"

# interfaces
.implements Landroid/widget/Filter$FilterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/util/TextChangeFilter;->onTextChanged(Ljava/lang/CharSequence;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/util/TextChangeFilter;

.field final synthetic val$searchText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/util/TextChangeFilter;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/util/TextChangeFilter;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/mcdonalds/app/util/TextChangeFilter$1;->this$0:Lcom/mcdonalds/app/util/TextChangeFilter;

    iput-object p2, p0, Lcom/mcdonalds/app/util/TextChangeFilter$1;->val$searchText:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFilterComplete(I)V
    .locals 5
    .param p1, "count"    # I

    .prologue
    const/4 v4, 0x0

    const-string v0, "onFilterComplete"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/util/TextChangeFilter$1;->val$searchText:Ljava/lang/String;

    invoke-virtual {v0, v1, v4, v4, p1}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->setSearchTerm(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;I)V

    .line 33
    return-void
.end method
