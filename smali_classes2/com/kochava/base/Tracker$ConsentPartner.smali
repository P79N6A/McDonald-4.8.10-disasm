.class public Lcom/kochava/base/Tracker$ConsentPartner;
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
    name = "ConsentPartner"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/kochava/base/Tracker$ConsentPartner;",
            ">;"
        }
    .end annotation
.end field

.field public static KEY_DESCRIPTION:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public static KEY_GRANTED:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public static KEY_NAME:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public static KEY_PARTNERS:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public static KEY_RESPONSE_TIME:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# instance fields
.field public final description:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final granted:Z

.field public final name:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final responseTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kochava/base/Tracker$ConsentPartner$1;

    invoke-direct {v0}, Lcom/kochava/base/Tracker$ConsentPartner$1;-><init>()V

    sput-object v0, Lcom/kochava/base/Tracker$ConsentPartner;->CREATOR:Landroid/os/Parcelable$Creator;

    const-string v0, "name"

    sput-object v0, Lcom/kochava/base/Tracker$ConsentPartner;->KEY_NAME:Ljava/lang/String;

    const-string v0, "description"

    sput-object v0, Lcom/kochava/base/Tracker$ConsentPartner;->KEY_DESCRIPTION:Ljava/lang/String;

    const-string v0, "granted"

    sput-object v0, Lcom/kochava/base/Tracker$ConsentPartner;->KEY_GRANTED:Ljava/lang/String;

    const-string v0, "response_time"

    sput-object v0, Lcom/kochava/base/Tracker$ConsentPartner;->KEY_RESPONSE_TIME:Ljava/lang/String;

    const-string v0, "partners"

    sput-object v0, Lcom/kochava/base/Tracker$ConsentPartner;->KEY_PARTNERS:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kochava/base/Tracker$ConsentPartner;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kochava/base/Tracker$ConsentPartner;->description:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/kochava/base/Tracker$ConsentPartner;->granted:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kochava/base/Tracker$ConsentPartner;->responseTime:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 4
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/kochava/base/Tracker$ConsentPartner;->KEY_NAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/kochava/base/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kochava/base/Tracker$ConsentPartner;->name:Ljava/lang/String;

    sget-object v0, Lcom/kochava/base/Tracker$ConsentPartner;->KEY_DESCRIPTION:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/kochava/base/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kochava/base/Tracker$ConsentPartner;->description:Ljava/lang/String;

    sget-object v0, Lcom/kochava/base/Tracker$ConsentPartner;->KEY_RESPONSE_TIME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/kochava/base/d;->a(Ljava/lang/Object;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kochava/base/Tracker$ConsentPartner;->responseTime:J

    sget-object v0, Lcom/kochava/base/Tracker$ConsentPartner;->KEY_GRANTED:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kochava/base/d;->a(Ljava/lang/Object;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kochava/base/Tracker$ConsentPartner;->granted:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/kochava/base/Tracker$ConsentPartner;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kochava/base/Tracker$ConsentPartner;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/kochava/base/Tracker$ConsentPartner;->granted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-wide v0, p0, Lcom/kochava/base/Tracker$ConsentPartner;->responseTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
