package model;

public interface RPinterface {

	RtPhotoBean select(Integer rtId);

	RtPhotoBean update(RtPhotoBean bean);

	RtPhotoBean insert(RtPhotoBean bean);

	boolean delete(Integer poId);
	
}

