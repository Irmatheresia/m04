#  THE COMPOSITE PATTERN

from abc import ABC, abstractmethod

class Item (ABC):
    @abstractmethod
    def return_price(self):
        pass

class Biaya(Item):
    def __init__(self, contents):
        self.contents = contents
    def return_price(self):
        price = 0
        for item in self.contents:
            price = price + item.return_price()
        return price

class Pendaftaran(Item):
    def __init__(self, price):
        self.price = price
    def return_price(self):
        return self.price

class Ukt(Item):
    def __init__(self, price):
        self.price = price
    def return_price(self):
        return self.price

class Trainning(Item):
    def __init__(self, price):
        self.price = price
    def return_price(self):
        return self.price

class Penginapan(Item):
    def __init__(self, price):
        self.price = price
    def return_price(self):
        return self.price

class Konsumsi(Item):
    def __init__(self, price):
        self.price = price
    def return_price(self):
        return self.price

if __name__ == "__main__":
    biaya_daftar = []
    print ("Biaya Pendaftaran Rp. 200.000")
    biaya_daftar.append(Pendaftaran(200000))
    biaya_daftar_1 = Biaya(biaya_daftar)

    ukt_awal = []
    ukt_awal.append(biaya_daftar_1)
    print ("Biaya Ukt = Rp. 1.500.000")
    ukt_awal.append(Ukt(1500000))
    print ("Biaya Trainning = Rp. 100.000")
    ukt_awal.append(Trainning(100000))
    print ("Biaya Penginapan = Rp. 200.000")
    ukt_awal.append(Penginapan(200000))
    print ("Biaya Konsumsi = Rp. 150.000")
    ukt_awal.append(Konsumsi(150000))
    ukt_awal2 = Biaya(ukt_awal)
print("\n")
print("Total price : " + str(ukt_awal2.return_price()))
