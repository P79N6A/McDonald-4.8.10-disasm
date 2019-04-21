.class Lcom/mcdonalds/app/ordering/menu/MenuGridFragment$2;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "MenuGridFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;
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
    .line 141
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment$2;->this$0:Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 9
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    const-string v5, "onScrolled"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v6, v7

    const/4 v7, 0x2

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v6, v7

    invoke-static {p0, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 147
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment$2;->this$0:Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;

    invoke-static {v5}, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->access$100(Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;)Lcom/mcdonalds/app/ordering/menu/MenuActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 148
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_2

    .line 149
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment$2;->this$0:Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;

    invoke-static {v5}, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->access$200(Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;)Landroid/support/v7/widget/GridLayoutManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v7/widget/GridLayoutManager;->findFirstVisibleItemPosition()I

    move-result v4

    .line 150
    .local v4, "position":I
    if-nez v4, :cond_0

    .line 151
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment$2;->this$0:Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;

    invoke-static {v5}, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->access$100(Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;)Lcom/mcdonalds/app/ordering/menu/MenuActivity;

    move-result-object v5

    iget-object v6, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment$2;->this$0:Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;

    invoke-virtual {v6}, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 153
    :cond_0
    add-int/lit8 v2, v4, -0x1

    .line 154
    .local v2, "first":I
    add-int/lit8 v3, v4, -0x2

    .line 155
    .local v3, "last":I
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment$2;->this$0:Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;

    invoke-static {v5}, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->access$000(Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;)Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;->isHeader(I)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment$2;->this$0:Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;

    invoke-static {v5}, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->access$000(Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;)Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;->isHeader(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 156
    :cond_1
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment$2;->this$0:Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;

    invoke-static {v5}, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->access$000(Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;)Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;->getCategoryForPosition(I)Lcom/mcdonalds/sdk/modules/models/Category;

    move-result-object v1

    .line 157
    .local v1, "category":Lcom/mcdonalds/sdk/modules/models/Category;
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment$2;->this$0:Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;

    invoke-static {v5}, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->access$100(Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;)Lcom/mcdonalds/app/ordering/menu/MenuActivity;

    move-result-object v5

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Category;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 161
    .end local v1    # "category":Lcom/mcdonalds/sdk/modules/models/Category;
    .end local v2    # "first":I
    .end local v3    # "last":I
    .end local v4    # "position":I
    :cond_2
    return-void
.end method
