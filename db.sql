select * from ledger_details
join nguonnx_title on ledger_details.import_unit_id=nguonnx_title.nguonnx_id
join tructhuoc on tructhuoc.id=nguonnx_title.title_id
where loai_phieu='NHAP'
