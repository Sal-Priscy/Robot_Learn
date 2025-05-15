import pandas as pd


class Read_Data:

    def read_excel_data(self, path, sheet, tc):
        df = pd.read_excel(path, sheet_name=sheet)
        df1 = df.to_dict('records')
        return [x for x in df1 if x['Test_Case_ID'] == tc][0]

