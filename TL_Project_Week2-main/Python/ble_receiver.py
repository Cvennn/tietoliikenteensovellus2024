import asyncio
from bleak import BleakClient

address = "CF:01:6D:B4:C3:83"  # Replace with your device's address
MODEL_NBR_UUID = "2A24"  # Standard Model Number Characteristic UUID

async def main(address):
    async with BleakClient(address, timeout=30.0) as client:
        if await client.is_connected():
            # Read the Model Number Characteristic
            model_number = await client.read_gatt_char(MODEL_NBR_UUID)
            print("Model Number: {0}".format("".join(map(chr, model_number))))
        else:
            print("Failed to connect to the device.")

asyncio.run(main(address))
