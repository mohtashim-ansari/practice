--Data-types 

CREATE TABLE DataTypeExample
(
    -- Numeric Types
    SmallNumber      TINYINT,         -- 0–255
    MediumNumber     INT,             -- normal integer
    LargeNumber      BIGINT,          -- very big number
    
    DecimalNumber    DECIMAL(10,2),   -- 12345.67
    FloatNumber      FLOAT,           -- approx decimal
    MoneyValue       MONEY,           -- currency

    -- String (Character) Types
    FixedText        CHAR(10),        -- fixed length
    VariableText     VARCHAR(50),     -- variable length
    LargeText        VARCHAR(MAX),    -- long notes

    -- Unicode String Types
    UnicodeText      NVARCHAR(50),    -- for Hindi/Emoji/etc.
    UnicodeLargeText NVARCHAR(MAX),

    -- Date & Time Types
    OnlyDate         DATE,
    OnlyTime         TIME,
    DateTimeNormal   DATETIME,
    DateTimeBetter   DATETIME2,

    -- Boolean Type
    IsActive         BIT,             -- 0/1

    -- Binary Types
    SmallBinary      VARBINARY(50),   -- small file
    LargeFile        VARBINARY(MAX),  -- images/PDF

    -- Special Types
    UniqueID         UNIQUEIDENTIFIER, -- GUID
    XmlData          XML,              -- XML stored
    VersionRow       ROWVERSION        -- auto version
);

select * from DataTypeExample

INSERT INTO DataTypeExample
(
    SmallNumber, MediumNumber, LargeNumber,
    DecimalNumber, FloatNumber, MoneyValue,
    FixedText, VariableText, LargeText,
    UnicodeText, UnicodeLargeText,
    OnlyDate, OnlyTime, DateTimeNormal, DateTimeBetter,
    IsActive,
    SmallBinary, LargeFile,
    UniqueID, XmlData
)
VALUES
(
    20, 1000, 9876543210,
    123.45, 12.56, 5000.75,
    'HELLO     ', 'ChatGPT', 'This is a long text example',
    N'हिंदी टेक्स्ट', N'बहुत बड़ा हिंदी टेक्स्ट',
    '2025-11-20', '14:25:00', GETDATE(), SYSDATETIME(),
    1,
    0x1234, 0x12345678,
    NEWID(),
    '<Employee><Name>Nancy</Name></Employee>'
);
