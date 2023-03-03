class ApplicationController < ActionController::Base
    def current_user
        ActiveDecorator::Decorator.instance.decorate(super) if super.present?
    end
end
