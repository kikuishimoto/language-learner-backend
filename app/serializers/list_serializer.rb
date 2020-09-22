class ListSerializer 
    include FastJsonapi::ObjectSerializer
    attributes :name, :phrases
end 