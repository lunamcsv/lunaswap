# LunaSwap
Cách triển khai Luna Swap: 

0. Mọi triển khai dùng với enable opti... : 999999
1. Deploy WBNB
2. Deploy LunaFactory với đầu vào là địa chỉ dùng để set địa chỉ nhận fee (Địa chỉ bất kỳ sở hữu)
3. Gọi hàm SetFeeTo với đầu vào là địa chỉ nhận fee sau này (Địa chỉ bất kỳ sở hữu)
4. Copy đầu ra của hàm INIT_CODE_PAIR_HASH, bỏ 0x ở đầu đi và sau đó thay nó vào hex trong hàm pairFor (https://github.com/lunamcsv/lunaswap/blob/main/periphery/libraries/PancakeLibrary.sol#L24) (Bước này có thể bỏ qua, chỉ cần thiết khi có ý định tùy chỉnh hợp đồng Pair)
5. Deploy LunaRouter với đầu vào là địa chỉ của 2 hợp đồng đã deploy ở trên
6. Sử dụng hàm addLiquidityETH để test Add pool, trước khi gọi hàm này cần Approve cho hợp đồng token cần thêm
7. Ví dụ với token USDT ta cần approve với đầu vào là địa chỉ hợp đồng LunaRouter là người được ủy quyền và số token ủy quyền tối đa: 2^256 - 1, sau khi ủy quyền mới có thể thêm cặp

* Bước 2 và 3 có thể thay thế bằng cách chỉ cần deploy MiniFactory