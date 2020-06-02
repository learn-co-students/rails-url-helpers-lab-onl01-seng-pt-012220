class AddActiveAttribute
    def change
        add_column :students, :active false
    end
end