.class Lcom/mcdonalds/app/nutrition/AllCategoriesFragment$1;
.super Ljava/lang/Object;
.source "AllCategoriesFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/nutrition/AllCategoriesFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mcdonalds/sdk/AsyncListener",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/mcdonalds/sdk/modules/models/Category;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/nutrition/AllCategoriesFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/nutrition/AllCategoriesFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/nutrition/AllCategoriesFragment;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/mcdonalds/app/nutrition/AllCategoriesFragment$1;->this$0:Lcom/mcdonalds/app/nutrition/AllCategoriesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 3

    .prologue
    const-string v0, "onResponse"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/nutrition/AllCategoriesFragment$1;->onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 4
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Category;",
            ">;",
            "Lcom/mcdonalds/sdk/AsyncToken;",
            "Lcom/mcdonalds/sdk/AsyncException;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "response":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Category;>;"
    const/4 v3, 0x0

    const-string v0, "onResponse"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/AllCategoriesFragment$1;->this$0:Lcom/mcdonalds/app/nutrition/AllCategoriesFragment;

    invoke-static {v0, p1}, Lcom/mcdonalds/app/nutrition/AllCategoriesFragment;->access$002(Lcom/mcdonalds/app/nutrition/AllCategoriesFragment;Ljava/util/List;)Ljava/util/List;

    .line 71
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/AllCategoriesFragment$1;->this$0:Lcom/mcdonalds/app/nutrition/AllCategoriesFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/nutrition/AllCategoriesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " categories loaded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 72
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/AllCategoriesFragment$1;->this$0:Lcom/mcdonalds/app/nutrition/AllCategoriesFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/nutrition/AllCategoriesFragment;->access$100(Lcom/mcdonalds/app/nutrition/AllCategoriesFragment;)Lcom/mcdonalds/app/nutrition/AllCategoriesFragment$CategoryListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/nutrition/AllCategoriesFragment$1;->this$0:Lcom/mcdonalds/app/nutrition/AllCategoriesFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/nutrition/AllCategoriesFragment;->access$000(Lcom/mcdonalds/app/nutrition/AllCategoriesFragment;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/nutrition/AllCategoriesFragment$CategoryListAdapter;->setCategoryList(Ljava/util/List;)V

    .line 73
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/AllCategoriesFragment$1;->this$0:Lcom/mcdonalds/app/nutrition/AllCategoriesFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/nutrition/AllCategoriesFragment;->access$100(Lcom/mcdonalds/app/nutrition/AllCategoriesFragment;)Lcom/mcdonalds/app/nutrition/AllCategoriesFragment$CategoryListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/nutrition/AllCategoriesFragment$CategoryListAdapter;->notifyDataSetChanged()V

    .line 74
    return-void
.end method
