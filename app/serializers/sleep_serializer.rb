class SleepSerializer < ActiveModel::Serializer
  attributes :id, :start_day, :start_time, :end_day, :end_time, :note, :rating, :dreams

  def dreams
    ActiveModel::SerializableResource.new(
      object.dreams,
      each_serializer: DreamSerializer
    )
  end
end
