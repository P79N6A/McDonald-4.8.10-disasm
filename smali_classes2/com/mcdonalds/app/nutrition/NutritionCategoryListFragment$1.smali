.class Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment$1;
.super Ljava/lang/Object;
.source "NutritionCategoryListFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;->loadHeaderImage(Landroid/view/LayoutInflater;)V
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
        "Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment$NutritionResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;

.field final synthetic val$foodMenuTop:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment$1;->this$0:Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;

    iput-object p2, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment$1;->val$foodMenuTop:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment$NutritionResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 4
    .param p1, "response"    # Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment$NutritionResponse;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

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

    .line 121
    if-nez p3, :cond_1

    .line 122
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment$1;->this$0:Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment$1;->this$0:Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 124
    invoke-virtual {p1}, Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment$NutritionResponse;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->asBitmap()Lcom/bumptech/glide/BitmapTypeRequest;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 126
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/BitmapTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    const v1, 0x7f02024f

    .line 127
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/BitmapRequestBuilder;->placeholder(I)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    new-instance v1, Lcom/mcdonalds/app/util/DownloadBitmap;

    iget-object v2, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment$1;->this$0:Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;

    .line 128
    invoke-virtual {v2}, Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment$1;->val$foodMenuTop:Landroid/widget/ImageView;

    invoke-direct {v1, v2, v3}, Lcom/mcdonalds/app/util/DownloadBitmap;-><init>(Landroid/content/Context;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/BitmapRequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    invoke-virtual {p3}, Lcom/mcdonalds/sdk/AsyncException;->printStackTrace()V

    goto :goto_0
.end method

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

    .line 116
    check-cast p1, Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment$NutritionResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment$1;->onResponse(Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment$NutritionResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
