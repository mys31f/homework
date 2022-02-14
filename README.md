# Bài tập Tin cho lớp 12 Cambridge của Bùi Bảo Lâm
## Bài 1: Bài toán quản lý
* Thành viên: Bùi Bảo Lâm, Hoàng Nam Quốc
* Mục tiêu bài toán: osu! là một game âm nhạc, với hơn 15 triệu tài khoản đã đăng ký, và trong lúc đông nhất, có đến gần 100000 người chơi. Trong trò chơi này, các người chơi sẽ bấm những vòng tròn theo âm nhạc. Trong osu! có một cộng đồng gọi là cộng đồng mapper, là những người tạo ra những map để người chơi có thể chơi. Các loại map tạo ra được chia làm nhiều loại, trong đó có một loại tên là "farm map". Các farm map là những map mà cho người chơi một lượng Performance Points (PP) lớn một cách dễ dàng. Vì vậy, chúng con muốn tạo ra một cơ sở dữ liệu những loại map như thế để cho người chơi có thể tìm chúng một cách dễ dàng hơn, thay vì phải đi mò từ những người khác trong cộng đồng người chơi.
* Đối tượng cần quản lý: Các beatmap, trong đó, có 10 đối tượng trong một map mà chúng con đề cập tới:
  - Tên map (thường được đặt theo tên bài hát được sử dụng trong map)
  - Người tạo map (hay còn gọi là mapper)
  - Mã của map: Trong osu!, mỗi map mà được nạp lên hệ thống sẽ được áp thêm một mã code, để nhận dạng được các map, thay vì sử dụng tên do có thể có nhiều map có cùng một tên.
  - Star Rating: Trong osu!, độ khó của map được tính theo số sao của nó.
  - Thời lượng map (thường đi cùng với thời gian bài hát)
  - Circle Size (CS): Kích cỡ của vòng tròn
  - Approach Rate (AR): Trong osu!, để bấm vào những vòng tròn chuẩn thì có một vòng tròn sẽ đi từ ngoài vào đến vòng tròn cần bấm. Chỉ số này hiển thị thời gian để mà trong khoảng thời gian đó người chơi phải bấm vào vòng tròn để có thể bấm chuẩn nhất theo bài nhạc.
  - Overall Difficulty (OD): Độ khó để bấm chuẩn vào vòng tròn.
  - HP Drain (HP): Trong osu!, chúng ta có thể thấy một đường thẳng ở phía trên khu vực chơi. Đường này hiển thị máu của người chơi. Nếu người chơi hết máu, người chơi "fail" map đó, nghĩa là họ không chơi hết được map. Chỉ số này hiển thị xem những lỗi của người chơi ảnh hưởng thế nào đến thanh máu đó. 
  - BPM (Beats per Minute): Độ nhanh của bài hát.
* Quy trình:
Sử dụng script `table.sql`, ta có thể tạo ra một database với tên là `osumaps` và trong database này ta có thể  tạo ra một cái bảng với tên là `maplist`. Bảng `maplist` này có 10 cột, trong đó các cột đều mang theo các đề mục nêu trên. 
Để thêm dữ liệu vào trong database, ta có thể sử dụng script `import.sql`. Trong script này có chứa một số dữ liệu mô phỏng, trong đó function `IMPORT INTO `  được dùng để thêm thông tin vào trong bảng.
* Kết quả có thể đạt được: Bảng có chứa các giá trị
* Progress: đã có thể tạo bảng thành công
* Việc làm: 
  - Hoàng Nam Quốc: thu thập dữ liệu và import dữ liệu
  - Bùi Bảo Lâm: initialize database và viết mô tả

## Bài 2: Tính toán:
* Tính nghiệm của phương trình bậc 2:
  - Các file 