import krakenex

def main():
    k = krakenex.API()
    print("{}".format(float(k.query_public("Ticker", {"pair":"XBTEUR"})["result"]["XXBTZEUR"]["c"][0])))

if __name__ == "__main__":
    main()
