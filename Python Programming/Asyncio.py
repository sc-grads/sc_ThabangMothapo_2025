import asyncio
from asyncio import Task
from datetime import datetime

async def fetch_data(input_data: int) -> dict:
    print('Fetching data')
    start_time: datetime = datetime.now()
    await asyncio. sleep(3)
    end_time: datetime = datetime.now()
    print('Finished in')
async def main() -> None:
    ...

return {'input': input_data,
        'start_time': f'{start_time: %H:%M:%S}',
        'end_time': f'{end_time: %H:%M:%S}'}

async def main() -> None:
    data1: dict = await fetch_data(1)
    data2: dict = await fetch_data(2)

    print(f'{data1=}')
    print (f'{data2=}')
if __name__ == '__main__':
    asyncio.run(main())