.class synthetic Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment$3;
.super Ljava/lang/Object;
.source "PaymentSelectionFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$mcdonalds$app$ordering$preparepayment$PaymentSelectionListAdapterHeaders$CardRow:[I

.field static final synthetic $SwitchMap$com$mcdonalds$sdk$modules$models$PaymentMethod$PaymentMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 149
    invoke-static {}, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->values()[Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment$3;->$SwitchMap$com$mcdonalds$sdk$modules$models$PaymentMethod$PaymentMode:[I

    :try_start_0
    sget-object v0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment$3;->$SwitchMap$com$mcdonalds$sdk$modules$models$PaymentMethod$PaymentMode:[I

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->Cash:Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment$3;->$SwitchMap$com$mcdonalds$sdk$modules$models$PaymentMethod$PaymentMode:[I

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->Credit:Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment$3;->$SwitchMap$com$mcdonalds$sdk$modules$models$PaymentMethod$PaymentMode:[I

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->ThirdPart:Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    .line 157
    :goto_2
    invoke-static {}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$CardRow;->values()[Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$CardRow;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment$3;->$SwitchMap$com$mcdonalds$app$ordering$preparepayment$PaymentSelectionListAdapterHeaders$CardRow:[I

    :try_start_3
    sget-object v0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment$3;->$SwitchMap$com$mcdonalds$app$ordering$preparepayment$PaymentSelectionListAdapterHeaders$CardRow:[I

    sget-object v1, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$CardRow;->Card:Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$CardRow;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$CardRow;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment$3;->$SwitchMap$com$mcdonalds$app$ordering$preparepayment$PaymentSelectionListAdapterHeaders$CardRow:[I

    sget-object v1, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$CardRow;->Add:Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$CardRow;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$CardRow;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment$3;->$SwitchMap$com$mcdonalds$app$ordering$preparepayment$PaymentSelectionListAdapterHeaders$CardRow:[I

    sget-object v1, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$CardRow;->One_Time:Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$CardRow;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$CardRow;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    return-void

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_3

    .line 149
    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v0

    goto :goto_0
.end method
