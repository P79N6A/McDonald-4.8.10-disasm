.class final Lcom/kochava/base/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kochava/base/c$c;,
        Lcom/kochava/base/c$b;,
        Lcom/kochava/base/c$a;
    }
.end annotation


# static fields
.field static final a:[Lcom/kochava/base/c;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# instance fields
.field final b:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final c:I
    .annotation build Landroid/support/annotation/IntRange;
    .end annotation
.end field

.field private final d:[I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final e:[I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/16 v11, 0x3c

    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x5

    const/4 v7, 0x0

    const/16 v0, 0x2c

    new-array v0, v0, [Lcom/kochava/base/c;

    const/4 v1, 0x0

    new-instance v2, Lcom/kochava/base/c;

    const-string v3, "screen_brightness"

    const/16 v4, 0xf

    new-array v5, v8, [I

    fill-array-data v5, :array_0

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    aput-object v2, v0, v1

    new-instance v1, Lcom/kochava/base/c;

    const-string v2, "device_orientation"

    const/16 v3, 0xf

    new-array v4, v8, [I

    fill-array-data v4, :array_1

    invoke-direct {v1, v2, v3, v4, v7}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    aput-object v1, v0, v10

    const/4 v1, 0x2

    new-instance v2, Lcom/kochava/base/c;

    const-string v3, "network_conn_type"

    const/16 v4, 0x1e

    new-array v5, v8, [I

    fill-array-data v5, :array_2

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/kochava/base/c;

    const-string v3, "volume"

    const/16 v4, 0xa

    new-array v5, v8, [I

    fill-array-data v5, :array_3

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/kochava/base/c;

    const-string v3, "ssid"

    new-array v4, v8, [I

    fill-array-data v4, :array_4

    invoke-direct {v2, v3, v11, v4, v7}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    aput-object v2, v0, v1

    new-instance v1, Lcom/kochava/base/c;

    const-string v2, "bssid"

    new-array v3, v8, [I

    fill-array-data v3, :array_5

    invoke-direct {v1, v2, v11, v3, v7}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    aput-object v1, v0, v8

    const/4 v1, 0x6

    new-instance v2, Lcom/kochava/base/c;

    const-string v3, "carrier_name"

    new-array v4, v8, [I

    fill-array-data v4, :array_6

    invoke-direct {v2, v3, v11, v4, v7}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/kochava/base/c;

    const-string v3, "adid"

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_7

    invoke-direct {v2, v3, v9, v4, v7}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/kochava/base/c;

    const-string v3, "fire_adid"

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_8

    invoke-direct {v2, v3, v9, v4, v7}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/kochava/base/c;

    const-string v3, "platform"

    new-array v4, v10, [I

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    invoke-direct {v2, v3, v9, v4, v7}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lcom/kochava/base/c;

    const-string v3, "device"

    new-array v4, v8, [I

    fill-array-data v4, :array_9

    invoke-direct {v2, v3, v9, v4, v7}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lcom/kochava/base/c;

    const-string v3, "disp_h"

    new-array v4, v8, [I

    fill-array-data v4, :array_a

    invoke-direct {v2, v3, v11, v4, v7}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lcom/kochava/base/c;

    const-string v3, "disp_w"

    new-array v4, v8, [I

    fill-array-data v4, :array_b

    invoke-direct {v2, v3, v11, v4, v7}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lcom/kochava/base/c;

    const-string v3, "package"

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_c

    invoke-direct {v2, v3, v9, v4, v7}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lcom/kochava/base/c;

    const-string v3, "installed_date"

    new-array v4, v10, [I

    const/4 v5, 0x0

    aput v10, v4, v5

    invoke-direct {v2, v3, v9, v4, v7}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Lcom/kochava/base/c;

    const-string v3, "app_version"

    const/4 v4, 0x6

    new-array v4, v4, [I

    fill-array-data v4, :array_d

    invoke-direct {v2, v3, v9, v4, v7}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Lcom/kochava/base/c;

    const-string v3, "app_short_string"

    const/4 v4, 0x6

    new-array v4, v4, [I

    fill-array-data v4, :array_e

    invoke-direct {v2, v3, v9, v4, v7}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Lcom/kochava/base/c;

    const-string v3, "android_id"

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_f

    invoke-direct {v2, v3, v11, v4, v7}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Lcom/kochava/base/c;

    const-string v3, "os_version"

    const/4 v4, 0x6

    new-array v4, v4, [I

    fill-array-data v4, :array_10

    invoke-direct {v2, v3, v9, v4, v7}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Lcom/kochava/base/c;

    const-string v3, "device_limit_tracking"

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_11

    invoke-direct {v2, v3, v9, v4, v7}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Lcom/kochava/base/c;

    const-string v3, "fb_attribution_id"

    new-array v4, v10, [I

    const/4 v5, 0x0

    aput v10, v4, v5

    invoke-direct {v2, v3, v9, v4, v7}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Lcom/kochava/base/c;

    const-string v3, "ids"

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_12

    invoke-direct {v2, v3, v9, v7, v4}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Lcom/kochava/base/c;

    const-string v3, "is_genuine"

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_13

    invoke-direct {v2, v3, v9, v4, v7}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Lcom/kochava/base/c;

    const-string v3, "language"

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_14

    invoke-direct {v2, v3, v11, v4, v7}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-instance v2, Lcom/kochava/base/c;

    const-string v3, "screen_dpi"

    new-array v4, v8, [I

    fill-array-data v4, :array_15

    invoke-direct {v2, v3, v11, v4, v7}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-instance v2, Lcom/kochava/base/c;

    const-string v3, "screen_inches"

    new-array v4, v10, [I

    const/4 v5, 0x0

    aput v10, v4, v5

    invoke-direct {v2, v3, v11, v4, v7}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-instance v2, Lcom/kochava/base/c;

    const-string v3, "manufacturer"

    new-array v4, v8, [I

    fill-array-data v4, :array_16

    invoke-direct {v2, v3, v9, v4, v7}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-instance v2, Lcom/kochava/base/c;

    const-string v3, "product_name"

    new-array v4, v8, [I

    fill-array-data v4, :array_17

    invoke-direct {v2, v3, v9, v4, v7}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-instance v2, Lcom/kochava/base/c;

    const-string v3, "architecture"

    new-array v4, v8, [I

    fill-array-data v4, :array_18

    invoke-direct {v2, v3, v9, v4, v7}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-instance v2, Lcom/kochava/base/c;

    const-string v3, "battery_status"

    new-array v4, v8, [I

    fill-array-data v4, :array_19

    invoke-direct {v2, v3, v11, v4, v7}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-instance v2, Lcom/kochava/base/c;

    const-string v3, "battery_level"

    new-array v4, v8, [I

    fill-array-data v4, :array_1a

    invoke-direct {v2, v3, v11, v4, v7}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-instance v2, Lcom/kochava/base/c;

    const-string v3, "device_cores"

    new-array v4, v10, [I

    const/4 v5, 0x0

    aput v10, v4, v5

    invoke-direct {v2, v3, v9, v4, v7}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-instance v2, Lcom/kochava/base/c;

    const-string v3, "signal_bars"

    const/16 v4, 0x1e

    new-array v5, v8, [I

    fill-array-data v5, :array_1b

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-instance v2, Lcom/kochava/base/c;

    const-string v3, "installer_package"

    new-array v4, v10, [I

    const/4 v5, 0x0

    aput v10, v4, v5

    invoke-direct {v2, v3, v9, v4, v7}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-instance v2, Lcom/kochava/base/c;

    const-string v3, "instant_app"

    new-array v4, v8, [I

    fill-array-data v4, :array_1c

    invoke-direct {v2, v3, v9, v4, v7}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-instance v2, Lcom/kochava/base/c;

    const-string v3, "locale"

    const/16 v4, 0x8

    new-array v4, v4, [I

    fill-array-data v4, :array_1d

    invoke-direct {v2, v3, v11, v4, v7}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-instance v2, Lcom/kochava/base/c;

    const-string v3, "timezone"

    const/16 v4, 0x8

    new-array v4, v4, [I

    fill-array-data v4, :array_1e

    invoke-direct {v2, v3, v11, v4, v7}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-instance v2, Lcom/kochava/base/c;

    const-string v3, "bluetooth_name"

    const/16 v4, 0x1e

    new-array v5, v8, [I

    fill-array-data v5, :array_1f

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-instance v2, Lcom/kochava/base/c;

    const-string v3, "connected_devices"

    const/16 v4, 0x1e

    new-array v5, v8, [I

    fill-array-data v5, :array_20

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-instance v2, Lcom/kochava/base/c;

    const-string v3, "capabilities"

    new-array v4, v8, [I

    fill-array-data v4, :array_21

    invoke-direct {v2, v3, v9, v4, v7}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-instance v2, Lcom/kochava/base/c;

    const-string v3, "ui_mode"

    const/16 v4, 0x1e

    new-array v5, v8, [I

    fill-array-data v5, :array_22

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-instance v2, Lcom/kochava/base/c;

    const-string v3, "notifications_enabled"

    const/16 v4, 0x1e

    new-array v5, v8, [I

    fill-array-data v5, :array_23

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-instance v2, Lcom/kochava/base/c;

    const-string v3, "install_referrer"

    new-array v4, v10, [I

    const/4 v5, 0x0

    aput v10, v4, v5

    invoke-direct {v2, v3, v9, v4, v7}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-instance v2, Lcom/kochava/base/c;

    const-string v3, "location"

    const/4 v4, 0x4

    new-array v4, v4, [I

    fill-array-data v4, :array_24

    invoke-direct {v2, v3, v10, v7, v4}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/kochava/base/c;->a:[Lcom/kochava/base/c;

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x8
        0x6
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x2
        0x3
        0x8
        0x6
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x2
        0x3
        0x8
        0x6
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x2
        0x3
        0x8
        0x6
    .end array-data

    :array_4
    .array-data 4
        0x1
        0x2
        0x3
        0x8
        0x6
    .end array-data

    :array_5
    .array-data 4
        0x1
        0x2
        0x3
        0x8
        0x6
    .end array-data

    :array_6
    .array-data 4
        0x1
        0x2
        0x3
        0x8
        0x6
    .end array-data

    :array_7
    .array-data 4
        0x1
        0x4
    .end array-data

    :array_8
    .array-data 4
        0x1
        0x4
    .end array-data

    :array_9
    .array-data 4
        0x1
        0x2
        0x3
        0x8
        0x6
    .end array-data

    :array_a
    .array-data 4
        0x1
        0x2
        0x3
        0x8
        0x6
    .end array-data

    :array_b
    .array-data 4
        0x1
        0x2
        0x3
        0x8
        0x6
    .end array-data

    :array_c
    .array-data 4
        0x0
        0x1
    .end array-data

    :array_d
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x8
        0x6
    .end array-data

    :array_e
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x8
        0x6
    .end array-data

    :array_f
    .array-data 4
        0x1
        0x4
    .end array-data

    :array_10
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x8
        0x6
    .end array-data

    :array_11
    .array-data 4
        0x1
        0x4
    .end array-data

    :array_12
    .array-data 4
        0x1
        0x4
    .end array-data

    :array_13
    .array-data 4
        0x1
        0x4
    .end array-data

    :array_14
    .array-data 4
        0x1
        0x4
    .end array-data

    :array_15
    .array-data 4
        0x1
        0x2
        0x3
        0x8
        0x6
    .end array-data

    :array_16
    .array-data 4
        0x1
        0x2
        0x3
        0x8
        0x6
    .end array-data

    :array_17
    .array-data 4
        0x1
        0x2
        0x3
        0x8
        0x6
    .end array-data

    :array_18
    .array-data 4
        0x1
        0x2
        0x3
        0x8
        0x6
    .end array-data

    :array_19
    .array-data 4
        0x1
        0x2
        0x3
        0x8
        0x6
    .end array-data

    :array_1a
    .array-data 4
        0x1
        0x2
        0x3
        0x8
        0x6
    .end array-data

    :array_1b
    .array-data 4
        0x1
        0x2
        0x3
        0x8
        0x6
    .end array-data

    :array_1c
    .array-data 4
        0x1
        0x2
        0x3
        0x8
        0x6
    .end array-data

    :array_1d
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x8
        0x6
        0x9
        0xa
    .end array-data

    :array_1e
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x8
        0x6
        0x9
        0xa
    .end array-data

    :array_1f
    .array-data 4
        0x1
        0x2
        0x3
        0x8
        0x6
    .end array-data

    :array_20
    .array-data 4
        0x1
        0x2
        0x3
        0x8
        0x6
    .end array-data

    :array_21
    .array-data 4
        0x1
        0x2
        0x3
        0x8
        0x6
    .end array-data

    :array_22
    .array-data 4
        0x1
        0x2
        0x3
        0x8
        0x6
    .end array-data

    :array_23
    .array-data 4
        0x1
        0x2
        0x3
        0x8
        0x6
    .end array-data

    :array_24
    .array-data 4
        0x1
        0x2
        0x8
        0x6
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;I[I[I)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/IntRange;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [I
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    const-string v1, "DPT"

    const-string v2, "Data"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/kochava/base/c;->b:Ljava/lang/String;

    iput p2, p0, Lcom/kochava/base/c;->c:I

    iput-object p3, p0, Lcom/kochava/base/c;->d:[I

    iput-object p4, p0, Lcom/kochava/base/c;->e:[I

    return-void
.end method

.method private static A(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static B(Landroid/content/Context;)Z
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    invoke-static {p0}, Lcom/google/android/instantapps/InstantApps;->isInstantApp(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private static C(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/RequiresPermission;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    const/4 v0, 0x0

    const-string v1, "android.permission.BLUETOOTH"

    invoke-static {p0, v1}, Lcom/kochava/base/d;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static D(Landroid/content/Context;)Lorg/json/JSONArray;
    .locals 7
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v0, v2, :cond_2

    const-string v0, "bluetooth"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothManager;->getConnectedDevices(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothManager;->getConnectedDevices(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BT-LE: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/kochava/base/d;->a(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v2, 0x4

    const-string v3, "DPT"

    const-string v4, "devicesBle"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private static E(Landroid/content/Context;)Lorg/json/JSONArray;
    .locals 14
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const v13, 0x100008

    const v12, 0x20004

    const v11, 0x10004

    const v10, 0xc002

    const/4 v2, 0x0

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_c

    const-string v0, "input"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v4

    array-length v5, v4

    move v1, v2

    :goto_0
    if-ge v1, v5, :cond_c

    aget v6, v4, v1

    invoke-virtual {v0, v6}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Landroid/view/InputDevice;->getSources()I

    move-result v7

    and-int/lit16 v8, v7, 0x4002

    const/16 v9, 0x4002

    if-ne v8, v9, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Stylus: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/kochava/base/d;->a(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_2
    and-int/lit16 v8, v7, 0x201

    const/16 v9, 0x201

    if-ne v8, v9, :cond_3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "D-pad: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/kochava/base/d;->a(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_3
    and-int/lit16 v8, v7, 0x401

    const/16 v9, 0x401

    if-ne v8, v9, :cond_4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "GamePad: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/kochava/base/d;->a(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_4
    const v8, 0x1000010

    and-int/2addr v8, v7

    const v9, 0x1000010

    if-ne v8, v9, :cond_5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Joystick: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/kochava/base/d;->a(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_5
    and-int/lit16 v8, v7, 0x101

    const/16 v9, 0x101

    if-ne v8, v9, :cond_6

    invoke-virtual {v6}, Landroid/view/InputDevice;->getKeyboardType()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Keyboard: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/kochava/base/d;->a(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6

    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_6
    and-int/lit16 v8, v7, 0x2002

    const/16 v9, 0x2002

    if-ne v8, v9, :cond_7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Mouse: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/kochava/base/d;->a(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7

    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_7
    and-int v8, v7, v13

    if-ne v8, v13, :cond_8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "TouchPad: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/kochava/base/d;->a(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_8
    and-int v8, v7, v11

    if-ne v8, v11, :cond_9

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Trackball: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/kochava/base/d;->a(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_9

    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_9
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x17

    if-lt v8, v9, :cond_a

    and-int v8, v7, v10

    if-ne v8, v10, :cond_a

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bluetooth Stylus "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/kochava/base/d;->a(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_a

    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_a
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1a

    if-lt v8, v9, :cond_0

    and-int v8, v7, v12

    if-ne v8, v12, :cond_b

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Mouse Relative: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/kochava/base/d;->a(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_b

    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_b
    const/high16 v8, 0x400000

    and-int/2addr v7, v8

    const/high16 v8, 0x400000

    if-ne v7, v8, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Rotary Encoder: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/kochava/base/d;->a(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    const/4 v1, 0x4

    const-string v4, "DPT"

    const-string v5, "devicesInput"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v2

    invoke-static {v1, v4, v5, v6}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_c
    return-object v3
.end method

.method private static F(Landroid/content/Context;)Lorg/json/JSONArray;
    .locals 7
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    :try_start_0
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/google/android/gms/wearable/Wearable;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    const-wide/16 v4, 0x2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->blockingConnect(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/wearable/Wearable;->NodeApi:Lcom/google/android/gms/wearable/NodeApi;

    invoke-interface {v0, v2}, Lcom/google/android/gms/wearable/NodeApi;->getConnectedNodes(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    const-wide/16 v4, 0x2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5, v3}, Lcom/google/android/gms/common/api/PendingResult;->await(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/NodeApi$GetConnectedNodesResult;

    invoke-interface {v0}, Lcom/google/android/gms/wearable/NodeApi$GetConnectedNodesResult;->getNodes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/Node;

    invoke-interface {v0}, Lcom/google/android/gms/wearable/Node;->isNearby()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wearable: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Lcom/google/android/gms/wearable/Node;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v2, 0x4

    const-string v3, "DPT"

    const-string v4, "devicesNode"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private static G(Landroid/content/Context;)Lorg/json/JSONArray;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const-string v1, "android.permission.BLUETOOTH"

    invoke-static {p0, v1}, Lcom/kochava/base/d;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/kochava/base/c;->j()Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kochava/base/d;->a(Lorg/json/JSONArray;Lorg/json/JSONArray;)V

    invoke-static {p0}, Lcom/kochava/base/c;->D(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kochava/base/d;->a(Lorg/json/JSONArray;Lorg/json/JSONArray;)V

    :cond_0
    invoke-static {p0}, Lcom/kochava/base/c;->E(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kochava/base/d;->a(Lorg/json/JSONArray;Lorg/json/JSONArray;)V

    invoke-static {p0}, Lcom/kochava/base/c;->F(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kochava/base/d;->a(Lorg/json/JSONArray;Lorg/json/JSONArray;)V

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static H(Landroid/content/Context;)Lorg/json/JSONArray;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method private static I(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    const/4 v1, 0x0

    const-string v0, "uimode"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    goto :goto_0

    :pswitch_0
    const-string v0, "Undefined"

    goto :goto_0

    :pswitch_1
    const-string v0, "Normal"

    goto :goto_0

    :pswitch_2
    const-string v0, "Desk"

    goto :goto_0

    :pswitch_3
    const-string v0, "Car"

    goto :goto_0

    :pswitch_4
    const-string v0, "Television"

    goto :goto_0

    :pswitch_5
    const-string v0, "Appliance"

    goto :goto_0

    :pswitch_6
    const-string v0, "Watch"

    goto :goto_0

    :pswitch_7
    const-string v0, "VR_Headset"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private static J(Landroid/content/Context;)Z
    .locals 6
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    const/4 v1, 0x1

    const/4 v3, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v0, v2, :cond_2

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_2

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v2, v4, :cond_1

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getNotificationChannels()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v1

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationChannel;

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v1

    if-eqz v1, :cond_4

    move v1, v3

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    :goto_2
    return v3

    :cond_1
    invoke-virtual {v0}, Landroid/app/NotificationManager;->areNotificationsEnabled()Z

    move-result v3

    goto :goto_2

    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v0, v2, :cond_3

    :try_start_0
    const-string v0, "android.support.v4.app.NotificationManagerCompat"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "from"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "areNotificationsEnabled"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_2

    :catch_0
    move-exception v0

    :cond_3
    move v3, v1

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_1
.end method

.method private static a(Landroid/content/Context;)D
    .locals 6
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    const-wide v4, 0x40c3880000000000L    # 10000.0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x406fe00000000000L    # 255.0

    div-double/2addr v0, v2

    mul-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    div-double/2addr v0, v4

    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v0 .. v5}, Lcom/kochava/base/d;->a(DDD)D

    move-result-wide v0

    return-wide v0
.end method

.method static a(Landroid/content/Context;IID)Lcom/kochava/base/InstallReferrer;
    .locals 17
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroid/support/annotation/Size;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/Size;
        .end annotation
    .end param
    .param p3    # D
        .annotation build Landroid/support/annotation/Size;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-static {}, Lcom/kochava/base/d;->a()J

    move-result-wide v12

    const/4 v10, 0x0

    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v5, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v3, 0x0

    const/4 v2, 0x0

    move v4, v2

    move-object v2, v3

    :goto_0
    move/from16 v0, p1

    if-ge v4, v0, :cond_0

    add-int/lit8 v10, v10, 0x1

    new-instance v2, Lcom/kochava/base/c$a;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/kochava/base/c$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/kochava/base/c$a;->b(I)V

    const-string v3, "attempt_count"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, v2, Lcom/kochava/base/c$a;->b:Lorg/json/JSONObject;

    invoke-static {v3, v6, v7}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    const-string v3, "duration"

    invoke-static {}, Lcom/kochava/base/d;->a()J

    move-result-wide v6

    sub-long/2addr v6, v12

    long-to-double v6, v6

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    iget-object v7, v2, Lcom/kochava/base/c$a;->b:Lorg/json/JSONObject;

    invoke-static {v3, v6, v7}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    iget-object v2, v2, Lcom/kochava/base/c$a;->b:Lorg/json/JSONObject;

    const/4 v3, 0x1

    const/4 v6, 0x0

    invoke-static {v2, v3, v6}, Lcom/kochava/base/c$a;->a(Lorg/json/JSONObject;ZLjava/lang/String;)Lcom/kochava/base/InstallReferrer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kochava/base/InstallReferrer;->isValid()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v3}, Lcom/kochava/base/InstallReferrer;->isSupported()Z

    move-result v2

    if-nez v2, :cond_1

    move-object v2, v3

    :cond_0
    :goto_1
    if-eqz v2, :cond_2

    :goto_2
    return-object v2

    :cond_1
    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double v6, v6, p3

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-object v2, v3

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v6, 0x4

    const-string v7, "DPT"

    const-string v8, "getInstallRef"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v2, v9, v11

    invoke-static {v6, v7, v8, v9}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_2
    new-instance v2, Lcom/kochava/base/InstallReferrer;

    const-string v3, ""

    const-wide/16 v4, -0x1

    const-wide/16 v6, -0x1

    const/4 v8, 0x4

    const/4 v9, 0x0

    invoke-static {}, Lcom/kochava/base/d;->a()J

    move-result-wide v14

    sub-long v12, v14, v12

    long-to-double v12, v12

    const-wide v14, 0x408f400000000000L    # 1000.0

    div-double v11, v12, v14

    invoke-direct/range {v2 .. v12}, Lcom/kochava/base/InstallReferrer;-><init>(Ljava/lang/String;JJIZID)V

    goto :goto_2

    :cond_3
    move-object v2, v3

    goto :goto_1
.end method

.method private a(Landroid/content/Context;Lcom/kochava/base/d;Ljava/lang/Object;Ljava/lang/Object;ZLjava/util/List;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/kochava/base/d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/kochava/base/d;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v7, 0x1

    const-string v0, "getValueNew"

    if-eqz p3, :cond_5

    move-object v0, p3

    :goto_0
    if-eqz p3, :cond_0

    if-nez p5, :cond_0

    if-eqz p4, :cond_4

    :cond_0
    if-nez p4, :cond_1

    :try_start_0
    invoke-static {p0, p1, p7, v0}, Lcom/kochava/base/c;->a(Lcom/kochava/base/c;Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p4

    :cond_1
    :goto_1
    if-eqz p4, :cond_4

    iget-object v1, p0, Lcom/kochava/base/c;->b:Ljava/lang/String;

    invoke-interface {p6, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/kochava/base/c;->b:Ljava/lang/String;

    invoke-interface {p6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz p3, :cond_3

    invoke-static {p4, p3}, Lcom/kochava/base/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/kochava/base/c;->b:Ljava/lang/String;

    invoke-virtual {p2, v1, p4}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/kochava/base/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_ts"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/kochava/base/d;->a()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p4, v0}, Lcom/kochava/base/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/kochava/base/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_upd"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    return-object p4

    :cond_5
    iget-object v0, p0, Lcom/kochava/base/c;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/kochava/base/d;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v2, 0x4

    const-string v3, "DPT"

    const-string v4, "getValueNew"

    new-array v5, v7, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method static a(Lcom/kochava/base/c;Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p0    # Lcom/kochava/base/c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v1, p0, Lcom/kochava/base/c;->b:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :sswitch_0
    const-string v2, "platform"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "screen_brightness"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "device_orientation"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "network_conn_type"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v2, "volume"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v2, "ssid"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string v2, "bssid"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_7
    const-string v2, "carrier_name"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_8
    const-string v2, "adid"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :sswitch_9
    const-string v2, "fire_adid"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x9

    goto :goto_0

    :sswitch_a
    const-string v2, "device_limit_tracking"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :sswitch_b
    const-string v2, "fb_attribution_id"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xb

    goto :goto_0

    :sswitch_c
    const-string v2, "device"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string v2, "disp_h"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_0

    :sswitch_e
    const-string v2, "disp_w"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_0

    :sswitch_f
    const-string v2, "package"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_0

    :sswitch_10
    const-string v2, "installed_date"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x10

    goto/16 :goto_0

    :sswitch_11
    const-string v2, "app_version"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x11

    goto/16 :goto_0

    :sswitch_12
    const-string v2, "app_short_string"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x12

    goto/16 :goto_0

    :sswitch_13
    const-string v2, "android_id"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x13

    goto/16 :goto_0

    :sswitch_14
    const-string v2, "os_version"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x14

    goto/16 :goto_0

    :sswitch_15
    const-string v2, "ids"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x15

    goto/16 :goto_0

    :sswitch_16
    const-string v2, "is_genuine"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x16

    goto/16 :goto_0

    :sswitch_17
    const-string v2, "screen_dpi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x17

    goto/16 :goto_0

    :sswitch_18
    const-string v2, "screen_inches"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x18

    goto/16 :goto_0

    :sswitch_19
    const-string v2, "manufacturer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x19

    goto/16 :goto_0

    :sswitch_1a
    const-string v2, "product_name"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x1a

    goto/16 :goto_0

    :sswitch_1b
    const-string v2, "architecture"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x1b

    goto/16 :goto_0

    :sswitch_1c
    const-string v2, "battery_status"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x1c

    goto/16 :goto_0

    :sswitch_1d
    const-string v2, "battery_level"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x1d

    goto/16 :goto_0

    :sswitch_1e
    const-string v2, "device_cores"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x1e

    goto/16 :goto_0

    :sswitch_1f
    const-string v2, "signal_bars"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x1f

    goto/16 :goto_0

    :sswitch_20
    const-string v2, "installer_package"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x20

    goto/16 :goto_0

    :sswitch_21
    const-string v2, "instant_app"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x21

    goto/16 :goto_0

    :sswitch_22
    const-string v2, "locale"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x22

    goto/16 :goto_0

    :sswitch_23
    const-string v2, "language"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x23

    goto/16 :goto_0

    :sswitch_24
    const-string v2, "timezone"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x24

    goto/16 :goto_0

    :sswitch_25
    const-string v2, "bluetooth_name"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x25

    goto/16 :goto_0

    :sswitch_26
    const-string v2, "connected_devices"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x26

    goto/16 :goto_0

    :sswitch_27
    const-string v2, "capabilities"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x27

    goto/16 :goto_0

    :sswitch_28
    const-string v2, "ui_mode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x28

    goto/16 :goto_0

    :sswitch_29
    const-string v2, "notifications_enabled"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x29

    goto/16 :goto_0

    :sswitch_2a
    const-string v2, "install_referrer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x2a

    goto/16 :goto_0

    :sswitch_2b
    const-string v2, "location"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x2b

    goto/16 :goto_0

    :pswitch_0
    const-string v0, "android"

    goto/16 :goto_1

    :pswitch_1
    invoke-static {p1}, Lcom/kochava/base/c;->a(Landroid/content/Context;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_2
    invoke-static {p1}, Lcom/kochava/base/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_3
    invoke-static {p1}, Lcom/kochava/base/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_4
    invoke-static {p1}, Lcom/kochava/base/c;->d(Landroid/content/Context;)Ljava/lang/Double;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_5
    invoke-static {p1}, Lcom/kochava/base/c;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_6
    invoke-static {p1}, Lcom/kochava/base/c;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_7
    invoke-static {p1}, Lcom/kochava/base/c;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_8
    invoke-static {p1}, Lcom/kochava/base/c;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_9
    invoke-static {p1}, Lcom/kochava/base/c;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_a
    invoke-static {p1}, Lcom/kochava/base/c;->q(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_b
    invoke-static {p1}, Lcom/kochava/base/c;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_c
    invoke-static {}, Lcom/kochava/base/c;->a()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_d
    invoke-static {p1}, Lcom/kochava/base/c;->j(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_e
    invoke-static {p1}, Lcom/kochava/base/c;->k(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_f
    invoke-static {p1}, Lcom/kochava/base/c;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_10
    invoke-static {p1}, Lcom/kochava/base/c;->m(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_11
    invoke-static {p1}, Lcom/kochava/base/c;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_12
    invoke-static {p1}, Lcom/kochava/base/c;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_13
    invoke-static {p1}, Lcom/kochava/base/c;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_14
    invoke-static {}, Lcom/kochava/base/c;->b()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_15
    invoke-static {p1}, Lcom/kochava/base/c;->u(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_16
    invoke-static {}, Lcom/kochava/base/c;->c()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_17
    invoke-static {p1}, Lcom/kochava/base/c;->v(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_18
    invoke-static {p1}, Lcom/kochava/base/c;->w(Landroid/content/Context;)Ljava/lang/Double;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_19
    invoke-static {}, Lcom/kochava/base/c;->d()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_1a
    invoke-static {}, Lcom/kochava/base/c;->e()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_1b
    invoke-static {}, Lcom/kochava/base/c;->f()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_1c
    invoke-static {p1}, Lcom/kochava/base/c;->x(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_1d
    invoke-static {p1}, Lcom/kochava/base/c;->y(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_1e
    invoke-static {}, Lcom/kochava/base/c;->g()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_1f
    invoke-static {p1}, Lcom/kochava/base/c;->z(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_20
    invoke-static {p1}, Lcom/kochava/base/c;->A(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_21
    invoke-static {p1}, Lcom/kochava/base/c;->B(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_22
    invoke-static {}, Lcom/kochava/base/c;->h()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_23
    invoke-static {}, Lcom/kochava/base/c;->i()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_24
    invoke-static {p1}, Lcom/kochava/base/c;->C(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_25
    invoke-static {p1}, Lcom/kochava/base/c;->G(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_26
    invoke-static {p1}, Lcom/kochava/base/c;->H(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_27
    invoke-static {p1}, Lcom/kochava/base/c;->I(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_28
    invoke-static {p1}, Lcom/kochava/base/c;->J(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_29
    invoke-static {p1, p2}, Lcom/kochava/base/c;->a(Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_2a
    invoke-static {p1, p2, p3}, Lcom/kochava/base/c;->a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7c5d093d -> :sswitch_21
        -0x7bc0b807 -> :sswitch_24
        -0x7561dc2f -> :sswitch_19
        -0x74b7f2ad -> :sswitch_10
        -0x602d6ca8 -> :sswitch_23
        -0x58aaf04a -> :sswitch_27
        -0x4f94e1aa -> :sswitch_c
        -0x4f5dc6f5 -> :sswitch_d
        -0x4f5dc6e6 -> :sswitch_e
        -0x4834599c -> :sswitch_1c
        -0x4437e03c -> :sswitch_a
        -0x4169f1a6 -> :sswitch_22
        -0x35c17346 -> :sswitch_11
        -0x3449d12e -> :sswitch_1d
        -0x305518e6 -> :sswitch_4
        -0x301acbba -> :sswitch_f
        -0x23c7d275 -> :sswitch_1e
        -0x1a2c1f92 -> :sswitch_28
        -0x18dba0f6 -> :sswitch_17
        -0x149bf571 -> :sswitch_20
        -0x11182f19 -> :sswitch_9
        -0xb00d864 -> :sswitch_3
        0x196b8 -> :sswitch_15
        0x2d9c7e -> :sswitch_8
        0x36037b -> :sswitch_5
        0x59b02dd -> :sswitch_6
        0xd67ed7c -> :sswitch_25
        0x281639f7 -> :sswitch_1f
        0x281aad7d -> :sswitch_14
        0x2b17f0eb -> :sswitch_13
        0x30a65eea -> :sswitch_29
        0x320c6953 -> :sswitch_1b
        0x3c7623db -> :sswitch_1a
        0x49fab1ab -> :sswitch_18
        0x4f36a643 -> :sswitch_2a
        0x54ad1886 -> :sswitch_16
        0x67748604 -> :sswitch_1
        0x67d1a167 -> :sswitch_2
        0x68bb6ebe -> :sswitch_b
        0x69c72da7 -> :sswitch_26
        0x6fbd6873 -> :sswitch_0
        0x714f9fb5 -> :sswitch_2b
        0x75afef72 -> :sswitch_7
        0x7e404292 -> :sswitch_12
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
    .end packed-switch
.end method

.method private static a()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;III)Lorg/json/JSONObject;
    .locals 9
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/IntRange;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/IntRange;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x0

    const/4 v5, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v1, "getWithGoogle"

    const-string v1, "DPT"

    const-string v2, "getWithGoogle"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v5, v1, v2, v3}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    new-instance v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/google/android/gms/location/LocationServices;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-nez v1, :cond_0

    const-string v1, "DPT"

    const-string v2, "getWithGoogle"

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "Failed to connect to Google Play Services"

    aput-object v4, v3, v6

    invoke-static {v8, v1, v2, v3}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "DPT"

    const-string v3, "getWithGoogle"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v1, v4, v6

    invoke-static {v5, v2, v3, v4}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v0

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->blockingConnect(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v1, "DPT"

    const-string v2, "getWithGoogle"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v8, v1, v2, v3}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_1

    :cond_1
    new-instance v2, Lcom/kochava/base/c$c;

    invoke-direct {v2}, Lcom/kochava/base/c$c;-><init>()V

    iget-object v0, v2, Lcom/kochava/base/c$c;->b:Lorg/json/JSONObject;

    sget-object v3, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    invoke-interface {v3, v1}, Lcom/google/android/gms/location/FusedLocationProviderApi;->getLastLocation(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/location/Location;

    move-result-object v3

    iget-object v4, v2, Lcom/kochava/base/c$c;->d:Ljava/lang/String;

    invoke-static {v0, v3, v4}, Lcom/kochava/base/c$b;->a(Lorg/json/JSONObject;Landroid/location/Location;Ljava/lang/String;)V

    iget-object v0, v2, Lcom/kochava/base/c$c;->b:Lorg/json/JSONObject;

    invoke-static {v0, p1, p3}, Lcom/kochava/base/c$b;->a(Lorg/json/JSONObject;II)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    const-string v0, "DPT"

    const-string v1, "getWithGoogle"

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "Returning Last Known"

    aput-object v4, v3, v6

    invoke-static {v8, v0, v1, v3}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v2, Lcom/kochava/base/c$c;->b:Lorg/json/JSONObject;

    goto :goto_1

    :cond_2
    :try_start_1
    new-instance v0, Lcom/google/android/gms/location/LocationRequest;

    invoke-direct {v0}, Lcom/google/android/gms/location/LocationRequest;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/google/android/gms/location/LocationRequest;->setNumUpdates(I)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    const/16 v3, 0x32

    if-ge p1, v3, :cond_3

    const/16 v3, 0x64

    invoke-virtual {v0, v3}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    :goto_2
    sget-object v3, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    invoke-interface {v3, v1, v0, v2}, Lcom/google/android/gms/location/FusedLocationProviderApi;->requestLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    int-to-long v4, p2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v4, v5, v3}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;JLjava/util/concurrent/TimeUnit;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    invoke-virtual {v2, p2}, Lcom/kochava/base/c$c;->a(I)V

    sget-object v0, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/location/FusedLocationProviderApi;->removeLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationListener;)Lcom/google/android/gms/common/api/PendingResult;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    invoke-virtual {v2}, Lcom/kochava/base/c$c;->a()Lorg/json/JSONObject;

    move-result-object v0

    goto/16 :goto_1

    :cond_3
    const/16 v3, 0x3e8

    if-ge p1, v3, :cond_4

    const/16 v3, 0x66

    :try_start_2
    invoke-virtual {v0, v3}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v3, "DPT"

    const-string v4, "getWithGoogle"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-static {v8, v3, v4, v5}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    const/16 v3, 0x2710

    if-ge p1, v3, :cond_5

    const/16 v3, 0x68

    :try_start_3
    invoke-virtual {v0, v3}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    goto :goto_2

    :cond_5
    const/16 v3, 0x69

    invoke-virtual {v0, v3}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2
.end method

.method private static a(Landroid/content/Context;IIILjava/lang/String;)Lorg/json/JSONObject;
    .locals 8
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/IntRange;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/IntRange;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    const-string v1, "getLocation"

    const/4 v1, 0x5

    const-string v2, "DPT"

    const-string v3, "getLocation"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v1}, Lcom/kochava/base/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v1}, Lcom/kochava/base/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x3

    const-string v2, "DPT"

    const-string v3, "getLocation"

    new-array v4, v5, [Ljava/lang/Object;

    const-string v5, "Missing Permission: android.permission.ACCESS_FINE_LOCATION android.permission.ACCESS_COARSE_LOCATION"

    aput-object v5, v4, v7

    invoke-static {v1, v2, v3, v4}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v1, -0x1

    const-string v2, "auto"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "googleplay"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_3
    :goto_1
    if-nez v1, :cond_4

    invoke-static {p0, p1, p2, p3}, Lcom/kochava/base/c;->a(Landroid/content/Context;III)Lorg/json/JSONObject;

    move-result-object v0

    :cond_4
    if-nez v0, :cond_0

    const-string v1, "auto"

    invoke-virtual {v1, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "device"

    invoke-virtual {v1, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_5
    invoke-static {p0, p1, p2, p3}, Lcom/kochava/base/c;->b(Landroid/content/Context;III)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v2, 0x4

    const-string v3, "DPT"

    const-string v4, "getLocation"

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "Missing Google Play Services"

    aput-object v6, v5, v7

    invoke-static {v2, v3, v4, v5}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method static a(Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 13
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const v4, 0x7fffffff

    const/4 v7, 0x2

    const/4 v12, 0x1

    const-string v0, "getInstallRef"

    const/16 v1, 0xa

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    if-eqz p1, :cond_3

    const-string v0, "install_referrer_attempts"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "install_referrer_attempts"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/kochava/base/d;->b(Ljava/lang/Object;I)I

    move-result v0

    invoke-static {v0, v12, v4}, Lcom/kochava/base/d;->a(III)I

    move-result v0

    move v6, v0

    :goto_0
    const-string v0, "install_referrer_wait"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "install_referrer_wait"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/kochava/base/d;->b(Ljava/lang/Object;I)I

    move-result v0

    invoke-static {v0, v12, v4}, Lcom/kochava/base/d;->a(III)I

    move-result v0

    move v8, v0

    :goto_1
    const-string v0, "install_referrer_retry_wait"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "install_referrer_retry_wait"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lcom/kochava/base/d;->a(Ljava/lang/Object;D)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static/range {v0 .. v5}, Lcom/kochava/base/d;->a(DDD)D

    move-result-wide v0

    :goto_2
    const/4 v2, 0x4

    const-string v3, "DPT"

    const-string v4, "getInstallRef"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Attempts: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AttemptWait: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v12

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AttemptRetryWait: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v7

    invoke-static {v2, v3, v4, v5}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0, v6, v8, v0, v1}, Lcom/kochava/base/c;->a(Landroid/content/Context;IID)Lcom/kochava/base/InstallReferrer;

    move-result-object v0

    invoke-static {v0}, Lcom/kochava/base/c$a;->a(Lcom/kochava/base/InstallReferrer;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    :cond_0
    move-wide v0, v2

    goto :goto_2

    :cond_1
    move v8, v1

    goto :goto_1

    :cond_2
    move v6, v7

    goto/16 :goto_0

    :cond_3
    move v8, v1

    move v6, v7

    move-wide v0, v2

    goto :goto_2
.end method

.method private static a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 12
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const-string v0, "getLocation11"

    const/16 v0, 0x32

    const/16 v1, 0xa

    const/16 v2, 0x5a

    const-string v3, "auto"

    if-eqz p1, :cond_5

    const-string v4, "accuracy"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "accuracy"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/kochava/base/d;->b(Ljava/lang/Object;I)I

    move-result v0

    const/4 v4, 0x0

    const v5, 0x7fffffff

    invoke-static {v0, v4, v5}, Lcom/kochava/base/d;->a(III)I

    move-result v0

    :cond_0
    const-string v4, "timeout"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "timeout"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/kochava/base/d;->b(Ljava/lang/Object;I)I

    move-result v1

    const/4 v4, 0x1

    const v5, 0x7fffffff

    invoke-static {v1, v4, v5}, Lcom/kochava/base/d;->a(III)I

    move-result v1

    :cond_1
    const-string v4, "staleness"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "staleness"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/kochava/base/d;->b(Ljava/lang/Object;I)I

    move-result v2

    const/4 v4, 0x0

    const v5, 0x7fffffff

    invoke-static {v2, v4, v5}, Lcom/kochava/base/d;->a(III)I

    move-result v2

    :cond_2
    const-string v4, "mode"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "mode"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/kochava/base/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v11, v3

    move v3, v0

    move-object v0, v11

    :goto_0
    const/4 v4, 0x4

    const-string v5, "DPT"

    const-string v6, "getLocation11"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Accuracy: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Timeout: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Staleness: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Mode: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v5, v6, v7}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    instance-of v4, p2, Lorg/json/JSONObject;

    if-eqz v4, :cond_3

    check-cast p2, Lorg/json/JSONObject;

    :goto_1
    invoke-static {p2, v3, v2}, Lcom/kochava/base/c$b;->a(Lorg/json/JSONObject;II)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v0, 0x4

    const-string v1, "DPT"

    const-string v2, "getLocation11"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Returning Cached"

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    return-object p2

    :cond_3
    const/4 p2, 0x0

    goto :goto_1

    :cond_4
    invoke-static {p0, v3, v1, v2, v0}, Lcom/kochava/base/c;->a(Landroid/content/Context;IIILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    goto :goto_2

    :cond_5
    move-object v11, v3

    move v3, v0

    move-object v0, v11

    goto/16 :goto_0
.end method

.method static a(Landroid/content/Context;Lcom/kochava/base/d;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/List;Lorg/json/JSONArray;Lorg/json/JSONArray;ILorg/json/JSONObject;)V
    .locals 14
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/kochava/base/d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lorg/json/JSONArray;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lorg/json/JSONArray;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/kochava/base/d;",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONArray;",
            "Lorg/json/JSONArray;",
            "I",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    const-string v3, "get"

    const/4 v3, 0x4

    move/from16 v0, p7

    if-ne v0, v3, :cond_0

    const/4 v7, 0x1

    :goto_0
    const/4 v3, 0x1

    move/from16 v0, p7

    if-ne v0, v3, :cond_1

    const/4 v8, 0x1

    :goto_1
    const/4 v3, 0x0

    move v12, v3

    :goto_2
    sget-object v3, Lcom/kochava/base/c;->a:[Lcom/kochava/base/c;

    array-length v3, v3

    if-ge v12, v3, :cond_3

    sget-object v3, Lcom/kochava/base/c;->a:[Lcom/kochava/base/c;

    aget-object v3, v3, v12

    move/from16 v0, p7

    move-object/from16 v1, p6

    move-object/from16 v2, p5

    invoke-static {v3, v0, v1, v2}, Lcom/kochava/base/c;->a(Lcom/kochava/base/c;ILorg/json/JSONArray;Lorg/json/JSONArray;)Z

    move-result v4

    if-nez v4, :cond_2

    :goto_3
    add-int/lit8 v3, v12, 0x1

    move v12, v3

    goto :goto_2

    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    :cond_2
    const/4 v4, 0x5

    const-string v5, "DPT"

    const-string v6, "get"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p7

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, ","

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v13, v3, Lcom/kochava/base/c;->b:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v4, v5, v6, v9}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v4, v3, Lcom/kochava/base/c;->b:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    iget-object v4, v3, Lcom/kochava/base/c;->b:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/kochava/base/d;->f(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v11

    move-object v4, p0

    move-object v5, p1

    move-object/from16 v6, p8

    move-object/from16 v9, p4

    invoke-direct/range {v3 .. v11}, Lcom/kochava/base/c;->a(Landroid/content/Context;Lcom/kochava/base/d;Lorg/json/JSONObject;ZZLjava/util/List;Ljava/lang/Object;Lorg/json/JSONObject;)V

    goto :goto_3

    :cond_3
    return-void
.end method

.method private a(Landroid/content/Context;Lcom/kochava/base/d;Lorg/json/JSONObject;ZZLjava/util/List;Ljava/lang/Object;Lorg/json/JSONObject;)V
    .locals 11
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/kochava/base/d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/kochava/base/d;",
            "Lorg/json/JSONObject;",
            "ZZ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    const-string v1, "addToPayload"

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/kochava/base/c;->b:Ljava/lang/String;

    move-object/from16 v0, p6

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p0, p2, p4, v1}, Lcom/kochava/base/c;->a(Lcom/kochava/base/d;ZZ)Ljava/lang/Object;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v5, p7

    move v6, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p8

    invoke-direct/range {v1 .. v8}, Lcom/kochava/base/c;->a(Landroid/content/Context;Lcom/kochava/base/d;Ljava/lang/Object;Ljava/lang/Object;ZLjava/util/List;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/kochava/base/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_upd"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/kochava/base/d;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/kochava/base/d;->a(Ljava/lang/Object;Z)Z

    move-result v6

    const/4 v1, 0x4

    const-string v2, "DPT"

    const-string v5, "addToPayload"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/kochava/base/c;->b:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " hasUpdated: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " isEqual: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v3, v4}, Lcom/kochava/base/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v1, v2, v5, v7}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, p0

    move-object v2, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/kochava/base/c;->a(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/lang/Object;ZZ)V

    if-nez p5, :cond_0

    if-eqz p4, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/kochava/base/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_upd"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/lang/Object;ZZ)V
    .locals 8
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v0, "addToData"

    if-eqz p4, :cond_1

    if-eqz p2, :cond_1

    if-nez p5, :cond_0

    :try_start_0
    invoke-static {p2, p3}, Lcom/kochava/base/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/kochava/base/c;->b:Ljava/lang/String;

    invoke-direct {p0, p1, v0, p2}, Lcom/kochava/base/c;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    if-nez p4, :cond_2

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/kochava/base/c;->b:Ljava/lang/String;

    invoke-direct {p0, p1, v0, p2}, Lcom/kochava/base/c;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x4

    const-string v2, "DPT"

    const-string v3, "addToData"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-static {v1, v2, v3, v4}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    if-nez p4, :cond_3

    if-eqz p3, :cond_3

    :try_start_1
    iget-object v0, p0, Lcom/kochava/base/c;->b:Ljava/lang/String;

    invoke-direct {p0, p1, v0, p3}, Lcom/kochava/base/c;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    const-string v1, "DPT"

    const-string v2, "addToData"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Skip"

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    instance-of v0, p3, Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    instance-of v0, p3, Lorg/json/JSONArray;

    if-eqz v0, :cond_2

    move-object v0, p3

    check-cast v0, Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0
.end method

.method static a(Lcom/kochava/base/c;ILorg/json/JSONArray;Lorg/json/JSONArray;)Z
    .locals 6
    .param p0    # Lcom/kochava/base/c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/json/JSONArray;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lorg/json/JSONArray;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    iget-object v2, p0, Lcom/kochava/base/c;->b:Ljava/lang/String;

    invoke-static {p3, v2}, Lcom/kochava/base/d;->a(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_0

    :cond_2
    iget-object v2, p0, Lcom/kochava/base/c;->d:[I

    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/kochava/base/c;->d:[I

    array-length v4, v3

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_4

    aget v5, v3, v2

    if-ne v5, p1, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/kochava/base/c;->e:[I

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/kochava/base/c;->e:[I

    array-length v4, v3

    move v2, v0

    :goto_2
    if-ge v2, v4, :cond_0

    aget v5, v3, v2

    if-eq v5, p1, :cond_6

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    iget-object v5, p0, Lcom/kochava/base/c;->b:Ljava/lang/String;

    invoke-static {p2, v5}, Lcom/kochava/base/d;->a(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v0, v1

    goto :goto_0
.end method

.method private static b()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Android "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "landscape"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "portrait"

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;III)Lorg/json/JSONObject;
    .locals 9
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/IntRange;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/IntRange;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/16 v8, 0x32

    const/4 v7, 0x4

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v0, "getWithDevice"

    const/4 v0, 0x5

    const-string v1, "DPT"

    const-string v2, "getWithDevice"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Lcom/kochava/base/c$b;

    const-string v0, "device"

    invoke-direct {v2, v0}, Lcom/kochava/base/c$b;-><init>(Ljava/lang/String;)V

    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    if-nez v0, :cond_0

    invoke-virtual {v2}, Lcom/kochava/base/c$b;->a()Lorg/json/JSONObject;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    if-ge p1, v8, :cond_1

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v1}, Lcom/kochava/base/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v2, Lcom/kochava/base/c$b;->b:Lorg/json/JSONObject;

    const-string v3, "gps"

    invoke-virtual {v0, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v3

    iget-object v4, v2, Lcom/kochava/base/c$b;->d:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lcom/kochava/base/c$b;->a(Lorg/json/JSONObject;Landroid/location/Location;Ljava/lang/String;)V

    :cond_1
    iget-object v1, v2, Lcom/kochava/base/c$b;->b:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0x2710

    if-ge p1, v1, :cond_2

    iget-object v1, v2, Lcom/kochava/base/c$b;->b:Lorg/json/JSONObject;

    const-string v3, "network"

    invoke-virtual {v0, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v3

    iget-object v4, v2, Lcom/kochava/base/c$b;->d:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lcom/kochava/base/c$b;->a(Lorg/json/JSONObject;Landroid/location/Location;Ljava/lang/String;)V

    :cond_2
    iget-object v1, v2, Lcom/kochava/base/c$b;->b:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v2, Lcom/kochava/base/c$b;->b:Lorg/json/JSONObject;

    const-string v3, "passive"

    invoke-virtual {v0, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v3

    iget-object v4, v2, Lcom/kochava/base/c$b;->d:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lcom/kochava/base/c$b;->a(Lorg/json/JSONObject;Landroid/location/Location;Ljava/lang/String;)V

    :cond_3
    iget-object v1, v2, Lcom/kochava/base/c$b;->b:Lorg/json/JSONObject;

    invoke-static {v1, p1, p3}, Lcom/kochava/base/c$b;->a(Lorg/json/JSONObject;II)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "DPT"

    const-string v1, "getWithDevice"

    new-array v3, v5, [Ljava/lang/Object;

    const-string v4, "Returning Last Known"

    aput-object v4, v3, v6

    invoke-static {v7, v0, v1, v3}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v2, Lcom/kochava/base/c$b;->b:Lorg/json/JSONObject;

    goto :goto_0

    :cond_4
    :try_start_0
    new-instance v1, Landroid/location/Criteria;

    invoke-direct {v1}, Landroid/location/Criteria;-><init>()V

    if-ge p1, v8, :cond_5

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v3}, Lcom/kochava/base/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/location/Criteria;->setAccuracy(I)V

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/location/Criteria;->setPowerRequirement(I)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/location/Criteria;->setCostAllowed(Z)V

    :goto_1
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/location/Criteria;->setBearingRequired(Z)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/location/Criteria;->setSpeedRequired(Z)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/location/LocationManager;->requestSingleUpdate(Landroid/location/Criteria;Landroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-virtual {v2, p2}, Lcom/kochava/base/c$b;->a(I)V

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    invoke-virtual {v2}, Lcom/kochava/base/c$b;->a()Lorg/json/JSONObject;

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    const/16 v3, 0x2710

    if-ge p1, v3, :cond_6

    const/4 v3, 0x2

    :try_start_1
    invoke-virtual {v1, v3}, Landroid/location/Criteria;->setAccuracy(I)V

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/location/Criteria;->setPowerRequirement(I)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/location/Criteria;->setCostAllowed(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v3, "DPT"

    const-string v4, "getWithDevice"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-static {v7, v3, v4, v5}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    const/4 v3, 0x2

    :try_start_2
    invoke-virtual {v1, v3}, Landroid/location/Criteria;->setAccuracy(I)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/location/Criteria;->setPowerRequirement(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/RequiresPermission;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    const/4 v1, 0x0

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p0, v0}, Lcom/kochava/base/d;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    :cond_2
    const-string v0, "cellular"

    goto :goto_0

    :cond_3
    const/16 v1, 0x9

    if-ne v0, v1, :cond_4

    const-string v0, "wired"

    goto :goto_0

    :cond_4
    const-string v0, "wifi"

    goto :goto_0

    :cond_5
    const-string v0, "none"

    goto :goto_0
.end method

.method private static c()Z
    .locals 7
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-object v2, Landroid/os/Build;->TAGS:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string v3, "test-keys"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v2, 0xa

    new-array v3, v2, [Ljava/lang/String;

    const-string v2, "/system/app/Superuser.apk"

    aput-object v2, v3, v0

    const-string v2, "/sbin/su"

    aput-object v2, v3, v1

    const/4 v2, 0x2

    const-string v4, "/system/bin/su"

    aput-object v4, v3, v2

    const/4 v2, 0x3

    const-string v4, "/system/xbin/su"

    aput-object v4, v3, v2

    const/4 v2, 0x4

    const-string v4, "/data/local/xbin/su"

    aput-object v4, v3, v2

    const/4 v2, 0x5

    const-string v4, "/data/local/bin/su"

    aput-object v4, v3, v2

    const/4 v2, 0x6

    const-string v4, "/system/sd/xbin/su"

    aput-object v4, v3, v2

    const/4 v2, 0x7

    const-string v4, "/system/bin/failsafe/su"

    aput-object v4, v3, v2

    const/16 v2, 0x8

    const-string v4, "/data/local/su"

    aput-object v4, v3, v2

    const/16 v2, 0x9

    const-string v4, "/su/bin/su"

    aput-object v4, v3, v2

    array-length v4, v3

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v5, v3, v2

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private static d(Landroid/content/Context;)Ljava/lang/Double;
    .locals 9
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    const/4 v8, 0x3

    const-wide v6, 0x40c3880000000000L    # 10000.0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, v8}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    int-to-double v2, v1

    mul-double/2addr v2, v4

    invoke-virtual {v0, v8}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    int-to-double v0, v0

    div-double v0, v2, v0

    mul-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    div-double/2addr v0, v6

    const-wide/16 v2, 0x0

    invoke-static/range {v0 .. v5}, Lcom/kochava/base/d;->a(DDD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0
.end method

.method private static d()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method private static e()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    return-object v0
.end method

.method private static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/RequiresPermission;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    const/4 v1, 0x0

    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {p0, v0}, Lcom/kochava/base/d;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static f()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    const-string v0, "os.arch"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/RequiresPermission;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    const/4 v1, 0x0

    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {p0, v0}, Lcom/kochava/base/d;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static g()I
    .locals 3
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x7fffffff

    invoke-static {v0, v1, v2}, Lcom/kochava/base/d;->a(III)I

    move-result v0

    return v0
.end method

.method private static g(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static h()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static h(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static i()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static i(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "advertising_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static j(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    const/4 v1, 0x0

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_2

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v0, v1, Landroid/graphics/Point;->y:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v0, v1, Landroid/graphics/Point;->y:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method private static j()Lorg/json/JSONArray;
    .locals 9
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/16 v8, 0x12

    const/4 v7, 0x1

    const/4 v6, 0x2

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BT-PAIRED: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/kochava/base/d;->a(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v2, 0x4

    const-string v3, "DPT"

    const-string v4, "devicesBtPair"

    new-array v5, v7, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_2
    move-object v0, v1

    goto :goto_0

    :cond_4
    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v8, :cond_3

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v0

    if-ne v0, v6, :cond_5

    const-string v0, "BT-PROFILE: HEADSET"

    const-string v0, "BT-PROFILE: HEADSET"

    invoke-static {v1, v0}, Lcom/kochava/base/d;->a(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "BT-PROFILE: HEADSET"

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_5
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v0

    if-ne v0, v6, :cond_6

    const-string v0, "BT-PROFILE: A2DP"

    const-string v0, "BT-PROFILE: A2DP"

    invoke-static {v1, v0}, Lcom/kochava/base/d;->a(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "BT-PROFILE: A2DP"

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_6
    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v0

    if-ne v0, v6, :cond_7

    const-string v0, "BT-PROFILE: HEALTH"

    const-string v0, "BT-PROFILE: HEALTH"

    invoke-static {v1, v0}, Lcom/kochava/base/d;->a(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "BT-PROFILE: HEALTH"

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v8, :cond_9

    const/4 v0, 0x7

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v0

    if-ne v0, v6, :cond_8

    const-string v0, "BT-PROFILE: GATT"

    const-string v0, "BT-PROFILE: GATT"

    invoke-static {v1, v0}, Lcom/kochava/base/d;->a(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "BT-PROFILE: GATT"

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_8
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v0

    if-ne v0, v6, :cond_9

    const-string v0, "BT-PROFILE: GATT_SERVER"

    const-string v0, "BT-PROFILE: GATT_SERVER"

    invoke-static {v1, v0}, Lcom/kochava/base/d;->a(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "BT-PROFILE: GATT_SERVER"

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_3

    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v0

    if-ne v0, v6, :cond_3

    const-string v0, "BT-PROFILE: SAP"

    const-string v0, "BT-PROFILE: SAP"

    invoke-static {v1, v0}, Lcom/kochava/base/d;->a(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "BT-PROFILE: SAP"

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

.method private static k(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    const/4 v1, 0x0

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_2

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v0, v1, Landroid/graphics/Point;->x:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v0, v1, Landroid/graphics/Point;->x:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method private static l(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static m(Landroid/content/Context;)I
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-wide v0, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private static n(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static o(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method private static p(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static q(Landroid/content/Context;)Z
    .locals 6
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/kochava/base/c;->r(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x4

    const-string v2, "DPT"

    const-string v3, "getDeviceLimi"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/kochava/base/c;->s(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method

.method private static r(Landroid/content/Context;)Z
    .locals 9
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "limit_ad_tracking"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ltz v2, :cond_1

    const/4 v3, 0x5

    const-string v4, "DPT"

    const-string v5, "getFireDevice"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "Kindle Fire"

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5, v6}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x4

    const-string v4, "DPT"

    const-string v5, "getFireDevice"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v1

    invoke-static {v3, v4, v5, v0}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsupported Device"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static s(Landroid/content/Context;)Z
    .locals 6
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x4

    const-string v2, "DPT"

    const-string v3, "getGoogleDevi"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsupported Device"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static t(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.facebook.katana.provider.AttributionIdProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "aid"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object v3

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "aid"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private static u(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 11
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/RequiresPermission;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    const/4 v10, 0x4

    const/4 v2, 0x0

    const/4 v9, 0x1

    const/4 v4, 0x0

    const-string v0, "android.permission.GET_ACCOUNTS"

    invoke-static {p0, v0}, Lcom/kochava/base/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DPT"

    const-string v1, "ids"

    new-array v3, v9, [Ljava/lang/Object;

    const-string v5, "Missing Permission: android.permission.GET_ACCOUNTS"

    aput-object v5, v3, v4

    invoke-static {v10, v0, v1, v3}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    :try_start_0
    const-string v0, "android.accounts.AccountManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "android.accounts.Account"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v3, "name"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    const-string v1, "get"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v3, v7

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v3, v7

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "getAccounts"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    array-length v7, v0

    move v3, v4

    :goto_1
    if-ge v3, v7, :cond_2

    aget-object v1, v0, v3

    invoke-virtual {v6, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v8, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x0

    invoke-static {v1, v5, v8}, Lcom/kochava/base/d;->a(Ljava/lang/Object;Lorg/json/JSONArray;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "DPT"

    const-string v3, "getIds"

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v0, v6, v4

    invoke-static {v10, v1, v3, v6}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-gtz v0, :cond_3

    move-object v0, v2

    goto :goto_0

    :cond_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "email"

    invoke-static {v5}, Lcom/kochava/base/d;->a(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\""

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    goto/16 :goto_0
.end method

.method private static v(Landroid/content/Context;)I
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    return v0
.end method

.method private static w(Landroid/content/Context;)Ljava/lang/Double;
    .locals 8
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v2, v0, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    div-float v0, v1, v0

    float-to-double v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    mul-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    div-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0
.end method

.method private static x(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    const/4 v0, 0x0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "status"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v0, "status"

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v0, "unknown"

    goto :goto_0

    :pswitch_0
    const-string v0, "charging"

    goto :goto_0

    :pswitch_1
    const-string v0, "discharging"

    goto :goto_0

    :pswitch_2
    const-string v0, "full"

    goto :goto_0

    :pswitch_3
    const-string v0, "not_charging"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private static y(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    const/4 v0, 0x0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "level"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v0, "level"

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-static {v0, v1, v2}, Lcom/kochava/base/d;->a(III)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method private static z(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 7
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v0}, Lcom/kochava/base/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v0}, Lcom/kochava/base/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_2

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-ge v0, v4, :cond_3

    move-object v0, v1

    goto :goto_1

    :cond_3
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_4

    move-object v0, v1

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_5

    move-object v0, v1

    goto :goto_1

    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellInfo;

    invoke-virtual {v0}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v5

    if-eqz v5, :cond_6

    instance-of v5, v0, Landroid/telephony/CellInfoGsm;

    if-eqz v5, :cond_7

    check-cast v0, Landroid/telephony/CellInfoGsm;

    invoke-virtual {v0}, Landroid/telephony/CellInfoGsm;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthGsm;->getLevel()I

    move-result v0

    :goto_2
    if-ne v0, v2, :cond_a

    move-object v0, v1

    goto :goto_1

    :cond_7
    instance-of v5, v0, Landroid/telephony/CellInfoCdma;

    if-eqz v5, :cond_8

    check-cast v0, Landroid/telephony/CellInfoCdma;

    invoke-virtual {v0}, Landroid/telephony/CellInfoCdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthCdma;->getLevel()I

    move-result v0

    goto :goto_2

    :cond_8
    instance-of v5, v0, Landroid/telephony/CellInfoLte;

    if-eqz v5, :cond_9

    check-cast v0, Landroid/telephony/CellInfoLte;

    invoke-virtual {v0}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthLte;->getLevel()I

    move-result v0

    goto :goto_2

    :cond_9
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x12

    if-lt v5, v6, :cond_6

    instance-of v5, v0, Landroid/telephony/CellInfoWcdma;

    if-eqz v5, :cond_6

    check-cast v0, Landroid/telephony/CellInfoWcdma;

    invoke-virtual {v0}, Landroid/telephony/CellInfoWcdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthWcdma;->getLevel()I

    move-result v0

    goto :goto_2

    :cond_a
    mul-int/lit8 v0, v0, 0x19

    const/16 v1, 0x64

    invoke-static {v0, v3, v1}, Lcom/kochava/base/d;->a(III)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_1

    :cond_b
    move v0, v2

    goto :goto_2
.end method


# virtual methods
.method final a(Lcom/kochava/base/d;ZZ)Ljava/lang/Object;
    .locals 8
    .param p1    # Lcom/kochava/base/d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/kochava/base/c;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/kochava/base/d;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-nez p2, :cond_0

    iget v2, p0, Lcom/kochava/base/c;->c:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    if-nez p3, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/kochava/base/c;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_ts"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/kochava/base/d;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/kochava/base/d;->c(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Lcom/kochava/base/c;->c:I

    add-int/2addr v2, v3

    int-to-long v2, v2

    invoke-static {}, Lcom/kochava/base/d;->a()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method
