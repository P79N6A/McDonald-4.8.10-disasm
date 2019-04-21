.class Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter$1;
.super Ljava/lang/Object;
.source "MenuGridAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;->onBindViewHolder(Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;

.field final synthetic val$category:Lcom/mcdonalds/sdk/modules/models/Category;

.field final synthetic val$holder:Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter$ViewHolder;

.field final synthetic val$product:Lcom/mcdonalds/sdk/modules/models/Product;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter$ViewHolder;Lcom/mcdonalds/sdk/modules/models/Product;Lcom/mcdonalds/sdk/modules/models/Category;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter$1;->this$0:Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;

    iput-object p2, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter$1;->val$holder:Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter$ViewHolder;

    iput-object p3, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter$1;->val$product:Lcom/mcdonalds/sdk/modules/models/Product;

    iput-object p4, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter$1;->val$category:Lcom/mcdonalds/sdk/modules/models/Category;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-string v0, "onClick"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter$1;->this$0:Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter$1;->val$holder:Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter$ViewHolder;

    iget-object v1, v1, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter$1;->val$product:Lcom/mcdonalds/sdk/modules/models/Product;

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter$1;->val$category:Lcom/mcdonalds/sdk/modules/models/Category;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Category;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter$1;->val$category:Lcom/mcdonalds/sdk/modules/models/Category;

    .line 108
    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/Category;->getID()I

    move-result v4

    .line 107
    invoke-static {v0, v1, v2, v3, v4}, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;->access$000(Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;Landroid/view/View;Lcom/mcdonalds/sdk/modules/models/Product;Ljava/lang/String;I)V

    .line 109
    return-void
.end method
