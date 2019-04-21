.class Lcom/mcdonalds/app/offers/OfferProductFragment$OfferProductListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "OfferProductFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/offers/OfferProductFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OfferProductListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mResource:I

.field final synthetic this$0:Lcom/mcdonalds/app/offers/OfferProductFragment;


# direct methods
.method public constructor <init>(Lcom/mcdonalds/app/offers/OfferProductFragment;Landroid/content/Context;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/offers/OfferProductFragment;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "resource"    # I

    .prologue
    .line 269
    iput-object p1, p0, Lcom/mcdonalds/app/offers/OfferProductFragment$OfferProductListAdapter;->this$0:Lcom/mcdonalds/app/offers/OfferProductFragment;

    .line 270
    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 271
    iput-object p2, p0, Lcom/mcdonalds/app/offers/OfferProductFragment$OfferProductListAdapter;->mContext:Landroid/content/Context;

    .line 272
    iput p3, p0, Lcom/mcdonalds/app/offers/OfferProductFragment$OfferProductListAdapter;->mResource:I

    .line 273
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x4

    const/4 v6, 0x0

    .line 280
    if-nez p2, :cond_2

    .line 281
    iget-object v7, p0, Lcom/mcdonalds/app/offers/OfferProductFragment$OfferProductListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 282
    .local v1, "inflater":Landroid/view/LayoutInflater;
    iget v7, p0, Lcom/mcdonalds/app/offers/OfferProductFragment$OfferProductListAdapter;->mResource:I

    invoke-virtual {v1, v7, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 283
    new-instance v5, Lcom/mcdonalds/app/offers/OfferProductFragment$ViewHolder;

    invoke-direct {v5, p2}, Lcom/mcdonalds/app/offers/OfferProductFragment$ViewHolder;-><init>(Landroid/view/View;)V

    .line 284
    .local v5, "viewHolder":Lcom/mcdonalds/app/offers/OfferProductFragment$ViewHolder;
    invoke-virtual {p2, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 289
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    iget-object v7, v5, Lcom/mcdonalds/app/offers/OfferProductFragment$ViewHolder;->mLayout:Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

    const-string v9, "ProductItemPressed"

    invoke-static {v7, v9, p1}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->setDataLayerTag(Landroid/view/View;Ljava/lang/String;I)V

    .line 290
    iget-object v7, v5, Lcom/mcdonalds/app/offers/OfferProductFragment$ViewHolder;->mHatButton:Landroid/widget/ImageButton;

    const-string v9, "ConfigurationSelectionButtonPressed"

    invoke-static {v7, v9}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->setDataLayerTag(Landroid/view/View;Ljava/lang/String;)V

    .line 292
    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/offers/OfferProductFragment$OfferProductListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .local v2, "item":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    move-object v3, p3

    .line 295
    check-cast v3, Landroid/widget/ListView;

    .line 296
    .local v3, "lv":Landroid/widget/ListView;
    iget-object v7, v5, Lcom/mcdonalds/app/offers/OfferProductFragment$ViewHolder;->mLayout:Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

    invoke-virtual {v3, p1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v9

    invoke-virtual {v7, v9}, Lcom/mcdonalds/app/widget/CheckableRelativeLayout;->setChecked(Z)V

    .line 298
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 299
    iget-object v7, v5, Lcom/mcdonalds/app/offers/OfferProductFragment$ViewHolder;->mProductName:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mcdonalds/sdk/modules/models/Product;->getLongName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    :goto_1
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/Product;->getThumbnailImage()Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Lcom/mcdonalds/app/offers/OfferProductFragment$OfferProductListAdapter;->getContext()Landroid/content/Context;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 305
    invoke-virtual {p0}, Lcom/mcdonalds/app/offers/OfferProductFragment$OfferProductListAdapter;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v7

    .line 306
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mcdonalds/sdk/modules/models/Product;->getThumbnailImage()Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mcdonalds/sdk/modules/models/ImageInfo;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v7

    sget-object v9, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 307
    invoke-virtual {v7, v9}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v7

    iget-object v9, v5, Lcom/mcdonalds/app/offers/OfferProductFragment$ViewHolder;->mFoodImageThumb:Landroid/widget/ImageView;

    .line 308
    invoke-virtual {v7, v9}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 312
    :cond_0
    iget-object v7, p0, Lcom/mcdonalds/app/offers/OfferProductFragment$OfferProductListAdapter;->this$0:Lcom/mcdonalds/app/offers/OfferProductFragment;

    invoke-static {v7}, Lcom/mcdonalds/app/offers/OfferProductFragment;->access$300(Lcom/mcdonalds/app/offers/OfferProductFragment;)Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/mcdonalds/app/offers/OfferProductFragment$OfferProductListAdapter;->this$0:Lcom/mcdonalds/app/offers/OfferProductFragment;

    invoke-static {v7, v2}, Lcom/mcdonalds/app/offers/OfferProductFragment;->access$400(Lcom/mcdonalds/app/offers/OfferProductFragment;Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v4, 0x1

    .line 314
    .local v4, "showHatButton":Z
    :goto_2
    iget-object v9, v5, Lcom/mcdonalds/app/offers/OfferProductFragment$ViewHolder;->mHatButton:Landroid/widget/ImageButton;

    if-eqz v4, :cond_5

    move v7, v6

    :goto_3
    invoke-virtual {v9, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 318
    if-eqz v4, :cond_7

    .line 319
    iget-object v7, v5, Lcom/mcdonalds/app/offers/OfferProductFragment$ViewHolder;->mHatButton:Landroid/widget/ImageButton;

    new-instance v9, Lcom/mcdonalds/app/offers/OfferProductFragment$OfferProductListAdapter$1;

    invoke-direct {v9, p0, v2, p1}, Lcom/mcdonalds/app/offers/OfferProductFragment$OfferProductListAdapter$1;-><init>(Lcom/mcdonalds/app/offers/OfferProductFragment$OfferProductListAdapter;Lcom/mcdonalds/sdk/modules/models/OrderProduct;I)V

    invoke-virtual {v7, v9}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getCustomizations()Ljava/util/Map;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getCustomizations()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6

    .line 327
    iget-object v7, v5, Lcom/mcdonalds/app/offers/OfferProductFragment$ViewHolder;->mHatButton:Landroid/widget/ImageButton;

    const v9, 0x7f02015f

    invoke-virtual {v7, v9}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 328
    iget-object v7, v5, Lcom/mcdonalds/app/offers/OfferProductFragment$ViewHolder;->mProductSpecialInstructions:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 329
    iget-object v6, v5, Lcom/mcdonalds/app/offers/OfferProductFragment$ViewHolder;->mProductSpecialInstructions:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getCustomizationsString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    :goto_4
    iget-object v6, p0, Lcom/mcdonalds/app/offers/OfferProductFragment$OfferProductListAdapter;->this$0:Lcom/mcdonalds/app/offers/OfferProductFragment;

    invoke-static {v6}, Lcom/mcdonalds/app/offers/OfferProductFragment;->access$600(Lcom/mcdonalds/app/offers/OfferProductFragment;)Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 343
    iget-object v6, v5, Lcom/mcdonalds/app/offers/OfferProductFragment$ViewHolder;->mInfoButton:Landroid/widget/ImageButton;

    invoke-virtual {v6, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 344
    move-object v0, v5

    .line 346
    .local v0, "holder":Lcom/mcdonalds/app/offers/OfferProductFragment$ViewHolder;
    invoke-static {}, Lcom/mcdonalds/app/util/AppUtils;->hideNutritionIconOnOrderingPages()Z

    move-result v6

    if-nez v6, :cond_1

    .line 347
    iget-object v6, p0, Lcom/mcdonalds/app/offers/OfferProductFragment$OfferProductListAdapter;->this$0:Lcom/mcdonalds/app/offers/OfferProductFragment;

    invoke-static {v6}, Lcom/mcdonalds/app/offers/OfferProductFragment;->access$600(Lcom/mcdonalds/app/offers/OfferProductFragment;)Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule;

    move-result-object v6

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/mcdonalds/app/offers/OfferProductFragment$OfferProductListAdapter$2;

    invoke-direct {v8, p0, v0}, Lcom/mcdonalds/app/offers/OfferProductFragment$OfferProductListAdapter$2;-><init>(Lcom/mcdonalds/app/offers/OfferProductFragment$OfferProductListAdapter;Lcom/mcdonalds/app/offers/OfferProductFragment$ViewHolder;)V

    invoke-virtual {v6, v7, v8}, Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule;->getRecipeForExternalId(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 371
    .end local v0    # "holder":Lcom/mcdonalds/app/offers/OfferProductFragment$ViewHolder;
    :cond_1
    :goto_5
    invoke-static {p2, p1}, Lcom/ensighten/Ensighten;->getViewReturnValue(Landroid/view/View;I)V

    const-string v6, "getView"

    invoke-static {p0, v6}, Lcom/ensighten/Ensighten;->processView(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, -0x1

    invoke-static {v10, v6}, Lcom/ensighten/Ensighten;->getViewReturnValue(Landroid/view/View;I)V

    return-object p2

    .line 287
    .end local v2    # "item":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .end local v3    # "lv":Landroid/widget/ListView;
    .end local v4    # "showHatButton":Z
    .end local v5    # "viewHolder":Lcom/mcdonalds/app/offers/OfferProductFragment$ViewHolder;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mcdonalds/app/offers/OfferProductFragment$ViewHolder;

    .restart local v5    # "viewHolder":Lcom/mcdonalds/app/offers/OfferProductFragment$ViewHolder;
    goto/16 :goto_0

    .line 301
    .restart local v2    # "item":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .restart local v3    # "lv":Landroid/widget/ListView;
    :cond_3
    iget-object v7, v5, Lcom/mcdonalds/app/offers/OfferProductFragment$ViewHolder;->mProductName:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getDisplayName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_4
    move v4, v6

    .line 312
    goto/16 :goto_2

    .restart local v4    # "showHatButton":Z
    :cond_5
    move v7, v8

    .line 314
    goto/16 :goto_3

    .line 331
    :cond_6
    iget-object v6, v5, Lcom/mcdonalds/app/offers/OfferProductFragment$ViewHolder;->mProductSpecialInstructions:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 332
    iget-object v6, v5, Lcom/mcdonalds/app/offers/OfferProductFragment$ViewHolder;->mHatButton:Landroid/widget/ImageButton;

    const v7, 0x7f02015c

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_4

    .line 336
    :cond_7
    iget-object v6, v5, Lcom/mcdonalds/app/offers/OfferProductFragment$ViewHolder;->mHatButton:Landroid/widget/ImageButton;

    invoke-virtual {v6, v10}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    .line 368
    :cond_8
    iget-object v6, v5, Lcom/mcdonalds/app/offers/OfferProductFragment$ViewHolder;->mInfoButton:Landroid/widget/ImageButton;

    invoke-virtual {v6, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_5
.end method
