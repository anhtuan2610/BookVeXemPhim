USE [ProjectAT]
GO
/****** Object:  Table [dbo].[Bill]    Script Date: 3/22/2023 2:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bill](
	[BillId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[MovieName] [nvarchar](255) NULL,
	[RoomId] [int] NULL,
	[Seat] [nvarchar](255) NULL,
	[MoviePrice] [real] NULL,
	[CountTicket] [int] NULL,
	[SumPrice] [real] NULL,
PRIMARY KEY CLUSTERED 
(
	[BillId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovieShowing]    Script Date: 3/22/2023 2:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovieShowing](
	[MovieId] [int] IDENTITY(1,1) NOT NULL,
	[MovieName] [nvarchar](255) NULL,
	[MovieImg] [nvarchar](255) NULL,
	[MovieTime] [nvarchar](255) NULL,
	[Describe] [nvarchar](2000) NULL,
	[RoomId] [int] NULL,
	[MoviePrice] [real] NULL,
PRIMARY KEY CLUSTERED 
(
	[MovieId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovieUpcoming]    Script Date: 3/22/2023 2:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovieUpcoming](
	[MovieId] [int] IDENTITY(1,1) NOT NULL,
	[MovieName] [nvarchar](255) NULL,
	[MovieImg] [nvarchar](255) NULL,
	[MovieTime] [nvarchar](255) NULL,
	[Describe] [nvarchar](2000) NULL,
PRIMARY KEY CLUSTERED 
(
	[MovieId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room]    Script Date: 3/22/2023 2:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room](
	[RoomId] [int] NOT NULL,
	[MovieId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[RoomId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SeatRoom]    Script Date: 3/22/2023 2:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SeatRoom](
	[seatId] [int] IDENTITY(1,1) NOT NULL,
	[seatName] [nvarchar](10) NULL,
	[seatStatus] [nvarchar](50) NULL,
	[RoomId] [int] NULL,
	[UserId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[seatId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 3/22/2023 2:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[UserPassword] [nvarchar](50) NULL,
	[Name] [nvarchar](100) NULL,
	[UsersBalance] [real] NULL,
	[AdminCheck] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Bill] ON 

INSERT [dbo].[Bill] ([BillId], [UserName], [MovieName], [RoomId], [Seat], [MoviePrice], [CountTicket], [SumPrice]) VALUES (2, N'admin', N'THẾ GIỚI LƯỢNG TỬ', 1, N'A2 A3 ', 10000, 2, 20000)
INSERT [dbo].[Bill] ([BillId], [UserName], [MovieName], [RoomId], [Seat], [MoviePrice], [CountTicket], [SumPrice]) VALUES (19, N'admin', N'THẾ GIỚI LƯỢNG TỬ', 1, N'A2 ', 10000, 1, 10000)
INSERT [dbo].[Bill] ([BillId], [UserName], [MovieName], [RoomId], [Seat], [MoviePrice], [CountTicket], [SumPrice]) VALUES (20, N'admin123', N'THẾ GIỚI LƯỢNG TỬ', 1, N'A1 A2 ', 10000, 2, 20000)
INSERT [dbo].[Bill] ([BillId], [UserName], [MovieName], [RoomId], [Seat], [MoviePrice], [CountTicket], [SumPrice]) VALUES (21, N'admin123', N'CHUYỂN SINH THÀNH SLIME', 5, N'A1 ', 10000, 1, 10000)
INSERT [dbo].[Bill] ([BillId], [UserName], [MovieName], [RoomId], [Seat], [MoviePrice], [CountTicket], [SumPrice]) VALUES (22, N'admin', N'THẾ GIỚI LƯỢNG TỬ', 1, N'A3 ', 10000, 1, 10000)
INSERT [dbo].[Bill] ([BillId], [UserName], [MovieName], [RoomId], [Seat], [MoviePrice], [CountTicket], [SumPrice]) VALUES (23, N'admin', N'CHUYỂN SINH THÀNH SLIME', 5, N'A2 A3 A4 A5 A6 A7 ', 10000, 6, 60000)
INSERT [dbo].[Bill] ([BillId], [UserName], [MovieName], [RoomId], [Seat], [MoviePrice], [CountTicket], [SumPrice]) VALUES (24, N'admin', N'PHI VỤ ĐÀO MỎ', 2, N'A1 A2 A3 ', 10000, 3, 30000)
INSERT [dbo].[Bill] ([BillId], [UserName], [MovieName], [RoomId], [Seat], [MoviePrice], [CountTicket], [SumPrice]) VALUES (25, N'tuan1', N'PHI VỤ ĐÀO MỎ', 2, N'A4 ', 10000, 1, 10000)
INSERT [dbo].[Bill] ([BillId], [UserName], [MovieName], [RoomId], [Seat], [MoviePrice], [CountTicket], [SumPrice]) VALUES (26, N'admin', N'HIỆP SĨ MẶT NẠ', 3, N'A2 A3 ', 10000, 2, 20000)
INSERT [dbo].[Bill] ([BillId], [UserName], [MovieName], [RoomId], [Seat], [MoviePrice], [CountTicket], [SumPrice]) VALUES (27, N'tuan1', N'NHÀ BÀ NỮ', 7, N'A4 A5 ', 10000, 2, 20000)
INSERT [dbo].[Bill] ([BillId], [UserName], [MovieName], [RoomId], [Seat], [MoviePrice], [CountTicket], [SumPrice]) VALUES (28, N'tuan1', N'SỨ MỆNH CHUỘT NHÍ', 4, N'A3 ', 10000, 1, 10000)
SET IDENTITY_INSERT [dbo].[Bill] OFF
GO
SET IDENTITY_INSERT [dbo].[MovieShowing] ON 

INSERT [dbo].[MovieShowing] ([MovieId], [MovieName], [MovieImg], [MovieTime], [Describe], [RoomId], [MoviePrice]) VALUES (1, N'THẾ GIỚI LƯỢNG TỬ', N'./img/ShowingMovie-img/Movie1.jpg', N'124Phút | 16/02/2023', N'Người Kiến và Chiến binh Ong: Thế giới Lượng tử (tựa gốc tiếng Anh: Ant-Man and the Wasp: Quantumania) là bộ phim siêu anh hùng của Mỹ công chiếu năm 2023 dựa trên các nhân vật Marvel Comics là Scott Lang / Người Kiến và Hope Pym / Chiến binh Ong. Được sản xuất bởi Marvel Studios và phân phối bởi Walt Disney Studios Motion Pictures, đây là phần tiếp theo của Người Kiến (2015) và Người Kiến và Chiến binh Ong (2018) đồng thời là phần phim thứ 31 mở đầu cho Giai đoạn 5 của Vũ trụ Điện ảnh Marvel. Bộ phim được đạo diễn bởi Peyton Reed với kịch bản của Jeff Loveness và có sự tham gia của Paul Rudd trong vai Scott Lang, Evangeline Lilly trong vai Hope van Dyne, cùng với Michael Douglas, Michelle Pfeiffer, Kathryn Newton và Jonathan Majors.', 1, 10000)
INSERT [dbo].[MovieShowing] ([MovieId], [MovieName], [MovieImg], [MovieTime], [Describe], [RoomId], [MoviePrice]) VALUES (2, N'PHI VỤ ĐÀO MỎ', N'./img/ShowingMovie-img/Movie2.jpg', N'119Phút | 03/03/2023', N'Jason và mẹ của anh ấy kiếm tiền ở Khu Phố Tàu bằng cách lừa tiền mọi người. Họ quyết định thực hiện một phi vụ lớn cuối cùng trước khi hoàn lương bằng cách cho Jason giả làm cháu trai của một phú bà giàu có, nhằm chiếm đoạt gia sản. Tuy nhiên, Jason bắt đầu cảm nhận được sự ấm áp khi trở thành thành viên của một gia đình mà trước đây anh chưa từng cảm nhận được. Điều này đã ảnh hưởng rất nhiều đến kế hoạch của nhóm. Vỏ bọc của họ sắp bị vạch trần, nhưng bằng cách nào đó, sự thật về bí ẩn gia đình của Jason đã được tiết lộ..
', 2, 10000)
INSERT [dbo].[MovieShowing] ([MovieId], [MovieName], [MovieImg], [MovieTime], [Describe], [RoomId], [MoviePrice]) VALUES (3, N'HIỆP SĨ MẶT NẠ', N'./img/ShowingMovie-img/Movie3.jpg', N'96Phút | 03/03/2023', N'Khi mùa mới của Desire Grand Prix - giải đấu sinh tồn có thể hiện thực hóa bất kì điều ước của người chiến thắng - bất ngờ bị một thế lực bí ẩn nắm quyền, Kamen Rider Geats cùng những người chơi quen thuộc của giải đấu này đều bị cuốn vào chuỗi những trò chơi tồi tệ nhất, đồng thời họ còn phải chạm trán với nhóm người chơi mới của Kamen Rider Revice và các Kamen Rider huyền thoại khác.
', 3, 10000)
INSERT [dbo].[MovieShowing] ([MovieId], [MovieName], [MovieImg], [MovieTime], [Describe], [RoomId], [MoviePrice]) VALUES (4, N'SỨ MỆNH CHUỘT NHÍ', N'./img/ShowingMovie-img/Movie4.jpg', N'95Phút | 24/02/2023', N'"Chuột nhí và sứ mệnh thần biển" lấy nhân vật trung tâm là cô chuột nhỏ Bé Tí thường xuyên bị bạn bè chế nhạo, nhưng ẩn đằng sau dáng dấp nhỏ bé lại là một ''nữ anh hùng'' có thể cứu giúp con người thực hiện một sứ mệnh ''bất khả thi''.', 4, 10000)
INSERT [dbo].[MovieShowing] ([MovieId], [MovieName], [MovieImg], [MovieTime], [Describe], [RoomId], [MoviePrice]) VALUES (5, N'CHUYỂN SINH THÀNH SLIME', N'./img/ShowingMovie-img/Movie5.jpg', N'119Phút | 03/03/2023', N'Chuyển Sinh Thành Slime được chuyển thể từ light novel cùng tên của tác giả Fuse. Phim kể về anh chàng Satoru Mikami, 37 tuổi, FA nhiều năm với sống cuộc sống chán chường và không mấy vui vẻ gì. Ngày kia vận số đen đủi bám lấy anh chàng, bị cướp tấn công, giết ngay tại chỗ, tưởng chừng tháng ngày chán ngắt ấy đã kết thúc. Nhưng không! Ấy lại chính là sự khởi đầu của một cuộc sống mới, Mikami tỉnh dậy, thấy mình đang ở trong một thế giới kì lạ. Và điều quái dị là anh ta không còn hình dạng người nữa mà đã trở thành quái vật slime dẻo quẹo và không có mắt. Khi dần quen với hình dáng mới này, anh chàng bắt đầu khám phá thế giới cùng với những quái vật khác. Và thế là, cuộc đời làm Slime ở một thế giới mới bắt đầu.', 5, 10000)
INSERT [dbo].[MovieShowing] ([MovieId], [MovieName], [MovieImg], [MovieTime], [Describe], [RoomId], [MoviePrice]) VALUES (6, N'SIÊU LỪA SIÊU LẦY', N'./img/ShowingMovie-img/Movie6.jpg', N'112Phút | 01/03/2023', N'Siêu Lừa Gặp Siêu Lầy vốn từng là một dự án phim Tết cùng Nhà Bà Nữ và Chị Chị Em Em 2. Song, tác phẩm lại rút lui vào phút chót vì nhiều lý do. Trên thực tế, tác phẩm của Anh Tú và Mạc Văn Khoa lại rất phù hợp cho những ngày đầu năm mới do hội tụ nhiều yếu tố giải trí và hài hước. Song, kịch bản phim lại khá cũ kỹ và chưa thể hiện được những màn lừa lọc, đấu trí kịch tính.

Nội dung Siêu Lừa Gặp Siêu Lầy xoay quanh một tay lừa đảo hạng xoàng tên Khoa (Mạc Văn Khoa). Do không còn đất kiếm ăn, anh chàng quyết định ra Phú Quốc tìm cơ hội đổi đời. Tại đây, Khoa chạm mặt với một nhóm lừa đảo đẳng cấp cao gồm Tú (Anh Tú), chú Năm (Nhất Trung) và bé Mã Lai (Ngọc Phước).', 6, 10000)
INSERT [dbo].[MovieShowing] ([MovieId], [MovieName], [MovieImg], [MovieTime], [Describe], [RoomId], [MoviePrice]) VALUES (7, N'NHÀ BÀ NỮ', N'./img/ShowingMovie-img/Movie7.jpg', N'102Phút | 22/01/2023', N'Nhà bà Nữ là một bộ phim điện ảnh chính kịch, gia đình của Việt Nam năm 2023 do Trấn Thành sản xuất kiêm đạo diễn. Bộ phim do Đỗ Hoàng Vũ, quản lý của Trấn Thành và Hari Won đảm nhận vai trò đồng sản xuất. Đây là bộ phim thứ hai do Trấn Thành làm đạo diễn sau Bố già, bộ phim có doanh thu cao thứ hai lịch sử phòng vé Việt Nam sau khi bị Nhà bà Nữ vượt mặt. Huyền Trân, A Quay và Anh Đức đảm nhận biên kịch cho dự án. Bộ phim có sự tham gia của nhiều gương mặt trong giới giải trí Việt Nam như Trấn Thành, Lê Giang, NSND Ngọc Giàu, Uyển Ân, Khả Như, NSND Việt Anh, NSƯT Công Ninh, Ngân Quỳnh, Song Luân, Lê Dương Bảo Lâm, Lý Hạo Mạnh Quỳnh, Phương Lan, Hoàng Mèo... Bộ phim xoay quanh bà bán bánh canh cua tên Ngọc Nữ với những câu chuyện hỷ nộ ái ố xung quanh cuộc sống thường ngày. Theo tiết lộ của nhà sản xuất, Ngọc Nữ được lấy cảm hứng từ người phụ nữ bán bánh canh cua giá 300.000 đồng gây tranh cãi trên mạng xã hội và nội dung được lấy ý tưởng từ câu chuyện gia đình của một người bạn trong giới giải trí Việt Nam của Trấn Thành.', 7, 10000)
INSERT [dbo].[MovieShowing] ([MovieId], [MovieName], [MovieImg], [MovieTime], [Describe], [RoomId], [MoviePrice]) VALUES (8, N'KHI TA HAI LĂM', N'./img/ShowingMovie-img/Movie8.jpg', N'111Phút | 03/03/2023', N'Tuệ Lâm (Midu) một quản lý nghệ sĩ trẻ với tâm huyết cháy bỏng dành cho nhóm nhạc của mình - The Air. Tuy nhiên một biến cố lớn xảy ra khiến mọi dự định dành cho nhóm bị trì hoãn, còn Tuệ Lâm phải sang Hàn Quốc làm việc. Ngay sau khi trở về, cô quyết tâm khôi phục lại nhóm nhạc đầu tiên mà mình quản lý trong sự nghiệp và cho họ một màn debut xứng đáng', 8, 10000)
INSERT [dbo].[MovieShowing] ([MovieId], [MovieName], [MovieImg], [MovieTime], [Describe], [RoomId], [MoviePrice]) VALUES (10, N'', NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[MovieShowing] OFF
GO
SET IDENTITY_INSERT [dbo].[MovieUpcoming] ON 

INSERT [dbo].[MovieUpcoming] ([MovieId], [MovieName], [MovieImg], [MovieTime], [Describe]) VALUES (1, N'THE FLASH (2023)', N'./img/UpcomingMovie-img/Movie1.jpg', N'Chưa mở | 15/03/2023', N'                            The Flash là bộ phim siêu anh hùng ra mắt năm 2023 của Mỹ 
                            dựa trên nhân vật cùng tên của DC Comics. 
                            Phim được sản xuất bởi DC Films, Double Dream, The Disco Factory 
                            và sẽ do Warner Bros. Pictures nắm quyền phân phối. Đây là phần phim 
                            thứ mười bốn thuộc Vũ trụ Mở rộng DC (DC Extended Universe – DCEU). 
                            Đạo diễn Andy Muschietti sẽ cầm trịch chiếc ghế đạo diễn của phim với 
                            kịch bản được chấp bút bởi Christina Hodson. Phim sẽ có sự tham gia diễn 
                            xuất chính của Ezra Miller trong vai Barry Allen / The Flash bên cạnh các diễn viên 
                            phụ khác như Ron Livingston, Michael Keaton, Kiersey Clemons, Michael Shannon, Antje Traue, Sasha Calle và Ben Affleck. 
                            Nội dung của phim sẽ xoay quanh câu chuyện Barry du hành về quá khứ để ngăn chặn vụ án gây chết cái chết của mẹ mình 
                            và hành động trái tự nhiên đó của cậu đã đem đến những hậu quả khôn lường cho cả thế giới.')
INSERT [dbo].[MovieUpcoming] ([MovieId], [MovieName], [MovieImg], [MovieTime], [Describe]) VALUES (2, N'TRẬN CHIẾN THỜI TIỀN SỬ', N'./img/UpcomingMovie-img/Movie2.jpg', N'Chưa mở | 22/03/2023', N'                            Sau cú va chạm thảm khốc, tàu vũ trụ của Mills (Adam Driver) bay thẳng đến một hành tinh không xác định. Với kiến thức nhạy bén của mình, 
                            Mills nhanh chóng nhận ra hành tinh không xác định này chính là Trái Đất của 65 triệu năm trước. Liệu với những công nghệ tương lai đang có, 
                            Mills có thể sống sót trước những loài khủng long và sinh vật tiền sử đáng sợ? 65 - Trận Chiến Thời Tiền Sử đến từ bộ đôi biên kịch từng tạo 
                            nên “A Quiet Place” và được nhào nặn bởi chính NSX nổi tiếng Sam Raimi. Và, với vai chính được thủ vai bởi diễn viên từng đoạt giải Oscar -
                            Adam Driver.')
INSERT [dbo].[MovieUpcoming] ([MovieId], [MovieName], [MovieImg], [MovieTime], [Describe]) VALUES (3, N'NGỤC TỐI RỒNG: DANH DỰ KẺ TRỘM', N'./img/UpcomingMovie-img/Movie3.jpg', N'Chưa mở | 25/03/2023', N'Theo chân một tên trộm quyến rũ và một nhóm những kẻ bịp bợm nghiệp dư thực hiện vụ trộm sử thi nhằm lấy lại một di vật đã mất, nhưng mọi thứ trở nên nguy hiểm khó lường hơn bao giờ hết khi họ đã chạm trán nhầm người. Ngục Tối Và Rồng: Danh Dự Của Kẻ Trộm mang thế giới huyền ảo của trò chơi nhập vai huyền thoại lên màn ảnh rộng bằng một cuộc phiêu lưu tràn ngập các màn hành động đã mắt cùng màu sắc hài hước, vui nhộn.')
INSERT [dbo].[MovieUpcoming] ([MovieId], [MovieName], [MovieImg], [MovieTime], [Describe]) VALUES (4, N'CON NHÓT MÓT CHỒNG', N'./img/UpcomingMovie-img/Movie4.jpg', N'Chưa mở | 15/04/2023', N'Lấy cảm hứng từ web drama Chuyện Xóm Tui, phiên bản điện ảnh sẽ mang một màu sắc hoàn toàn khác: hài hước hơn, gần gũi và nhiều cảm xúc hơn Bộ phim là câu chuyện của Nhót - người phụ nữ “chưa kịp già” đã sắp bị mãn kinh, vội vàng đi tìm chồng. Nhưng sâu thẳm trong cô, là khao khát muốn có một đứa con và luôn muốn hàn gắn với người cha suốt ngày say xỉn của mình.')
INSERT [dbo].[MovieUpcoming] ([MovieId], [MovieName], [MovieImg], [MovieTime], [Describe]) VALUES (6, N'ANH EM SUPER MARIO', N'./img/UpcomingMovie-img/Movie5.jpg', N'Chưa mở | 23/05/2023', N'Bộ phim sẽ giúp khán giả hiểu rõ về nguồn gốc của cuộc phiêu lưu đến Vương Quốc Nấm của anh chàng Mario và quá trình vươn lên trở thành một huyền thoại.
                            Kể từ khi được công bố, Phim Anh Em Super Mario đã nhận được sự mong chờ háo hức của hàng triệu khán giả và fan hâm mộ. Điểm nhấn của dự án là sự góp mặt của hàng loạt ngôi sao đình đám gồm Chris Patt, danh hài Jack Black và "nàng hậu" Anya Taylor-Joy. ')
INSERT [dbo].[MovieUpcoming] ([MovieId], [MovieName], [MovieImg], [MovieTime], [Describe]) VALUES (7, N'BIỆT ĐỘI RẤT ỔN', N'./img/UpcomingMovie-img/Movie6.jpg', N'Chưa mở | 15/05/2023', N'BIỆT ĐỘI RẤT ỔN xoay quanh bộ đôi Khuê (Hoàng Oanh) và Phong (Hứa Vĩ Văn). Sau lần chạm trán tình cờ, bộ đôi lôi kéo Bảy Cục (Võ Tấn Phát), Bảy Súc (Nguyên Thảo), Quạu (Ngọc Phước), Quọ (Ngọc Hoa) tham gia vào phi vụ đặc biệt: Đánh tráo chiếc vòng đính hôn bằng kim cương quý giá và lật tẩy bộ mặt thật của Tuấn - chồng cũ của Quyên trong đám cưới giữa hắn và Tư Xoàn - nữ đại gia miền Tây sở hữu khối tài sản triệu đô. Màn kết hợp bất đắc dĩ của Biệt Đội Rất Ổn - Phong, Khuê và Gia Đình Cục Súc nhằm qua mắt “cô dâu, chú rể” tại khu resort sang chảnh hứa hẹn cực kỳ gay cấn, hồi hộp nhưng không kém phần hài hước, xúc động.')
INSERT [dbo].[MovieUpcoming] ([MovieId], [MovieName], [MovieImg], [MovieTime], [Describe]) VALUES (8, N'KHÓA CHẶT CỬA NÀO SUZUME', N'./img/UpcomingMovie-img/Movie7.jpg', N'Chưa mở | 15/06/2023', N'"Phù thủy nỗi buồn" Shinkai Makoto sẽ trở lại với tác phẩm mang tên KHÓA CHẶT CỬA NÀO SUZUME. Câu chuyện bắt đầu khi Suzume vô tình gặp chàng trai Souta đến thị trấn nơi cô sinh sống với mục đích tìm kiếm "một cánh cửa". Để bảo vệ Nhật Bản khỏi thảm họa, những cánh cửa rải rác khắp nơi phải được đóng lại, và bất ngờ thay Suzume cũng có khả năng đóng cửa đặc biệt này. Từ đó cả hai cùng nhau thực hiện sự mệnh "khóa chặt cửa"!')
INSERT [dbo].[MovieUpcoming] ([MovieId], [MovieName], [MovieImg], [MovieTime], [Describe]) VALUES (9, N'THE CIRCLE', N'./img/UpcomingMovie-img/Movie8.jpg', N'Chưa mở | 15/06/2023', N'Guess who’s back? WINNER đã trở lại cùng đội hình đầy đủ 4 thành viên và mang đến bộ phim tài liệu đầu tiên mang tên WINNER 2022 Concert The Circle: The Movie. Đây sẽ là nơi truyền tải những cảnh quay hậu trường, phỏng vấn độc quyền, sự chuẩn bị kỹ càng và cố gắng không ngừng nghỉ của các thành viên dành cho concert The Circle để đem đến cho Inner Circle một buổi trình diễn mãn nhãn sau hơn 2 năm chờ đợi.
')
INSERT [dbo].[MovieUpcoming] ([MovieId], [MovieName], [MovieImg], [MovieTime], [Describe]) VALUES (12, N'CON NHÓT MÓT CHỒNG', N'./img/UpcomingMovie-img/Movie4.jpg', N'Chưa mở | 15/04/2023', N'Lấy cảm hứng từ web drama Chuyện Xóm Tui, phiên bản điện ảnh sẽ mang một màu sắc hoàn toàn khác: hài hước hơn, gần gũi và nhiều cảm xúc hơn Bộ phim là câu chuyện của Nhót - người phụ nữ “chưa kịp già” đã sắp bị mãn kinh, vội vàng đi tìm chồng. Nhưng sâu thẳm trong cô, là khao khát muốn có một đứa con và luôn muốn hàn gắn với người cha suốt ngày say xỉn của mình.')
INSERT [dbo].[MovieUpcoming] ([MovieId], [MovieName], [MovieImg], [MovieTime], [Describe]) VALUES (13, N'CON NHÓT MÓT CHỒNG', N'./img/UpcomingMovie-img/Movie4.jpg', N'Chưa mở | 15/04/2023', N'Lấy cảm hứng từ web drama Chuyện Xóm Tui, phiên bản điện ảnh sẽ mang một màu sắc hoàn toàn khác: hài hước hơn, gần gũi và nhiều cảm xúc hơn Bộ phim là câu chuyện của Nhót - người phụ nữ “chưa kịp già” đã sắp bị mãn kinh, vội vàng đi tìm chồng. Nhưng sâu thẳm trong cô, là khao khát muốn có một đứa con và luôn muốn hàn gắn với người cha suốt ngày say xỉn của mình.')
INSERT [dbo].[MovieUpcoming] ([MovieId], [MovieName], [MovieImg], [MovieTime], [Describe]) VALUES (14, N'THE CIRCLE', N'./img/UpcomingMovie-img/Movie8.jpg', N'Chưa mở | 15/06/2023', N'Guess who’s back? WINNER đã trở lại cùng đội hình đầy đủ 4 thành viên và mang đến bộ phim tài liệu đầu tiên mang tên WINNER 2022 Concert The Circle: The Movie. Đây sẽ là nơi truyền tải những cảnh quay hậu trường, phỏng vấn độc quyền, sự chuẩn bị kỹ càng và cố gắng không ngừng nghỉ của các thành viên dành cho concert The Circle để đem đến cho Inner Circle một buổi trình diễn mãn nhãn sau hơn 2 năm chờ đợi.')
SET IDENTITY_INSERT [dbo].[MovieUpcoming] OFF
GO
INSERT [dbo].[Room] ([RoomId], [MovieId]) VALUES (1, 1)
INSERT [dbo].[Room] ([RoomId], [MovieId]) VALUES (2, 2)
INSERT [dbo].[Room] ([RoomId], [MovieId]) VALUES (3, 3)
INSERT [dbo].[Room] ([RoomId], [MovieId]) VALUES (4, 4)
INSERT [dbo].[Room] ([RoomId], [MovieId]) VALUES (5, 5)
INSERT [dbo].[Room] ([RoomId], [MovieId]) VALUES (6, 6)
INSERT [dbo].[Room] ([RoomId], [MovieId]) VALUES (7, 7)
INSERT [dbo].[Room] ([RoomId], [MovieId]) VALUES (8, 8)
GO
SET IDENTITY_INSERT [dbo].[SeatRoom] ON 

INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (1, N'A1', N'Sold', 1, 12)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (2, N'A2', N'Sold', 1, 12)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (3, N'A3', N'Sold', 1, 6)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (4, N'A4', N'Sold', 1, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (5, N'A5', N'Sold', 1, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (6, N'A6', N'Sold', 1, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (7, N'A7', N'Sold', 1, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (8, N'A8', N'Sold', 1, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (9, N'B1', N'Sold', 1, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (10, N'B2', N'Sold', 1, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (11, N'B3', N'Sold', 1, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (12, N'B4', N'Sold', 1, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (13, N'B5', N'Sold', 1, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (14, N'B6', N'Sold', 1, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (15, N'B7', N'Sold', 1, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (16, N'B8', N'Sold', 1, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (18, N'C1', N'Sold', 1, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (19, N'C2', N'Sold', 1, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (20, N'C3', N'Sold', 1, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (21, N'C4', N'Sold', 1, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (22, N'C5', N'Sold', 1, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (23, N'C6', N'Sold', 1, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (24, N'C7', N'Sold', 1, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (25, N'C8', N'Sold', 1, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (26, N'D1', N'Sold', 1, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (27, N'D2', N'Sold', 1, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (28, N'D3', N'Sold', 1, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (29, N'D4', N'Sold', 1, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (30, N'D5', N'Sold', 1, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (31, N'D6', N'Sold', 1, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (32, N'D7', N'Sold', 1, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (34, N'D8', N'Sold', 1, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (35, N'A1', N'Sold', 2, 6)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (36, N'A2', N'Sold', 2, 6)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (37, N'A3', N'Sold', 2, 6)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (38, N'A4', N'Sold', 2, 1)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (39, N'A5', N'NotSold', 2, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (40, N'A6', N'NotSold', 2, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (41, N'A7', N'NotSold', 2, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (42, N'A8', N'NotSold', 2, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (43, N'B1', N'NotSold', 2, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (44, N'B2', N'NotSold', 2, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (45, N'B3', N'NotSold', 2, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (46, N'B4', N'NotSold', 2, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (47, N'B5', N'NotSold', 2, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (48, N'B6', N'NotSold', 2, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (49, N'B7', N'NotSold', 2, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (50, N'B8', N'NotSold', 2, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (51, N'C1', N'NotSold', 2, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (52, N'C2', N'NotSold', 2, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (53, N'C3', N'NotSold', 2, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (54, N'C4', N'NotSold', 2, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (55, N'C5', N'NotSold', 2, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (56, N'C6', N'NotSold', 2, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (57, N'C7', N'NotSold', 2, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (58, N'C8', N'NotSold', 2, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (59, N'D1', N'NotSold', 2, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (60, N'D2', N'NotSold', 2, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (61, N'D3', N'NotSold', 2, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (62, N'D4', N'NotSold', 2, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (63, N'D5', N'NotSold', 2, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (64, N'D6', N'NotSold', 2, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (65, N'D7', N'NotSold', 2, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (66, N'D8', N'NotSold', 2, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (67, N'A1', N'NotSold', 3, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (68, N'A2', N'Sold', 3, 6)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (69, N'A3', N'Sold', 3, 6)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (70, N'A4', N'NotSold', 3, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (71, N'A5', N'NotSold', 3, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (72, N'A6', N'NotSold', 3, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (73, N'A7', N'NotSold', 3, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (74, N'A8', N'NotSold', 3, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (75, N'B1', N'NotSold', 3, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (76, N'B2', N'NotSold', 3, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (77, N'B3', N'NotSold', 3, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (78, N'B4', N'NotSold', 3, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (79, N'B5', N'NotSold', 3, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (80, N'B6', N'NotSold', 3, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (81, N'B7', N'NotSold', 3, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (82, N'B8', N'NotSold', 3, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (83, N'C1', N'NotSold', 3, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (84, N'C2', N'NotSold', 3, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (85, N'C3', N'NotSold', 3, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (86, N'C4', N'NotSold', 3, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (87, N'C5', N'NotSold', 3, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (88, N'C6', N'NotSold', 3, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (89, N'C7', N'NotSold', 3, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (90, N'C8', N'NotSold', 3, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (91, N'D1', N'NotSold', 3, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (92, N'D2', N'NotSold', 3, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (93, N'D3', N'NotSold', 3, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (94, N'D4', N'NotSold', 3, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (95, N'D5', N'NotSold', 3, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (96, N'D6', N'NotSold', 3, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (97, N'D7', N'NotSold', 3, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (98, N'D8', N'NotSold', 3, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (99, N'A1', N'NotSold', 4, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (100, N'A2', N'NotSold', 4, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (101, N'A3', N'Sold', 4, 1)
GO
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (102, N'A4', N'NotSold', 4, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (103, N'A5', N'NotSold', 4, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (104, N'A6', N'NotSold', 4, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (105, N'A7', N'NotSold', 4, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (106, N'A8', N'NotSold', 4, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (107, N'B1', N'NotSold', 4, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (108, N'B2', N'NotSold', 4, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (109, N'B3', N'NotSold', 4, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (110, N'B4', N'NotSold', 4, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (111, N'B5', N'NotSold', 4, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (112, N'B6', N'NotSold', 4, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (113, N'B7', N'NotSold', 4, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (114, N'B8', N'NotSold', 4, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (115, N'C1', N'NotSold', 4, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (116, N'C2', N'NotSold', 4, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (117, N'C3', N'NotSold', 4, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (118, N'C4', N'NotSold', 4, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (119, N'C5', N'NotSold', 4, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (120, N'C6', N'NotSold', 4, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (121, N'C7', N'NotSold', 4, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (122, N'C8', N'NotSold', 4, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (123, N'D1', N'NotSold', 4, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (124, N'D2', N'NotSold', 4, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (125, N'D3', N'NotSold', 4, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (126, N'D4', N'NotSold', 4, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (127, N'D5', N'NotSold', 4, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (128, N'D6', N'NotSold', 4, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (129, N'D7', N'NotSold', 4, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (130, N'D8', N'NotSold', 4, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (131, N'A1', N'Sold', 5, 12)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (132, N'A2', N'Sold', 5, 6)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (133, N'A3', N'Sold', 5, 6)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (134, N'A4', N'Sold', 5, 6)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (135, N'A5', N'Sold', 5, 6)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (136, N'A6', N'Sold', 5, 6)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (137, N'A7', N'Sold', 5, 6)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (138, N'A8', N'NotSold', 5, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (139, N'B1', N'NotSold', 5, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (140, N'B2', N'NotSold', 5, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (141, N'B3', N'NotSold', 5, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (142, N'B4', N'NotSold', 5, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (143, N'B5', N'NotSold', 5, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (144, N'B6', N'NotSold', 5, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (145, N'B7', N'NotSold', 5, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (146, N'B8', N'NotSold', 5, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (147, N'C1', N'NotSold', 5, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (148, N'C2', N'NotSold', 5, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (149, N'C3', N'NotSold', 5, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (150, N'C4', N'NotSold', 5, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (151, N'C5', N'NotSold', 5, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (152, N'C6', N'NotSold', 5, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (153, N'C7', N'NotSold', 5, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (154, N'C8', N'NotSold', 5, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (155, N'D1', N'NotSold', 5, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (156, N'D2', N'NotSold', 5, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (157, N'D3', N'NotSold', 5, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (158, N'D4', N'NotSold', 5, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (159, N'D5', N'NotSold', 5, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (160, N'D6', N'NotSold', 5, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (161, N'D7', N'NotSold', 5, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (162, N'D8', N'NotSold', 5, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (163, N'A1', N'NotSold', 6, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (164, N'A2', N'NotSold', 6, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (165, N'A3', N'NotSold', 6, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (166, N'A4', N'NotSold', 6, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (167, N'A5', N'NotSold', 6, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (168, N'A6', N'NotSold', 6, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (169, N'A7', N'NotSold', 6, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (170, N'A8', N'NotSold', 6, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (171, N'B1', N'NotSold', 6, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (172, N'B2', N'NotSold', 6, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (173, N'B3', N'NotSold', 6, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (174, N'B4', N'NotSold', 6, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (175, N'B5', N'NotSold', 6, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (176, N'B6', N'NotSold', 6, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (177, N'B7', N'NotSold', 6, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (178, N'B8', N'NotSold', 6, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (179, N'C1', N'NotSold', 6, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (180, N'C2', N'NotSold', 6, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (181, N'C3', N'NotSold', 6, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (182, N'C4', N'NotSold', 6, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (183, N'C5', N'NotSold', 6, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (184, N'C6', N'NotSold', 6, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (185, N'C7', N'NotSold', 6, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (186, N'C8', N'NotSold', 6, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (187, N'D1', N'NotSold', 6, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (188, N'D2', N'NotSold', 6, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (189, N'D3', N'NotSold', 6, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (190, N'D4', N'NotSold', 6, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (191, N'D5', N'NotSold', 6, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (192, N'D6', N'NotSold', 6, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (193, N'D7', N'NotSold', 6, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (194, N'D8', N'NotSold', 6, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (227, N'A1', N'NotSold', 8, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (228, N'A2', N'NotSold', 8, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (229, N'A3', N'NotSold', 8, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (230, N'A4', N'NotSold', 8, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (231, N'A5', N'NotSold', 8, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (232, N'A6', N'NotSold', 8, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (233, N'A7', N'NotSold', 8, NULL)
GO
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (234, N'A8', N'NotSold', 8, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (235, N'B1', N'NotSold', 8, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (236, N'B2', N'NotSold', 8, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (237, N'B3', N'NotSold', 8, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (238, N'B4', N'NotSold', 8, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (239, N'B5', N'NotSold', 8, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (240, N'B6', N'NotSold', 8, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (241, N'B7', N'NotSold', 8, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (242, N'B8', N'NotSold', 8, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (243, N'C1', N'NotSold', 8, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (244, N'C2', N'NotSold', 8, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (245, N'C3', N'NotSold', 8, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (246, N'C4', N'NotSold', 8, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (247, N'C5', N'NotSold', 8, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (248, N'C6', N'NotSold', 8, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (249, N'C7', N'NotSold', 8, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (250, N'C8', N'NotSold', 8, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (251, N'D1', N'NotSold', 8, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (252, N'D2', N'NotSold', 8, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (253, N'D3', N'NotSold', 8, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (254, N'D4', N'NotSold', 8, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (255, N'D5', N'NotSold', 8, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (256, N'D6', N'NotSold', 8, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (257, N'D7', N'NotSold', 8, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (258, N'D8', N'NotSold', 8, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (296, N'A1', N'NotSold', 7, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (297, N'A2', N'NotSold', 7, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (298, N'A3', N'NotSold', 7, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (299, N'A4', N'Sold', 7, 1)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (300, N'A5', N'Sold', 7, 1)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (301, N'A6', N'NotSold', 7, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (302, N'A7', N'NotSold', 7, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (303, N'A8', N'NotSold', 7, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (304, N'B1', N'NotSold', 7, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (305, N'B2', N'NotSold', 7, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (306, N'B3', N'NotSold', 7, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (307, N'B4', N'NotSold', 7, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (308, N'B5', N'NotSold', 7, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (309, N'B6', N'NotSold', 7, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (310, N'B7', N'NotSold', 7, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (311, N'B8', N'NotSold', 7, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (312, N'C1', N'NotSold', 7, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (313, N'C2', N'NotSold', 7, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (314, N'C3', N'NotSold', 7, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (315, N'C4', N'NotSold', 7, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (316, N'C5', N'NotSold', 7, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (317, N'C6', N'NotSold', 7, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (318, N'C7', N'NotSold', 7, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (319, N'C8', N'NotSold', 7, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (320, N'D1', N'NotSold', 7, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (321, N'D2', N'NotSold', 7, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (322, N'D3', N'NotSold', 7, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (323, N'D4', N'NotSold', 7, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (324, N'D5', N'NotSold', 7, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (325, N'D6', N'NotSold', 7, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (326, N'D7', N'NotSold', 7, NULL)
INSERT [dbo].[SeatRoom] ([seatId], [seatName], [seatStatus], [RoomId], [UserId]) VALUES (327, N'D8', N'NotSold', 7, NULL)
SET IDENTITY_INSERT [dbo].[SeatRoom] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([UserId], [UserName], [UserPassword], [Name], [UsersBalance], [AdminCheck]) VALUES (1, N'tuan1', N'123', N'tuan1name', 0, N'0')
INSERT [dbo].[Users] ([UserId], [UserName], [UserPassword], [Name], [UsersBalance], [AdminCheck]) VALUES (2, N'tuan2', N'123', N'tutan2name', 30000, N'0')
INSERT [dbo].[Users] ([UserId], [UserName], [UserPassword], [Name], [UsersBalance], [AdminCheck]) VALUES (3, N'tuan3', N'123', N'anh tuan', 30000, N'0')
INSERT [dbo].[Users] ([UserId], [UserName], [UserPassword], [Name], [UsersBalance], [AdminCheck]) VALUES (4, N'tuan4', N'123', N'tuan anh', 30000, N'0')
INSERT [dbo].[Users] ([UserId], [UserName], [UserPassword], [Name], [UsersBalance], [AdminCheck]) VALUES (5, N'tuan5', N'123', N'tuan tuan', 30000, N'0')
INSERT [dbo].[Users] ([UserId], [UserName], [UserPassword], [Name], [UsersBalance], [AdminCheck]) VALUES (6, N'admin', N'123', N'ho va ten', 50000, N'1')
INSERT [dbo].[Users] ([UserId], [UserName], [UserPassword], [Name], [UsersBalance], [AdminCheck]) VALUES (10, N'admin1', N'123', N'ho va ten', 30000, N'1')
INSERT [dbo].[Users] ([UserId], [UserName], [UserPassword], [Name], [UsersBalance], [AdminCheck]) VALUES (11, N'tuandeptrai', N'123', N'anhtuan', 30000, N'0')
INSERT [dbo].[Users] ([UserId], [UserName], [UserPassword], [Name], [UsersBalance], [AdminCheck]) VALUES (12, N'admin123', N'123', N'ho va ten', 0, N'1')
INSERT [dbo].[Users] ([UserId], [UserName], [UserPassword], [Name], [UsersBalance], [AdminCheck]) VALUES (13, N'admina', N'123', N'ho va ten', 30000, N'1')
INSERT [dbo].[Users] ([UserId], [UserName], [UserPassword], [Name], [UsersBalance], [AdminCheck]) VALUES (14, N'aaaa', N'aa', N'ho va ten', 30000, N'0')
INSERT [dbo].[Users] ([UserId], [UserName], [UserPassword], [Name], [UsersBalance], [AdminCheck]) VALUES (15, N'admin1234', N'123', N'admin1234name', 30000, N'1')
INSERT [dbo].[Users] ([UserId], [UserName], [UserPassword], [Name], [UsersBalance], [AdminCheck]) VALUES (16, N'hh', N'123', N'ho va ten', 30000, N'0')
INSERT [dbo].[Users] ([UserId], [UserName], [UserPassword], [Name], [UsersBalance], [AdminCheck]) VALUES (17, N'aatrox', N'123', N'aatroxname', 30000, N'0')
INSERT [dbo].[Users] ([UserId], [UserName], [UserPassword], [Name], [UsersBalance], [AdminCheck]) VALUES (18, N'asmjfamjsf', N'123', N'a', 50000, N'0')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
