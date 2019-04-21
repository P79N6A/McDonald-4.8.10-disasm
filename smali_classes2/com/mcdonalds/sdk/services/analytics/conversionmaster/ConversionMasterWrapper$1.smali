.class synthetic Lcom/mcdonalds/sdk/services/analytics/conversionmaster/ConversionMasterWrapper$1;
.super Ljava/lang/Object;
.source "ConversionMasterWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/sdk/services/analytics/conversionmaster/ConversionMasterWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$mcdonalds$sdk$services$analytics$AnalyticType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    invoke-static {}, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->values()[Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/mcdonalds/sdk/services/analytics/conversionmaster/ConversionMasterWrapper$1;->$SwitchMap$com$mcdonalds$sdk$services$analytics$AnalyticType:[I

    :try_start_0
    sget-object v0, Lcom/mcdonalds/sdk/services/analytics/conversionmaster/ConversionMasterWrapper$1;->$SwitchMap$com$mcdonalds$sdk$services$analytics$AnalyticType:[I

    sget-object v1, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->Custom:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/mcdonalds/sdk/services/analytics/conversionmaster/ConversionMasterWrapper$1;->$SwitchMap$com$mcdonalds$sdk$services$analytics$AnalyticType:[I

    sget-object v1, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->Event:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
