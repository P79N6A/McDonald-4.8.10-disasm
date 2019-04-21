.class public Lcom/kochava/base/Tracker$Event;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroid/support/annotation/AnyThread;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kochava/base/Tracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Event"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/kochava/base/Tracker$Event;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:Lorg/json/JSONObject;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field final b:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field c:J

.field d:Z

.field e:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field f:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kochava/base/Tracker$Event$1;

    invoke-direct {v0}, Lcom/kochava/base/Tracker$Event$1;-><init>()V

    sput-object v0, Lcom/kochava/base/Tracker$Event;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/kochava/base/Tracker$Event;->a:Lorg/json/JSONObject;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/kochava/base/Tracker$Event;->c:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kochava/base/Tracker$Event;->d:Z

    iput-object v2, p0, Lcom/kochava/base/Tracker$Event;->e:Ljava/lang/String;

    iput-object v2, p0, Lcom/kochava/base/Tracker$Event;->f:Ljava/lang/String;

    packed-switch p1, :pswitch_data_0

    const-string v0, ""

    iput-object v0, p0, Lcom/kochava/base/Tracker$Event;->b:Ljava/lang/String;

    :goto_0
    invoke-static {}, Lcom/kochava/base/d;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kochava/base/Tracker$Event;->c:J

    return-void

    :pswitch_0
    const-string v0, "Achievement"

    iput-object v0, p0, Lcom/kochava/base/Tracker$Event;->b:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    const-string v0, "Add to Cart"

    iput-object v0, p0, Lcom/kochava/base/Tracker$Event;->b:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    const-string v0, "Add to Wish List"

    iput-object v0, p0, Lcom/kochava/base/Tracker$Event;->b:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    const-string v0, "Checkout Start"

    iput-object v0, p0, Lcom/kochava/base/Tracker$Event;->b:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    const-string v0, "Level Complete"

    iput-object v0, p0, Lcom/kochava/base/Tracker$Event;->b:Ljava/lang/String;

    goto :goto_0

    :pswitch_5
    const-string v0, "Purchase"

    iput-object v0, p0, Lcom/kochava/base/Tracker$Event;->b:Ljava/lang/String;

    goto :goto_0

    :pswitch_6
    const-string v0, "Rating"

    iput-object v0, p0, Lcom/kochava/base/Tracker$Event;->b:Ljava/lang/String;

    goto :goto_0

    :pswitch_7
    const-string v0, "Registration Complete"

    iput-object v0, p0, Lcom/kochava/base/Tracker$Event;->b:Ljava/lang/String;

    goto :goto_0

    :pswitch_8
    const-string v0, "Search"

    iput-object v0, p0, Lcom/kochava/base/Tracker$Event;->b:Ljava/lang/String;

    goto :goto_0

    :pswitch_9
    const-string v0, "Tutorial Complete"

    iput-object v0, p0, Lcom/kochava/base/Tracker$Event;->b:Ljava/lang/String;

    goto :goto_0

    :pswitch_a
    const-string v0, "View"

    iput-object v0, p0, Lcom/kochava/base/Tracker$Event;->b:Ljava/lang/String;

    goto :goto_0

    :pswitch_b
    const-string v0, "Ad View"

    iput-object v0, p0, Lcom/kochava/base/Tracker$Event;->b:Ljava/lang/String;

    goto :goto_0

    :pswitch_c
    const-string v0, "Push Received"

    iput-object v0, p0, Lcom/kochava/base/Tracker$Event;->b:Ljava/lang/String;

    goto :goto_0

    :pswitch_d
    const-string v0, "Push Opened"

    iput-object v0, p0, Lcom/kochava/base/Tracker$Event;->b:Ljava/lang/String;

    goto :goto_0

    :pswitch_e
    const-string v0, "Consent Granted"

    iput-object v0, p0, Lcom/kochava/base/Tracker$Event;->b:Ljava/lang/String;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 8
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iput-object v2, p0, Lcom/kochava/base/Tracker$Event;->a:Lorg/json/JSONObject;

    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/kochava/base/Tracker$Event;->c:J

    iput-boolean v1, p0, Lcom/kochava/base/Tracker$Event;->d:Z

    iput-object v3, p0, Lcom/kochava/base/Tracker$Event;->e:Ljava/lang/String;

    iput-object v3, p0, Lcom/kochava/base/Tracker$Event;->f:Ljava/lang/String;

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/kochava/base/Tracker$Event;->a:Lorg/json/JSONObject;

    invoke-static {v3, v2}, Lcom/kochava/base/d;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kochava/base/Tracker$Event;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/kochava/base/Tracker$Event;->c:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    iput-boolean v0, p0, Lcom/kochava/base/Tracker$Event;->d:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kochava/base/Tracker$Event;->e:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kochava/base/Tracker$Event;->f:Ljava/lang/String;

    return-void

    :catch_0
    move-exception v2

    const/4 v4, 0x2

    const-string v5, "EVT"

    const-string v6, "Event"

    new-array v7, v0, [Ljava/lang/Object;

    aput-object v2, v7, v1

    invoke-static {v4, v5, v6, v7}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v2, v3

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
        .end annotation
    .end param

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/kochava/base/Tracker$Event;->a:Lorg/json/JSONObject;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/kochava/base/Tracker$Event;->c:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kochava/base/Tracker$Event;->d:Z

    iput-object v2, p0, Lcom/kochava/base/Tracker$Event;->e:Ljava/lang/String;

    iput-object v2, p0, Lcom/kochava/base/Tracker$Event;->f:Ljava/lang/String;

    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lcom/kochava/base/Tracker$Event;->b:Ljava/lang/String;

    invoke-static {}, Lcom/kochava/base/d;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kochava/base/Tracker$Event;->c:J

    return-void

    :cond_0
    const-string p1, ""

    goto :goto_0
.end method


# virtual methods
.method public final addCustom(Ljava/lang/String;D)Lcom/kochava/base/Tracker$Event;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iget-object v1, p0, Lcom/kochava/base/Tracker$Event;->a:Lorg/json/JSONObject;

    invoke-static {p1, v0, v1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    return-object p0
.end method

.method public final addCustom(Ljava/lang/String;J)Lcom/kochava/base/Tracker$Event;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/kochava/base/Tracker$Event;->a:Lorg/json/JSONObject;

    invoke-static {p1, v0, v1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    return-object p0
.end method

.method public final addCustom(Ljava/lang/String;Ljava/lang/String;)Lcom/kochava/base/Tracker$Event;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/kochava/base/Tracker$Event;->a:Lorg/json/JSONObject;

    invoke-static {p1, p2, v0}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    return-object p0
.end method

.method public final addCustom(Ljava/lang/String;Ljava/util/Date;)Lcom/kochava/base/Tracker$Event;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
        .end annotation
    .end param
    .param p2    # Ljava/util/Date;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/kochava/base/Tracker$Event;->a:Lorg/json/JSONObject;

    invoke-static {p1, p2, v0}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    return-object p0
.end method

.method public final addCustom(Ljava/lang/String;Z)Lcom/kochava/base/Tracker$Event;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/kochava/base/Tracker$Event;->a:Lorg/json/JSONObject;

    invoke-static {p1, v0, v1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    return-object p0
.end method

.method public final addCustom(Lorg/json/JSONObject;)Lcom/kochava/base/Tracker$Event;
    .locals 6
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-ge v0, v3, :cond_1

    :cond_0
    const/4 v0, 0x2

    const-string v1, "EVT"

    const-string v2, "addCustom"

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Invalid keyValue object"

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/kochava/base/Tracker$Event;->a:Lorg/json/JSONObject;

    invoke-static {v0, p1}, Lcom/kochava/base/d;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public final describeContents()I
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method final enableDurationTracking()Lcom/kochava/base/Tracker$Event;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kochava/base/Tracker$Event;->d:Z

    return-object p0
.end method

.method public final setAction(Ljava/lang/String;)Lcom/kochava/base/Tracker$Event;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "action"

    iget-object v1, p0, Lcom/kochava/base/Tracker$Event;->a:Lorg/json/JSONObject;

    invoke-static {v0, p1, v1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    return-object p0
.end method

.method public final setAdCampaignId(Ljava/lang/String;)Lcom/kochava/base/Tracker$Event;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "ad_campaign_id"

    iget-object v1, p0, Lcom/kochava/base/Tracker$Event;->a:Lorg/json/JSONObject;

    invoke-static {v0, p1, v1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    return-object p0
.end method

.method public final setAdCampaignName(Ljava/lang/String;)Lcom/kochava/base/Tracker$Event;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "ad_campaign_name"

    iget-object v1, p0, Lcom/kochava/base/Tracker$Event;->a:Lorg/json/JSONObject;

    invoke-static {v0, p1, v1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    return-object p0
.end method

.method public final setAdDeviceType(Ljava/lang/String;)Lcom/kochava/base/Tracker$Event;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "device_type"

    iget-object v1, p0, Lcom/kochava/base/Tracker$Event;->a:Lorg/json/JSONObject;

    invoke-static {v0, p1, v1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    return-object p0
.end method

.method public final setAdGroupId(Ljava/lang/String;)Lcom/kochava/base/Tracker$Event;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "ad_group_id"

    iget-object v1, p0, Lcom/kochava/base/Tracker$Event;->a:Lorg/json/JSONObject;

    invoke-static {v0, p1, v1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    return-object p0
.end method

.method public final setAdGroupName(Ljava/lang/String;)Lcom/kochava/base/Tracker$Event;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "ad_group_name"

    iget-object v1, p0, Lcom/kochava/base/Tracker$Event;->a:Lorg/json/JSONObject;

    invoke-static {v0, p1, v1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    return-object p0
.end method

.method public final setAdMediationName(Ljava/lang/String;)Lcom/kochava/base/Tracker$Event;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "ad_mediation_name"

    iget-object v1, p0, Lcom/kochava/base/Tracker$Event;->a:Lorg/json/JSONObject;

    invoke-static {v0, p1, v1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    return-object p0
.end method

.method public final setAdNetworkName(Ljava/lang/String;)Lcom/kochava/base/Tracker$Event;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "ad_network_name"

    iget-object v1, p0, Lcom/kochava/base/Tracker$Event;->a:Lorg/json/JSONObject;

    invoke-static {v0, p1, v1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    return-object p0
.end method

.method public final setAdPlacement(Ljava/lang/String;)Lcom/kochava/base/Tracker$Event;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "placement"

    iget-object v1, p0, Lcom/kochava/base/Tracker$Event;->a:Lorg/json/JSONObject;

    invoke-static {v0, p1, v1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    return-object p0
.end method

.method public final setAdSize(Ljava/lang/String;)Lcom/kochava/base/Tracker$Event;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "ad_size"

    iget-object v1, p0, Lcom/kochava/base/Tracker$Event;->a:Lorg/json/JSONObject;

    invoke-static {v0, p1, v1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    return-object p0
.end method

.method public final setAdType(Ljava/lang/String;)Lcom/kochava/base/Tracker$Event;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "ad_type"

    iget-object v1, p0, Lcom/kochava/base/Tracker$Event;->a:Lorg/json/JSONObject;

    invoke-static {v0, p1, v1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    return-object p0
.end method

.method public final setBackground(Z)Lcom/kochava/base/Tracker$Event;
    .locals 3
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "background"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Lcom/kochava/base/Tracker$Event;->a:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    return-object p0
.end method

.method public final setCheckoutAsGuest(Ljava/lang/String;)Lcom/kochava/base/Tracker$Event;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "checkout_as_guest"

    iget-object v1, p0, Lcom/kochava/base/Tracker$Event;->a:Lorg/json/JSONObject;

    invoke-static {v0, p1, v1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    return-object p0
.end method

.method public final setCompleted(Z)Lcom/kochava/base/Tracker$Event;
    .locals 3
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "completed"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Lcom/kochava/base/Tracker$Event;->a:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    return-object p0
.end method

.method public final setContentId(Ljava/lang/String;)Lcom/kochava/base/Tracker$Event;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "content_id"

    iget-object v1, p0, Lcom/kochava/base/Tracker$Event;->a:Lorg/json/JSONObject;

    invoke-static {v0, p1, v1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    return-object p0
.end method

.method public final setContentType(Ljava/lang/String;)Lcom/kochava/base/Tracker$Event;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "content_type"

    iget-object v1, p0, Lcom/kochava/base/Tracker$Event;->a:Lorg/json/JSONObject;

    invoke-static {v0, p1, v1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    return-object p0
.end method

.method public final setCurrency(Ljava/lang/String;)Lcom/kochava/base/Tracker$Event;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "currency"

    iget-object v1, p0, Lcom/kochava/base/Tracker$Event;->a:Lorg/json/JSONObject;

    invoke-static {v0, p1, v1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    return-object p0
.end method

.method public final setDate(Ljava/lang/String;)Lcom/kochava/base/Tracker$Event;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "date"

    iget-object v1, p0, Lcom/kochava/base/Tracker$Event;->a:Lorg/json/JSONObject;

    invoke-static {v0, p1, v1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    return-object p0
.end method

.method public final setDate(Ljava/util/Date;)Lcom/kochava/base/Tracker$Event;
    .locals 2
    .param p1    # Ljava/util/Date;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "date"

    iget-object v1, p0, Lcom/kochava/base/Tracker$Event;->a:Lorg/json/JSONObject;

    invoke-static {v0, p1, v1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    return-object p0
.end method

.method public final setDescription(Ljava/lang/String;)Lcom/kochava/base/Tracker$Event;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "description"

    iget-object v1, p0, Lcom/kochava/base/Tracker$Event;->a:Lorg/json/JSONObject;

    invoke-static {v0, p1, v1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    return-object p0
.end method

.method public final setDestination(Ljava/lang/String;)Lcom/kochava/base/Tracker$Event;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "destination"

    iget-object v1, p0, Lcom/kochava/base/Tracker$Event;->a:Lorg/json/JSONObject;

    invoke-static {v0, p1, v1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    return-object p0
.end method

.method public final setDuration(D)Lcom/kochava/base/Tracker$Event;
    .locals 3
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "duration"

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-object v2, p0, Lcom/kochava/base/Tracker$Event;->a:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    return-object p0
.end method

.method public final setEndDate(Ljava/lang/String;)Lcom/kochava/base/Tracker$Event;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "end_date"

    iget-object v1, p0, Lcom/kochava/base/Tracker$Event;->a:Lorg/json/JSONObject;

    invoke-static {v0, p1, v1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    return-object p0
.end method

.method public final setEndDate(Ljava/util/Date;)Lcom/kochava/base/Tracker$Event;
    .locals 2
    .param p1    # Ljava/util/Date;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "end_date"

    iget-object v1, p0, Lcom/kochava/base/Tracker$Event;->a:Lorg/json/JSONObject;

    invoke-static {v0, p1, v1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    return-object p0
.end method

.method public final setGooglePlayReceipt(Ljava/lang/String;Ljava/lang/String;)Lcom/kochava/base/Tracker$Event;
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/kochava/base/Tracker$Event;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/kochava/base/Tracker$Event;->f:Ljava/lang/String;

    :goto_0
    return-object p0

    :cond_0
    const/4 v0, 0x2

    const-string v1, "EVT"

    const-string v2, "setGooglePlay"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Invalid Input"

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final setItemAddedFrom(Ljava/lang/String;)Lcom/kochava/base/Tracker$Event;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "item_added_from"

    iget-object v1, p0, Lcom/kochava/base/Tracker$Event;->a:Lorg/json/JSONObject;

    invoke-static {v0, p1, v1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    return-object p0
.end method

.method public final setLevel(Ljava/lang/String;)Lcom/kochava/base/Tracker$Event;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "level"

    iget-object v1, p0, Lcom/kochava/base/Tracker$Event;->a:Lorg/json/JSONObject;

    invoke-static {v0, p1, v1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    return-object p0
.end method

.method public final setMaxRatingValue(D)Lcom/kochava/base/Tracker$Event;
    .locals 3
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "max_rating_value"

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-object v2, p0, Lcom/kochava/base/Tracker$Event;->a:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    return-object p0
.end method

.method public final setName(Ljava/lang/String;)Lcom/kochava/base/Tracker$Event;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "name"

    iget-object v1, p0, Lcom/kochava/base/Tracker$Event;->a:Lorg/json/JSONObject;

    invoke-static {v0, p1, v1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    return-object p0
.end method

.method public final setOrderId(Ljava/lang/String;)Lcom/kochava/base/Tracker$Event;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "order_id"

    iget-object v1, p0, Lcom/kochava/base/Tracker$Event;->a:Lorg/json/JSONObject;

    invoke-static {v0, p1, v1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    return-object p0
.end method

.method public final setOrigin(Ljava/lang/String;)Lcom/kochava/base/Tracker$Event;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "origin"

    iget-object v1, p0, Lcom/kochava/base/Tracker$Event;->a:Lorg/json/JSONObject;

    invoke-static {v0, p1, v1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    return-object p0
.end method

.method public final setPayload(Landroid/os/Bundle;)Lcom/kochava/base/Tracker$Event;
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "payload"

    invoke-static {p1}, Lcom/kochava/base/d;->f(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/kochava/base/Tracker$Event;->a:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    return-object p0
.end method

.method public final setPayload(Lorg/json/JSONObject;)Lcom/kochava/base/Tracker$Event;
    .locals 2
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "payload"

    iget-object v1, p0, Lcom/kochava/base/Tracker$Event;->a:Lorg/json/JSONObject;

    invoke-static {v0, p1, v1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    return-object p0
.end method

.method public final setPrice(D)Lcom/kochava/base/Tracker$Event;
    .locals 3
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "price"

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-object v2, p0, Lcom/kochava/base/Tracker$Event;->a:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    return-object p0
.end method

.method public final setQuantity(D)Lcom/kochava/base/Tracker$Event;
    .locals 3
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "quantity"

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-object v2, p0, Lcom/kochava/base/Tracker$Event;->a:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    return-object p0
.end method

.method public final setRatingValue(D)Lcom/kochava/base/Tracker$Event;
    .locals 3
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "rating_value"

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-object v2, p0, Lcom/kochava/base/Tracker$Event;->a:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    return-object p0
.end method

.method public final setReceiptId(Ljava/lang/String;)Lcom/kochava/base/Tracker$Event;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "receipt_id"

    iget-object v1, p0, Lcom/kochava/base/Tracker$Event;->a:Lorg/json/JSONObject;

    invoke-static {v0, p1, v1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    return-object p0
.end method

.method public final setReferralFrom(Ljava/lang/String;)Lcom/kochava/base/Tracker$Event;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "referral_from"

    iget-object v1, p0, Lcom/kochava/base/Tracker$Event;->a:Lorg/json/JSONObject;

    invoke-static {v0, p1, v1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    return-object p0
.end method

.method public final setRegistrationMethod(Ljava/lang/String;)Lcom/kochava/base/Tracker$Event;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "registration_method"

    iget-object v1, p0, Lcom/kochava/base/Tracker$Event;->a:Lorg/json/JSONObject;

    invoke-static {v0, p1, v1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    return-object p0
.end method

.method public final setResults(Ljava/lang/String;)Lcom/kochava/base/Tracker$Event;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "results"

    iget-object v1, p0, Lcom/kochava/base/Tracker$Event;->a:Lorg/json/JSONObject;

    invoke-static {v0, p1, v1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    return-object p0
.end method

.method public final setScore(Ljava/lang/String;)Lcom/kochava/base/Tracker$Event;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "score"

    iget-object v1, p0, Lcom/kochava/base/Tracker$Event;->a:Lorg/json/JSONObject;

    invoke-static {v0, p1, v1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    return-object p0
.end method

.method public final setSearchTerm(Ljava/lang/String;)Lcom/kochava/base/Tracker$Event;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "search_term"

    iget-object v1, p0, Lcom/kochava/base/Tracker$Event;->a:Lorg/json/JSONObject;

    invoke-static {v0, p1, v1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    return-object p0
.end method

.method public final setSpatialX(D)Lcom/kochava/base/Tracker$Event;
    .locals 3
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "spatial_x"

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-object v2, p0, Lcom/kochava/base/Tracker$Event;->a:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    return-object p0
.end method

.method public final setSpatialY(D)Lcom/kochava/base/Tracker$Event;
    .locals 3
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "spatial_y"

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-object v2, p0, Lcom/kochava/base/Tracker$Event;->a:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    return-object p0
.end method

.method public final setSpatialZ(D)Lcom/kochava/base/Tracker$Event;
    .locals 3
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "spatial_z"

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-object v2, p0, Lcom/kochava/base/Tracker$Event;->a:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    return-object p0
.end method

.method public final setStartDate(Ljava/lang/String;)Lcom/kochava/base/Tracker$Event;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "start_date"

    iget-object v1, p0, Lcom/kochava/base/Tracker$Event;->a:Lorg/json/JSONObject;

    invoke-static {v0, p1, v1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    return-object p0
.end method

.method public final setStartDate(Ljava/util/Date;)Lcom/kochava/base/Tracker$Event;
    .locals 2
    .param p1    # Ljava/util/Date;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "start_date"

    iget-object v1, p0, Lcom/kochava/base/Tracker$Event;->a:Lorg/json/JSONObject;

    invoke-static {v0, p1, v1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    return-object p0
.end method

.method public final setSuccess(Ljava/lang/String;)Lcom/kochava/base/Tracker$Event;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "success"

    iget-object v1, p0, Lcom/kochava/base/Tracker$Event;->a:Lorg/json/JSONObject;

    invoke-static {v0, p1, v1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    return-object p0
.end method

.method public final setUserId(Ljava/lang/String;)Lcom/kochava/base/Tracker$Event;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "user_id"

    iget-object v1, p0, Lcom/kochava/base/Tracker$Event;->a:Lorg/json/JSONObject;

    invoke-static {v0, p1, v1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    return-object p0
.end method

.method public final setUserName(Ljava/lang/String;)Lcom/kochava/base/Tracker$Event;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "user_name"

    iget-object v1, p0, Lcom/kochava/base/Tracker$Event;->a:Lorg/json/JSONObject;

    invoke-static {v0, p1, v1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    return-object p0
.end method

.method public final setValidated(Ljava/lang/String;)Lcom/kochava/base/Tracker$Event;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "validated"

    iget-object v1, p0, Lcom/kochava/base/Tracker$Event;->a:Lorg/json/JSONObject;

    invoke-static {v0, p1, v1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/kochava/base/Tracker$Event;->a:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/kochava/base/d;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kochava/base/Tracker$Event;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/kochava/base/Tracker$Event;->c:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Lcom/kochava/base/Tracker$Event;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/kochava/base/Tracker$Event;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kochava/base/Tracker$Event;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
