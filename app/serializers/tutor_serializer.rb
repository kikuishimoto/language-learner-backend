class TutorSerializer
    include FastJsonapi::ObjectSerializer
    attributes :name, :image, :email, :description
    
end 